package models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import clases.Alumno;
import clases.Asignatura;
import clases.Profesor;
import clases.TipoCuenta;
import clases.Usuario;
import ddbb.DataBaseConnection;

/**
 * Session Bean implementation class Model
 */
@Stateless
@LocalBean
public class Model {

	private Alumno alumno;
	private Usuario usuario;
	private Profesor profesor;
	private List<Asignatura> asignaturas;
    /**
     * Default constructor. 
     */
    public Model() {
        // TODO Auto-generated constructor stub
    }
    
    public Alumno getAlumno() {
		return alumno;
	}
	public void setAlumno(Alumno alumno) {
		
		DataBaseConnection conexion;
		conexion = new DataBaseConnection("jsolis","Temp2019$$");
		
		conexion.altaAlumno(alumno);
		this.alumno = alumno;
	}
	
	public Profesor getProfesor() {
		return profesor;
	}
	public void setProfesor(Profesor profesor) {
		
		DataBaseConnection conexion;
		conexion = new DataBaseConnection("jsolis","Temp2019$$");
		
		conexion.altaProfesor(profesor);
		this.profesor = profesor;
	}
	
	public Usuario getUsuario(Usuario usu)  {
		DataBaseConnection bbdd = new DataBaseConnection("jsolis", "Temp2019$$");
		usuario = new Usuario();
		ResultSet rs = null;
		try {
			rs = bbdd.dameLogin(usu);
			if(rs.next() && rs.getRow() != 0) {
				//Si Fetch size detecta el numero de columnas hace lo que quiero, si no, hay que buscar una funcion que permita diferenciar
				//un resulset de alumno de uno de profesor y sustituirlo en la condicion del if
				if(rs.getFetchSize() == 7) { usuario.setTipoCuenta(TipoCuenta.ALUMNO);
				} else {usuario.setTipoCuenta(TipoCuenta.PROFESOR);}
				
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setPassword(rs.getString("password"));
			}
			else {
				usuario = null;
			}
			
		} 
		catch (SQLException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public List<Asignatura> getAsignaturas() {
		
		return asignaturas;
	}
	public void setAsignaturas(List<Asignatura> asignaturas) {
		this.asignaturas = asignaturas;
	}

}
