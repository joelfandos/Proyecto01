<?php
	include("connection.php"); 

	$sql ="SELECT * FROM recursos;";
	$result = $conn->query($sql);

	$data = array();
	while ($fila = mysqli_fetch_row($result)) {

		$sql_details = array(
    		'ID' => $fila[0],
    		'RECURSO' => $fila[1],
    		'TIPO'   => $fila[2],
   			'DESCRIPCION' => $fila[3],
   			'IMAGEN' => $fila[4],
   			'DISPONIBLE' => 1
		);
		$data[] = $sql_details;
	}				
		while( $rows = mysqli_fetch_assoc($result) ) {
				$data[] = $rows;
			}
		$results = array(
		"sEcho" => 1,
		"iTotalRecords" => count($data),
		"iTotalDisplayRecords" => count($data),
		"aaData"=>$data);
		echo json_encode($results);
	
 
?>

  