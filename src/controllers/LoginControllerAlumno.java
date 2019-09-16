package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ddbb.DataBaseConnection;
import clases.TipoCuenta;
import clases.Usuario;
import models.Model;

//He refactorizado el nombre de LoginController a LoginControllerAlumno, y quitado la modificacion que intentaba unificar el login 
//de ambas cuentas. El resultado mostrado sigue siento el mismo: vuelta al index.

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginControllerAlumno extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static int contador = 0;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginControllerAlumno() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		if(contador == 3) {
			contador = 0;
			request.getRequestDispatcher( "/index.jsp" ).forward( request, response );
		}
		else {
			request.getRequestDispatcher( "/login.jsp" ).forward( request, response );
			contador++;
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		//HttpSession sesion = request.getSession();
		String usu;
		String pass;
		usu = request.getParameter("usuario");
	    pass = request.getParameter("password");
		
		Usuario usuario = new Usuario(usu,pass);
		
		Model m = new Model();
		
		
		if(m.getUsuario(usuario) != null) { //&& sesion.getAttribute("usuario") == null
			//sesion.setAttribute("usuario", usu);
			//Aqui quedaria mandar hacia listado
			//Pensar alguna forma de coger el ID y poder mandarlo
			
			//if (m.getUsuario(usuario).getTipoCuenta() == TipoCuenta.ALUMNO){
				request.getRequestDispatcher( "/listadoAlumnos.jsp" ).forward( request, response );
			//} else {
				//hay que sustituir la direccion de envio para ir a la parte del profesor
			//	request.getRequestDispatcher( "/listadoProfesores.jsp" ).forward( request, response );
			//}
		}
		else {
			doGet(request, response);
		}
	}

}
