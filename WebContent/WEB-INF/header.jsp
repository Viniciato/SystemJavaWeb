<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Sistema de Estoque</title>
     <link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" href="./resources/css/bootstrap-theme.min.css" />
 <script src="./resources/js/bootstrap.min.js"></script>
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home">BeWare</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
          <li><a href="home">Produtos</a></li>
            <li><a href="products.jsp">Cadastrar Produtos</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%= request.getSession(false).getAttribute("user") %><span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href='logout'>Desconectar-se</a></li>
                <li><a href="about.jsp">Sobre!</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>