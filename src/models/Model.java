package models;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

import clases.Alumno;
import clases.Asignatura;
import clases.Profesor;
import clases.ProfesorFull;
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
	private Usuario usuarioP;
	private List<Asignatura> asignaturas;
	private Profesor profesor;
	private ProfesorFull profesorFull;
	private List<Alumno> alumnos;
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
	public List<Asignatura> getAsignaturas(int nota) {
		DataBaseConnection bbdd = new DataBaseConnection("rmanzano", "Temp2019$$");
		ResultSet rs = null;
		
		try {
			rs = bbdd.dameAsignaturas(nota);
			asignaturas = new ArrayList<>();
			while(rs.next()) {
				asignaturas.add(new Asignatura(rs.getInt("id"),
						rs.getString("nombreAsignatura")));
			}
		} 
		catch (SQLException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		return asignaturas;
	}
	public void setAsignaturas(List<Asignatura> asignaturas) {
		this.asignaturas = asignaturas;
	}
	public Profesor getProfesor(int id)  {
		DataBaseConnection bbdd = new DataBaseConnection("rmanzano", "Temp2019$$");
		ResultSet rs = null;
		
		try {
			rs = bbdd.dameProfesor(id);
			
			while(rs.next()) {
				profesor = new Profesor(rs.getString("nombre"),
						rs.getString("primerApellido"),
						rs.getString("segundoApellido"),
						rs.getString("nombreAsignatura"));
			}
		} 
		catch (SQLException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		return profesor;
	}
	public void setProfesor(Profesor profesor) {
		this.profesor = profesor;
	}
	
	public Usuario getUsuarioP(Usuario usu) {
		DataBaseConnection bbdd = new DataBaseConnection("rmanzano", "Temp2019$$");
		usuarioP = new Usuario();
		ResultSet rs = null;
		try {
			rs = bbdd.dameLoginP(usu);
			if(rs.next() && rs.getRow() != 0) {
				usuarioP.setUsuario(rs.getString("usuario"));
				usuarioP.setPassword(rs.getString("password"));
			}
			else {
				usuarioP = null;
			}
			
		} 
		catch (SQLException e) {
			// TODO Auto-generated catch block
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		return usuarioP;
	}
	public void setUsuarioP(Usuario usuarioP) {
		this.usuarioP = usuarioP;
	}
	public ProfesorFull getProfesorFull() {
		return profesorFull;
	}
	public void setProfesorFull(ProfesorFull profesorFull) {
		DataBaseConnection conexion;
		conexion = new DataBaseConnection("rmanzano","Temp2019$$");
		
		conexion.altaProfesor(profesorFull);
		
		this.profesorFull = profesorFull;
	}
	public List<Alumno> getAlumnos(int id) {
		DataBaseConnection conexion;
		conexion = new DataBaseConnection("rmanzano", "Temp2019$$");
		
	    try {
			ResultSet rs =	conexion.dameAlumnosProfesor(id);
			alumnos = new ArrayList<>();
			while(rs.next()) {
				alumnos.add(new Alumno(rs.getString("nombre"), rs.getString("primerApellido"), rs.getString("segundoApellido")));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
	    return alumnos;
	}
		
	
	public void setAlumnos(List<Alumno> alumnos) {
		this.alumnos = alumnos;
	}

}
