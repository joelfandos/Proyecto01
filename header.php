<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="./plugins/datatables/datatables.min.css"/>
	<link rel="stylesheet" type="text/css" href="./plugins/fontawesome/all.min		.css"/>
	<link rel="stylesheet" type="text/css" href="./plugins/bootstrap/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<link rel="icon" type="fotos/logo.png" href="fotos/logo.png">
</head>
<body>
	<div style="text-align: right;">
		<?php
		//Mantengo la sesión. Por ende puedo utilizar la variable $_SESSION anteriormente configurada
		session_start();
		if(isset($_SESSION['usr'])){
			echo '<header>
				<div class="contenedor">
					<img src="fotos/logo.png">
					<h1>Reservas</h1>
							<nav class="menu">
									<a href="./services/logout.proc.php">Cerrar sesión de '.$_SESSION['usr'].'</a>&nbsp;&nbsp
							</nav>
						</div>
			</header>';
		}else{
			header("Location: ./login.php");
		}
		?>
	</div> 
</body>
</html>