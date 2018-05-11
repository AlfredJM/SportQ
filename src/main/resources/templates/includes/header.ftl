    <!-- Barra de navegación -->
<header>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
    <div class="container">
      <a class="navbar-brand" href="#">SportQ</a>
      <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#collapsibleNavbar" aria-controls="collapsibleNavbar" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="/home" >Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/categoria/beisbol">B&eacute;isbol</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/categoria/futbol">Futbol</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/categoria/tennis">Tennis</a>
          </li>
        </ul>
        <ul class="navbar-nav navbar-right">
		<#if SPRING_SECURITY_CONTEXT.authentication.authenticated == false>
        	<li><a class="btn btn-sm btn-outline-secondary" href="/login">Entrar</a></li>
        	<li><a class="btn btn-sm btn-outline-secondary" href="/signup">Registrarme</a></li>
        <#else>
          <li class="dropdown show">
            <a class="btn btn-secondary dropdown-toogle" href="#" id="menudropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${SPRING_SECURITY_CONTEXT.authentication.name}</a>
            
            <div class="dropdown-menu" aria-labelledby="menudropdown">
            <#list SPRING_SECURITY_CONTEXT.authentication.authorities as authority>
	            <#if authorithy == ROLE_ADMIN>
	            	<a class="dropdown-item" href="/crearquiniela">Crear quiniela</a>
	              	<a class="dropdown-item" href="/dashboard">Dashboard</a>
	              	<#break>
	            </#if>
            </#list>
	        	<form id="logoutForm" action="/logout" method="post">
	        		<button class="dropdown-item" onclick="document.getElementById('logoutForm').submit();">Salir</button></li>
	        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	        	</form>
            </div>
          </li>

        </ul>
        </#if>
      </div>
    </div>
  </nav>
  <header>
  <!-- Fin barra de navegacion -->