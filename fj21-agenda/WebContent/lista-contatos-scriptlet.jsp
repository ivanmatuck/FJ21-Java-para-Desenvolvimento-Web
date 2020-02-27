<%@page import="java.util.*"%>
<%@page import="br.com.caelum.agenda.dao.*"%>
<%@page import="br.com.caelum.agenda.modelo.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listando Contatos</title>
</head>
<body>
	<table>
		<%
		ContatoDao dao = new ContatoDao();
		List<Contato> contatos = dao.getLista();
		
		for (Contato contato : contatos) {
		%>
			<tr>
				<td><%=contato.getNome()%></td>
				<td><%=contato.getEmail()%></td>
				<td><%=contato.getEndereco()%></td>
				<td><%=contato.getDataNascimento().getTime()%></td>
			</tr>
		<%
		}
		%>
	</table>
</body>
</html>