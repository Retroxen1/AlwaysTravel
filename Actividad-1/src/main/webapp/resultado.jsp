<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Triangulo" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<title>Resultado</title>
<body>

<%
	Triangulo t = (Triangulo) request.getAttribute("trianguloResuelto");
%>


		<h1>El resultado con el tipo de cambio de hoy: </h1>

	Pesos: <%=t.getResultadoA()%> <br>
	Dolares: <%=t.getResultadoP()%><br>
</body>

	<form action="index.jsp">
	<input type="submit" value="back"/>
	</form>
</body>

</body>
</html>