<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
	<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Contatos</title>
</head>
<body>
	<c:import url="cabecalho.jsp"/>
	
	<table>
		<c:forEach var="contato" items="${dao.lista}">
			<tr>
				<td>${contato.nome}</td>
				<td>
<%-- 					<c:if test="${not empty contato.email}"> --%>
<%-- 						<a href="mailto=${contato.email}">${contato.email}</a> --%>
<%-- 					</c:if> --%>
<%-- 					<c:if test="${empty contato.email}"> --%>
<!-- 						Email não informado -->
<%-- 					</c:if> --%>

				<c:choose> 
					<c:when test="${not empty contato.email}">
						<a href="mailto=${contato.email}">${contato.email}</a>
					</c:when>
					<c:otherwise>
						Email não informado choose
					</c:otherwise>
				</c:choose>
					
				</td>
				<td>${contato.endereco}</td>
				<td>${contato.dataNascimento.time}</td>
			</tr>
		</c:forEach>
	</table>
	
	<c:import url="rodape.jsp"/>
</body>
</html>