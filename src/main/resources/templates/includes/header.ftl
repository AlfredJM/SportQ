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
            <a class="nav-link" href="#" >Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="menudropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
            <div class="dropdown-menu" aria-labelledby="dropdown">
              <a class="dropdown-item" href="#">Action</a>
              <a class="dropdown-item" href="#">Another action</a>
              <a class="dropdown-item" href="#">Something else here</a>
            </div>
          </li>
        </ul>

		<#if autenticado == false>
        <ul class="navbar-nav navbar-right">
        	<li><a class="btn btn-outline-success" href="/login">Entrar</a></li>
        </ul>
        <ul class="navbar-nav navbar-right">
        	<li><a class="btn btn-outline-success" href="/signup">Registrarme</a></li>
        </ul>
        <#else>
        <ul class="navbar-nav navbar-right">
        	<form id="logoutForm" action="/logout" method="post">
        		<li><button class="btn btn-outline-danger" onclick="document.getElementById('logoutForm').submit();">Salir</button></li>
        		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        	</form>
        </ul>
        </#if>
      </div>
    </div>
  </nav>
  <header>
  <!-- Fin barra de navegacion -->