<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" info="Escrito por Vinicius Nadin"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sistema de Estoque</title>
 
 <link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" />
 <link rel="stylesheet" type="text/css" href="./resources/css/bootstrap-theme.min.css" />
 <script src="./resources/js/bootstrap.min.js"></script>
 
</head>
<body>
   <jsp:include page="WEB-INF/form.jsp"/>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
 <script src="./resources/js/bootstrap.min.js"></script>
<div class="text-center">
<span class="label label-success"><%= getServletInfo() + " | Versão: " + request.getServletContext().getInitParameter("version")%></span>
</div>
</body>
</html>