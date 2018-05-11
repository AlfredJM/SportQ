<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Dashboard administrador SportQ">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>WebQ | Administrador</title>

    <!-- Bootstrap core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/dashboard.css" rel="stylesheet">
  </head>

  <body>
    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">SportQ</a>
      <input class="form-control form-control-dark w-100" type="text" placeholder="Buscar" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="#">Regresar</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link active" href="/dashboard">
                  <span data-feather="home"></span>
                  Inicio <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dashboard/solicitudes">
                  <span data-feather="file"></span>
                  Solicitudes
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dashboard/productos">
                  <span data-feather="shopping-cart"></span>
                  Productos
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dashboard/usuarios">
                  <span data-feather="users"></span>
                  Usuarios
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dashboard/reportes">
                  <span data-feather="bar-chart-2"></span>
                  Reportes
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/dashboard/integraciones">
                  <span data-feather="layers"></span>
                  Integrations
                </a>
              </li>
            </ul>

            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Reportes Guardados</span>
              <a class="d-flex align-items-center text-muted" href="#">
                <span data-feather="plus-circle"></span>
              </a>
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Del mes
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Ultimo trimestre
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Social
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">
                  <span data-feather="file-text"></span>
                  Del año
                </a>
              </li>
            </ul>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Bienvenido ${SPRING_SECURITY_CONTEXT.authentication.name}</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
                <button class="btn btn-sm btn-outline-secondary">Compartir</button>
                <button class="btn btn-sm btn-outline-secondary">Exportar</button>
              </div>
              <button class="btn btn-sm btn-outline-secondary dropdown-toggle">
                <span data-feather="calendar"></span>
                Esta semana
              </button>
            </div>
          </div>

          <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>

          <h2>Ultimos logins</h2>
          <div class="table-responsive">
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Id</th>
                  <th>Usuario</th>
                  <th>Rol</th>
                  <th>Fecha y hora</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1,001</td>
                  <td>2</td>
                  <td>Alfred</td>
                  <td>usuario</td>
                  <td>2018-05-09 3:05pm</td>
                </tr>
                <tr>
                  <td>1,002</td>
                  <td>5</td>
                  <td>Luis</td>
                  <td>Admin</td>
                  <td>2018-05-09 7:23am</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>3</td>
                  <td>WebQGrandMaster2</td>
                  <td>Master</td>
                  <td>2018-05-09 7:23am</td>
                </tr>
                <tr>
                  <td>1,003</td>
                  <td>2</td>
                  <td>Alfred</td>
                  <td>usuario</td>
                  <td>2018-05-08 11:08pm</td>
                </tr>
                <tr>
                  <td>1,004</td>
                  <td>5</td>
                  <td>Luis</td>
                  <td>Admin</td>
                  <td>2018-05-08 11:00pm</td>
                </tr>
                <tr>
                  <td>1,005</td>
                  <td>1</td>
                  <td>WebQGrandMaster1</td>
                  <td>Master</td>
                  <td>2018-05-08 6:01pm</td>
                </tr>
              </tbody>
            </table>
          </div>
        </main>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../js/jquery-slim.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>
      var ctx = document.getElementById("myChart");
      var myChart = new Chart(ctx, {
        type: 'line',
        data: {
          labels: ["DOM", "LUN", "MAR", "MIE", "JUE", "VIE", "SAB"],
          datasets: [{
            data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
            lineTension: 0,
            backgroundColor: 'transparent',
            borderColor: '#007bff',
            borderWidth: 4,
            pointBackgroundColor: '#007bff'
          }]
        },
        options: {
          scales: {
            yAxes: [{
              ticks: {
                beginAtZero: false
              }
            }]
          },
          legend: {
            display: false,
          }
        }
      });
    </script>
  </body>
</html>
