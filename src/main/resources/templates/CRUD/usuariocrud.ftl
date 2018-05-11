<!DOCTYPE html>
<html>
<head>
<#include "../includes/header">
<title>SportQ | Gesti&oacute;n de usuarios</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Id</th>
				<th>Usuario</th>
				<th>Password</th>
				<th>Email</th>
				<th>Fecha de creaci&oacute;n</th>
				<th>&Uacute;ltimo acceso</th>
				<th>Estatus</th>
				<th>Rol</th>
				<th>Consultar</th>
				<th>Modificar</th>
				<th>Eliminar</th>
			</tr>
		</thead>
		<tbody>
			<#list clientes as cliente>
			<tr>
				<td><span id="id${cliente.id}">${cliente.nombre}</span></td>
				<td><span id="usuario${cliente.id}">${cliente.usuario}</span></td>
				<td><span id="password${cliente.id}">${cliente.password}</span></td>
				<td><span id="email${cliente.id}"></span>${cliente.email}</td>
				<td><span id="fechacreacion${cliente.id}">${cliente.fechacreacion}</span></td>
				<td><span id="ultimoacceso${cliente.id}">${cliente.ultimoacceso}</span></td>
				<td><span id="estatus${cliente.id}">${cliente.estatus}</span></td>
				<td><span id="rol${cliente.id}">${cliente.rol}</span></td>
				<td><span id="consultar${cliente.id}"></span></td>
				<td><span id="modificar${cliente.id}"></span></td>
				<td><span id="eliminar${cliente.id}"></span></td>
			</tr>
		</tbody>
	</table>
</body>
</html>