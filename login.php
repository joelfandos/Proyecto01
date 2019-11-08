<!DOCTYPE html>
<html>
<head>
	<title>Reservas</title>
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="estilo.css">
	<script type="text/javascript" src="codigo.js"></script>
	<link rel="icon" type="fotos/logo.png" href="fotos/logo.png">
</head>
<body>
	<header>
	<div class="contenedor">
		<img src="fotos/logo.png">
		<h1>Reservas</h1>
		
		<label class="" for="menu-bar"></label>
				<nav class="menu">
					<a href="default.php">Inicio</a>
					<a href="login.php">Login</a>
				</nav>
			</div>
</header>
<br><br>
	<div class="header">
		<h2>Iniciar sesión</h2>
	</div>

	<form method="post" action="./services/login.proc.php" onsubmit="return formulario()">
		<p id="mensaje" class="mensaje"></p>
		<div class="input-group">
			<label>Usuario</label>
			<input type="text" name="username" id="username">
		</div>
		<div class="input-group">
			<label>Contraseña</label>
			<input type="password" name="password" id="password">
		</div>
		<div class="input-group">
			<button type="submit" name="login" class="btn">Iniciar sesión</button>
		</div>
	</form>
<br><br>
<footer>
			<div class="contenedor">
				<p>Reservas &copy; 2019</p>
				<div class="sociales">
					<a class="fontawesome-facebook-sign"></a>
					<a class="fontawesome-twitter"></a>
					<a class="fontawesome-camera-retro"></a>
					<a class="fontawesome-google-plus-sign"></a>
				</div>
			</div>
		</footer>
</body>
</html>