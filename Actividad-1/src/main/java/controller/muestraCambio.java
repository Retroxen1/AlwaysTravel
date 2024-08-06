package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name= "/muestraCambio", urlPatterns = {"/muestraCambio"})
public class muestraCambio extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Logger logs = Logger.getLogger(getServletInfo());
	

	protected void processRequest(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException { 
		response.setContentType("text/html; charset=UTF-8"); 
		try (PrintWriter out = response.getWriter()) { 

			String n1= request.getParameter("num1"); 
			String n2= request.getParameter("num2"); 
			
			model.Cambio t = new model.Cambio (n1,n2);
			
			t.sacarCambio();
			

			HttpSession sesion = request.getSession(false); 
			sesion.setAttribute("num1", t.getNum1()); 
			sesion.setAttribute("num2", t.getNum2());
			
			sesion.setAttribute("Cambio", t.getCambio()); 

			
			logs.info("Se realiza el cálculo"); 
			
			Cookie ck = new Cookie("num1", t.getNum1()+""); 
			response.addCookie(ck);
			ck = new Cookie("num2", t.getNum2()+""); 
			response.addCookie(ck);

			Cookie ck2 = new Cookie("Area", t.getCambio()+""); 
			response.addCookie(ck2);

			
			request.setAttribute("trianguloResuelto", t);
			request.getRequestDispatcher("/resultado.jsp").forward(request, response);
				}
			}
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String num2=request.getParameter("num2");
		
		HttpSession sesion = request.getSession(false); 
		

		sesion.setAttribute("name", name);
		sesion.setAttribute("num2", num2);
		request.getRequestDispatcher("/index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}	

}




