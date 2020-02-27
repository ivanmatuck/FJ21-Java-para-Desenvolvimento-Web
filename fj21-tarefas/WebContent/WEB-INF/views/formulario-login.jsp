<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet">
</head>
<body>
	<h2>Pagina de Login das Tarefas</h2>
	<form action="efetuaLogin" method="post">
		Login: <input type="text" name="login"> <br>
		Senha: <input type="password" name="senha"> <br>
		<input type="submit" value="Entrar nas Tarefas">
	</form>
</body>
</html>