<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>
<%@page import="controller.muestraTriangulo" %>
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
		
		out.print("Hola");
			
		out.print("<form action='muestraTriangulo' method='post'>");
		out.print("Pesos<br>");
		out.print("<input type='text' name='num1' value=''><br>");
		out.print("Dolares<br>");
		out.print("<input type='text' name='num2' value=''><br>");	
		out.print("<input type='submit' value='Sacar'>");
		
		out.print("<br><h3>Cookies");
		Cookie ck[] = request.getCookies(); 
		if (ck != null) {
			for (int i = 0; i < ck.length; i++){ 
				if (ck[i].getName().equals("num1")) {
					out.print("<h3>Tu busqueda anterior fue (cookies)" + "<br>"+ "Pesos: " + ck[i].getValue()+ "<br>"+ "Dolares: ");
				}		
				if (ck[i].getName().equals("num2")) {
					out.print(ck[i].getValue()+ "<br><br>"+"Tu resultado anterior fue (cookies)"+ "<br>");
				}
				
			}

		}
		
		if (sesion.getAttribute("num1")!=null&&
			sesion.getAttribute("num2")!=null&&
			sesion.getAttribute("Area")!=null&&
			sesion.getAttribute("Perimetro")!=null){
			
		
			out.print("<br>Sesions<br>");
			out.print("<br>Tu busqueda anterior fue (sesions) "); 
			out.print("<br>Pesos: "+ sesion.getAttribute("num1"));
			out.print("<br>Dolares: "+ sesion.getAttribute("num2")); 

		}
	
}
	else {
		
		out.print("<form action='muestraTriangulo' method='get'>");
		out.print("<br>Que tipo de cambio quieres hoy?<br>");
		out.print("<input type'text' name='name' value=''><br>");
		out.print("<input type='submit' value='Sacar'>");
		
	}


%>


	
</form>
</head>


</body>
</html>