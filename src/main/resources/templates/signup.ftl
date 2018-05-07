<!doctype html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SportQ | Registrate</title>

    <!-- Bootstrap core CSS -->
	<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
	<script type="text/javascript" src="../js/popper.min.js"></script>
	<script type="text/javascript" src="../js/jquery.validate.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"></script>
    <link href="../css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<div class="container">
		<div class="">
			<div class="text-center">
				<h1 class="panel-title">Registrate</h1>
			</div>
			<div class="table-bordered">
				<form id="signupForm" method="post" class="form-horizontal" action="registro">
					<div class="form-group">
						<label class="col-sm-4 control-label" for="nombre">Nombre</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="nombre" name="nombre" placeholder="Su nombre" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label" for="apellido">Apellido</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="apellido" name="apellido" placeholder="Su apellido" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label" for="username">Usuario</label>
						<div class="col-sm-5">
							<input type="text" class="form-control" id="username" name="username" placeholder="Nombre usuario" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label" for="email">Email</label>
						<div class="col-sm-5">
							<input type="email" class="form-control" id="email" name="email" placeholder="ejemplo@webq.com" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label" for="password">Password</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="password" name="password" placeholder="Password" />
						</div>
					</div>

					<div class="form-group">
						<label class="col-sm-4 control-label" for="confirmarpassword">Confirmar password</label>
						<div class="col-sm-5">
							<input type="password" class="form-control" id="confirmarpassword" name="confirmarpassword" placeholder="Confirmar password" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-sm-9 col-sm-offset-4">
							<button type="submit" class="btn btn-primary" name="signup" value="Sign up">Registrar</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$.validator.setDefaults( {
			submitHandler: function () {
				alert( "¡Registrado!" );
			}
		} );

		$( document ).ready( function () {
			$( "#signupForm" ).validate( {
				rules: {
					nombre: "required",
					apellido: "required",
					usuario: {
						required: true,
						minlength: 6
					},
					password: {
						required: true,
						minlength: 8
					},
					confirmarpassword: {
						required: true,
						minlength: 8,
						equalTo: "#password"
					},
					email: {
						required: true,
						email: true
					},
				},
				messages: {
					nombre: "Introduzca su nombre",
					apellido: "Intruduzca su apellido",
					username: {
						required: "Introduzca su nombre de usuario",
						minlength: "Su usuario debe contener un minimo de 6 caracteres"
					},
					password: {
						required: "Ingrese una contraseña",
						minlength: "Su contraseña debe ser de al menos 8 caracteres"
					},
					confirmarpassword: {
						required: "Ingrese una contraseña",
						minlength: "Su contraseña debe ser de al menos 8 caracteres",
						equalTo: "Las contraseñas no coinciden"
					},
					email: "Introduzca un email valido",
				},
				errorElement: "em",
				errorPlacement: function ( error, element ) {
					// Add the `help-block` class to the error element
					error.addClass( "text-danger" );

					if ( element.prop( "type" ) === "checkbox" ) {
						error.insertAfter( element.parent( "label" ) );
					} else {
						error.insertAfter( element );
					}
				},
				highlight: function ( element, errorClass, validClass ) {
					$( element ).parents( ".form-control" ).addClass( "border-danger" ).removeClass( "border-success" );
				},
				unhighlight: function (element, errorClass, validClass) {
					$( element ).parents( ".form-control" ).addClass( "border-success" ).removeClass( "border-danger" );
				}
			} );
		} );
	</script>
</body>
</html>