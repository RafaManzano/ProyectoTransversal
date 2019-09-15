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
import clases.Usuario;
import ddbb.DataBaseConnection;
//Puto Github

/**
 * Session Bean implementation class Model
 */
@Stateless
@LocalBean
public class Model {

	private Alumno alumno;
	private Usuario usuario;
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
		conexion = new DataBaseConnection("rmanzano","Temp2019$$");
		
		conexion.altaAlumno(alumno);
		this.alumno = alumno;
	}
	public Usuario getUsuario(Usuario usu)  {
		DataBaseConnection bbdd = new DataBaseConnection("rmanzano", "Temp2019$$");
		usuario = new Usuario();
		ResultSet rs = null;
		try {
			rs = bbdd.dameLogin(usu);
			if(rs.next() && rs.getRow() != 0) {
				usuario.setUsuario(rs.getString("usuario"));
				usuario.setPassword(rs.getString("password"));
			}
			else {
				usuario = null;
			}
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
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
