<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../js/jquery-ui.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/style.css">
<title>SportQ | Unirse a una Quiniela</title>
</head>

<body>
	<#include "/includes/header.ftl">

	 <SCRIPT LANGUAGE="JavaScript">
		function desaparecer()
		{
			$("#MyModal").hide();
		    //$("#tabla").css("display", "none"); 
		}

		function aparecer()
		{
			$("#MyModal").show();
			//$("#tabla").css("display", "block");
		}
	</SCRIPT>
	
	<div class="inicio">
		<h3 class="text-center text-white" > Juegue a la Quiniela con sus amigos </h3>
		<h5 class="text-center text-white"> Luche por ser el mejor</h5>
		
		<div class=" botones col-md-12 btn-group  text-center" >
				<button class="btn btn-success btn-responsive btninter centrado" type="button"> Solicitar ser Administrador</button>
				<button class="btn btn-success btn-responsive btninter centrado" type="button " onclick="return aparecer();"> Unirse a una Quiniela </button>		
		</div>
	</div>
		
	<section>
			
		
			<div>
					<h2 class="text-left">Quinielas Publicas</h2>
			</div>

				<table class="table table-hover">
					<caption>table title and/or explanatory text</caption>
					<thead>
						<tr>
							<th>Mas Populares</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Nombre</td>
							<td>Disciplina</td>
							<td>Descripcion</td>
							<td>            </td>		
						</tr>
						<tr>
					<#list lista as quiniela>
						<input type="hidden" name="id" value="${quiniela.id}">
						<th>${quiniela.descripcion}</th>
						 <th>${quiniela.torneo}</th>
						 <th><a href="#" >Ver detalle</a></th>
						 <th> <input type="submit"  class="btn-success" name="Ingresar" value="Ingresar"></th>
						</tr>
					</#list>
					</tbody>
				</table>

	</section>
			
				<div id="MyModal" class="modal" tabindex="-1" role="dialog">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header  text-center">
				        <h5 class="modal-title">Unirse a una Quiniela</h5>
				        <button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="return desaparecer();">
				          <span aria-hidden="true">&times;</span>
				        </button>
				      </div>
				      <div class="modal-body">
				         <p class="text-center">Introdusca el Código de la quiniela.</p>
				         <input id="codigo" type="text" name="codigo" value="" placeholder="Código" required="">
				      </div>
				      <div class="modal-footer">
				        <button type="submit" class= "btn btn-lg btn-primary">Unirse</button>
				        
				      </div>
				    </div>
				  </div>
				</div>
	
</body>