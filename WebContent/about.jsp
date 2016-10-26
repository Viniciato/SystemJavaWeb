<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" info="Vinicius Nadin"%>
<jsp:include page="/WEB-INF/header.jsp"/>
  <%
  	Cookie[] cookies = request.getCookies();
  	Cookie data = null;
  	for(Cookie cookie: cookies){
  		if(cookie.getName().equals("Data"))
  			data = cookie;
  	}
  %>
    <div class="container">
     <div class="jumbotron">
  <h1><span class="label label-primary">Olá, tudo certo?</span></h1>
  <br>
  <h3>Criador do webApp: <%= getServletInfo() %></h3>
  <h3>Email: vininadin@gmail.com</h3>
  <h3>Você logou em: <%= data.getValue() %></h3>
  <br>
</div>
    </div>
    
<jsp:include page="/WEB-INF/footer.jsp"/>