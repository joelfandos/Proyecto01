<!DOCTYPE html>
<html>
<head>
	<title>Reservas</title>
	<meta charset="utf-8">
	
	<link rel="stylesheet" type="text/css" href="./plugins/datatables/datatables.min.css"/>
	<link rel="stylesheet" type="text/css" href="./plugins/fontawesome/all.min.css"/>
	<link rel="stylesheet" type="text/css" href="./plugins/bootstrap/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<link rel="icon" type="fotos/logo.png" href="fotos/logo.png">
</head>
<body>
	<?php include('header.php'); ?>

			<section id="banner">
				<img src="fotos/foto1.jpg">
				<div class="contenedor">
					<h2>Reservas</h2>
					<p>¿Quieres reservar un recurso?</p>
					<a href="login.php">Reserva</a>
				</div>
			</section>
			
			<section id="bienvenidos">
			<div class="contenedor">
				<h2>BIENVENIDOS A RESERVAS</h2>
				
				
				</div>
			</section>
			   
			<section id="info">

				<div class="contenedor">
					<p>Reservas es una comunidad en la cual todos nos ayudamos, trata de reservar un recurso ya sea aulas como portátiles, móviles, entre otras cosas.</p>
					</div>
					
				</div>
			</section>
			<table id="tabla1" class="display">
		    	<thead>
		            <th>ID</th>
		            <th>RECURSO</th>
		            <th>TIPO</th>
		            <th>DESCRIPCIÓN</th>
		            <th>IMAGEN</th>
		            <th>DISPONIBLE</th>
		    	</thead>
		    	<tfoot>
		            <th></th>
		            <th></th>
		            <th></th>
		            <th></th>
		            <th></th>
		            <th></th>
		    	</tfoot>
			</table>
		<footer>
			<div class="contenedor">
				<p>Reservas &copy; 2019</p>
				<div class="sociales">
					<i class="fab fa-google" style="color:black;"></i>
				</div>
			</div>
		</footer>

		<script src="./plugins/jquery-3.4.1.min.js"></script>
		<script src="./plugins/bootstrap/bootstrap.min.js"></script>
		<script type="text/javascript" src="./plugins/datatables/datatables.min.js"></script>
		<script src="./plugins/fontawesome/all.min.js"></script>
		<script>
			$(document).ready( function () {
			    var table1 = $('#tabla1').DataTable({
			    	"bProcessing": true,
					"sAjaxSource": "./services/data.php",
					"bPaginate":true,
					"sPaginationType":"full_numbers",
					"iDisplayLength": 5,
		            "aoColumns": [
			            { mData: "ID" },
					    { mData: "RECURSO" },
					    { mData: "TIPO" },
					    { mData: "DESCRIPCION" },
					    { mData: "IMAGEN" },
					    { mData: "DISPONIBLE" }
					]
				});			   
			});
		</script>

</body>
</html>