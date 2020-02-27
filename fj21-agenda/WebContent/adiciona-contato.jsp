<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>   
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adiciona Contatos</title>

<link href="css/jquery.css" rel="stylesheet">
<script src="js/javascript.js"></script>
<script src="js/jquery-ui.js"></script>

</head>
<body>
<c:import url="cabecalho.jsp"/>

	<h1>Adiciona Contatos</h1>
	<hr />
	<form action="adicionaContato" method="POST">
		Nome: <input type="text" name="nome" /><br /> 
		E-mail: <input type="text" name="email" /><br /> 
		Endereço: <input type="text" name="endereco" /><br /> 
		Data Nascimento: <caelum:campoData id="dataNascimento" /><br /> 
			
			<input type="submit" value="Gravar" />
	</form>
	
<c:import url="rodape.jsp"/>

</body>
</html>