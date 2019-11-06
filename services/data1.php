<?php
		include("connection.php"); 
		$user = $_REQUEST['user'];
		$sql ="SELECT id_recurso,recurso, tipo, descripcion,imagen,status,id_reserva, id_reserva, fecha_entrega, fecha_devolucion, usuario_fk FROM recursos INNER JOIN reserva ON recursos.id_recurso = reserva.id_recurso_fk where recursos.status = 2 AND reserva.usuario_fk ='$user' order by id_reserva desc";
		$result = $conn->query($sql);

		$data = array();
		while ($fila = mysqli_fetch_row($result)) {

			$sql_details = array(
    		'ID' => $fila[0],
    		'RECURSO' => $fila[1],
    		'TIPO'   => $fila[2],
   			'DESCRIPCION' => $fila[3],
   			'IMAGEN' => $fila[4]
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