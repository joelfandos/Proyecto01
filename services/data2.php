<?php
		include("connection.php"); 
		$sql ="SELECT res.id_reserva, res.fecha_entrega, res.fecha_devolucion, res.id_recurso_fk, res.usuario_fk, rec.recurso  FROM reserva AS res INNER JOIN recursos AS rec ON res.id_recurso_fk = rec.id_recurso";
		$result = $conn->query($sql);

		$data = array();
		while ($fila = mysqli_fetch_row($result)) {

			$sql_details = array(
    		'ID_RES' => $fila[0],
    		'FECHA_ENT' => $fila[1],
    		'FECHA_DEV'   => $fila[2],
   			'USER' => $fila[4],
   			'RECURSO' => $fila[5]
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