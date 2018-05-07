<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>SportQ | Entrar</title>
	<link href="../css/bootstrap.min.css" rel="stylesheet">
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../js/popper.min.js"></script>
	<script type="text/javascript" src="../js/jquery.validate.js"></script>
	<script type="text/javascript" src="../js/signupval.js"></script>
</head>

<body>
	<#include "/includes/alerts.ftl">
	<div class="container">
		<div class="card border-primary	text-center">
			<div class="card-header">Identificate</div>
			<div class="card-body" >
			<form action="signin" method="post">
				<div class="form-group">
					<label for="inputEmail" class="sr-only">Usuario</label>
					<input type="text" id="inputUser" class="form-control" placeholder="Usuario" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Contraseña</label>
					<input type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
				</div>
				<div class="form-group checkbox text-left">
					<label> <input type="checkbox" value="remember-me">
						Mantener la sesi&oacute;n
					</label>
				</div>
				<div class="form-group ">
					<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
				</div>
				</br>
				<div>
					<p>Nuevo usuario,
					<a class="text-red" href="signup.html">Registrate</a></div>
				<p class="mt-5 mb-3 text-muted">
					2017-2018</br>&copy;WebQ
				</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
