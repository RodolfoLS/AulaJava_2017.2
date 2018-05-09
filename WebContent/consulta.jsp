<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!--  JSTL (Java Standard TagLib) - Conjunto de tags fornecidos por bibliotecas que encorpora novas funcionalidades a uma p�gina JSP. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
</head> 	
<body>
<div class="container">
	<h1>Cadastro de Aluno</h1>
	<br>
	<a href="index.jsp">Inicial</a>&nbsp;&nbsp;
	<a href="cadastro.jsp">Cadastro</a>&nbsp;&nbsp;
	<a href="ControleAluno">Consulta</a>&nbsp;&nbsp;�

<table class="table table-striped table-hover">
<tr>
	<th colspan="4">Dados do Aluno</th>
	<th colspan="3">Endere�o do Aluno</th>
</tr>
<tr>
	<th>Mat</th>
	<th>Nome</th>
	<th>E-mail</th>
	<th>Nascimento</th>
	<th>Rua</th>
	<th>Bairro</th>
	<th>Cidade</th>
</tr>

	<c:forEach items="${listaAluno}" var="a">
		<tr>
			<td>${a.matricula}</td>
			<td>${a.nome}</td>
			<td>${a.email}</td>
			<td>${a.nascimento}</td>
			<td>${a.endereco.rua}</td>
			<td>${a.endereco.bairro}</td>
			<td>${a.endereco.cidade}</td>
		</tr>
	</c:forEach>
</table>

</div>
</body>