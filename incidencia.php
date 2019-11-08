<!DOCTYPE html>
<html>
<head>
	<title>Incidencias</title>
</head>
<body>


<h1>Incidencias</h1>
<form action="services/incidencia" method="post">

<textarea name="incidencias" id="incidencias" rows="10" cols="40" placeholder="Explica que ha ocurrido: "></textarea><br>

<input type="submit" name="enviar">

</form>


<?php
include("./services/connection.php");
session_start();

$incidencia = $_REQUEST['incidencia'];
$_SESSION['incidencia']=$incidencia;

  ?>




</body>
</html>