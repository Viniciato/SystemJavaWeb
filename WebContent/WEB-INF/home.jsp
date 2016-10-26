<%@page import="system.bean.Product"%>
<%@page import="system.bean.ProductsBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" info="Escrito por Vinicius Nadin"%>
<jsp:include page="header.jsp"/>
    <div class="container">
      <div class="jumbotron">
        <h1>Estoque de Produtos</h1>
        <jsp:useBean id="productsBean" type="system.bean.ProductsBean" scope="session"/>
        <div class="panel panel-default">
		  <!-- Default panel contents -->
		  <div class="panel-heading">Produtos</div>
		  <div class="panel-body">
		    <p>Estes sao os produtos que estao atualmente cadastrados no estoque!</p>
		  </div>
		
		  <!-- Table -->
		  <table class="table">
		    <tr>
		    	<th>Nome</th>
		    	<th>Preco</th>
		    	<th>Descricao</th>
		    	<th>Quantidade</th>
		    </tr>
		    <%
		    ArrayList<Product> products = productsBean.all();
		    for (Product product : products) {
		    %>
		    <tr>
		    	<th><%= product.getName()%></th>
		    	<th><%= product.getPrice() %></th>
		    	<th><%= product.getDescription() %></th>
		    	<th><%= product.getAmount() %></th>
		    </tr>
		    <%}%>
		  </table>
		</div>
      </div>
    </div>
    
<jsp:include page="footer.jsp"/>

