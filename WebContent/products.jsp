<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="WEB-INF/header.jsp"/>
 <link href="./resources/css/sign.css" rel="stylesheet">
    <div class="container">
      <form class="form-signin" action="home" method="POST">
        <h2 class="form-signin-heading text-center">Cadastrar produto</h2>
        <br>
        <input type="text" id="inputName" name="name" class="form-control text-center" placeholder="Name" required autofocus>
        <br>
        <input type="text" id="inputPrice" name="price" class="form-control text-center" placeholder="Preco" required>
		<br>
		<input type="text" id="inputDescription" name="description" class="form-control text-center" placeholder="Descricao" required>
		<br>
		<input type="text" id="inputAmount" name="amount" class="form-control text-center" placeholder="Quantidade" required>
        <br>
        <button class="btn btn-lg btn-success btn-block" type="submit">Adicionar</button>
        <div class="form-group row">
      </form>
</div>
	<jsp:include page="WEB-INF/footer.jsp"/>