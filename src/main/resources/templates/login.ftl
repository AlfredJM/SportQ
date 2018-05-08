<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<title>SportQ | Entrar</title>
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../js/jquery.validate.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
</head>

<body>
	<#include "/includes/alerts.ftl">
	<div class="container">
		<div class="card border-primary	text-center">
			<div class="card-header">Identificate</div>
			<div class="card-body" >
			<form action="/login" method="POST">
				<div class="form-group">
					<label for="inputUser" class="sr-only">Usuario</label>
					<input type="text" id="inputUser" name="inputUser" class="form-control" placeholder="Usuario" required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Contraseña</label>
					<input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Contraseña" required>
				</div>
				<div class="form-group checkbox text-left">
					<label> <input type="checkbox" value="remember-me">
						Mantener la sesi&oacute;n
					</label>
				</div>
				<div class="form-group ">
					<button class="btn btn-lg btn-primary btn-block" type="submit" value="Sign In">Entrar</button>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
				</br>
				<div>
					<p>Nuevo usuario,
					<a class="text-red" href="signup">Registrate</a></div>
				<p class="mt-5 mb-3 text-muted">
					2017-2018</br>&copy;WebQ
				</p>
			</form>
			</div>
		</div>
	</div>
</body>
</html>
