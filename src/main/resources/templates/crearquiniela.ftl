<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<title>SportQ | Crear Quiniela</title>
</head>
<body>
	<#include "/includes/header.ftl">
	<div class="container">
		<div class="border-primary">
			<h1>Crear Quiniela</h1>
			<form id="quiniela" action="/crearquiniela" role="form">
				<div class="">
					<div class="card border-primary	text-center">
						<div class="card-header text-left">Datos de la quiniela</div>
						<div class="card-body">
							<div class="row">
								<div class="col-sm">
									<div class="form-inline">
										<label for="nombrequiniela">Nombre de la quiniela</label> <input type="text" id="nombrequiniela" class="form-control" placeholder="Nombre" required>
									</div>
								</div>
								<div class="col-sm">
									<div class="form-inline">
										<div class="radio col-sm">
											<label> <input type="radio" name="opciones" id="optpublic" value="publica"> Quiniela p&uacute;blica
											</label>
										</div>
										<div class="radio col-sm">
											<label>
												<input type="radio" name="opciones" id="optprivate" value="privada"> Quiniela privada
											</label>
										</div>
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-sm">
									<div class="form-group">
										<label for="inicioquiniela">Fecha inicio</label>
										<input type="date" id="inicioquiniela" class="form-control" required>
									</div>
								</div>
								<div class="col-sm">
									<div class="form-group">
										<label for="finquiniela">Fecha final</label>
										<input type="date" id="finquiniela" class="form-control" required>
									</div>
								</div>
								<div class="col-sm">
									<div class="form-group">
										<label for="disciplina">Disciplina</label>
										<select id="disciplina" class="form-control" required>
											<option value=""></option>
											<option value="Futbol">Futbol</option>
											<option value="Beisbol">Beisbol</option>
											<option value="Softbol">Softbol</option>
											<option value="Basket">Basket</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="descripcionquiniela">Descripci&oacute;n</label>
								<textarea id="descripcionequiniela" class="form-control" rows="4" placeholder="Agregue una descripción y/o reglas básicas" required ></textarea>
							</div>
						</div><!-- fin card-body -->
					</div> <!-- fin card border -->
				</div>
			</form>
		</div> <!-- fin border primary -->
	</div><!--  fin container -->
</body>
</html>