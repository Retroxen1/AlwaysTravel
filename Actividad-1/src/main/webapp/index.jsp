<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>
<%@page import="controller.muestraCambio" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Triangulo equilatero</title>

<body>

<br>

	
<%

	HttpSession sesion = request.getSession(false); 
	Enumeration e = sesion.getAttributeNames(); 
	if (e.hasMoreElements()) { 
		out.print("Hola Always Travel <br><br>");
			
		out.print("<form action='muestraCambio' method='post'>");
		out.print("Pesos<br>");
		out.print("<input type='text' name='num1' value=''><br>");
		out.print("<input type='hidden' name='num2' value='"+sesion.getAttribute("num2")+"'><br>");
		out.print("<input type='submit' value='Sacar'>");
		

		
	
	
}
	else {
		
		out.print("<form action='muestraCambio' method='get'>");
		out.print("<br>Que tipo de cambio quieres hoy?<br>");
		out.print("<select name='name' value=''>  <option> Dolar a Peso </option> <option> Peso a Dolar </option></select>");
		out.print("<input type='text' name='num2' value=''>");
		out.print("<input type='submit' value='Sacar'>");
		
	}


%>


	
</form>
</head>


</body>
</html>