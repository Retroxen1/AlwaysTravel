<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.Cambio" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" charset="UTF-8">
<title>Resultado</title>
<body>

<%
		Cambio t = (Cambio) request.getAttribute("trianguloResuelto");
%>


		<h1>El resultado con el tipo de cambio de hoy: </h1>

	Pesos: <%=t.getCambio()%> <br>

</body>

	<form action="index.jsp">
	<input type="submit" value="back"/>
	</form>

</div>
	
</body>

</body>
</html>