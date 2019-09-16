package ddbb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

import clases.Alumno;
import clases.ProfesorFull;
import clases.Usuario;

public class DataBaseConnection {
	private Connection conn;
	private String user;
	private String password;
	
	public DataBaseConnection(String user, String password) {
		super();
		this.user = user;
		this.password = password;
	}

	// Metodo que establece la conexion con la base de datos	
	public Connection getConnection() throws ClassNotFoundException {
		conn = null;
		
		Properties info;
		String urlConn;
		
		
		urlConn = "jdbc:mysql://localhost:3306/academia?"
				+ "useUnicode=true&useJDBCCompliantTimezoneShift="
				+ "true&useLegacyDatetimeCode=false&serverTimezone=UTC";
		
		info = new Properties();
		info.put("user", this.user);
		info.put("password", this.password);
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(urlConn, info);
			System.out.println("Conectado a la base de datos");
		} catch (SQLException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
				.log(Level.INFO, null, e);
		}
		
		return conn;
	}
	
	public ResultSet dameAlumnos() throws SQLException {
		ResultSet rs = null;
		String query = "SELECT nombre, primerApellido, segundoApellido, usuario, password FROM alumnos";
		
		Statement stmt;
		try {
			conn = getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
		} 
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		
		return rs;
	}
	
	public void altaAlumno(Alumno alumno) {
		String query = "INSERT INTO alumnos (`nombre`, `primerApellido`, "
				+ "`segundoApellido`, `usuario`, `password`)"
				+ " VALUES (?, ?, ?, ?, ?);";
		PreparedStatement stmt;
		try {
			conn = getConnection();
		
		stmt = conn.prepareStatement(query);
		
		stmt.setString(1, alumno.getNombre());
		stmt.setString(2, alumno.getPrimerApellido());
		stmt.setString(3, alumno.getSegundoApellido());
		stmt.setString(4, alumno.getUsuario());
		stmt.setString(5, alumno.getPassword());
		
		stmt.executeUpdate();
		} 
		catch (ClassNotFoundException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		catch(SQLException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
	}

	public ResultSet dameLogin(Usuario usu) throws SQLException {
		ResultSet rs = null;
		String query = "SELECT `usuario`, `password` FROM `alumnos`"
				+ "WHERE `usuario` = ? AND `password` = ?;"  ;
		PreparedStatement stmt;
		
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(query);
			stmt.setString(1, usu.getUsuario());
			stmt.setString(2, usu.getPassword());
			rs = stmt.executeQuery();
			
		} catch (ClassNotFoundException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
			.log(Level.INFO, null, e);
		}
		
		return rs;
	}
	
	//No esta acabado. Voy a probar
	public ResultSet dameAsignaturas(int nota) throws SQLException {
		ResultSet rs = null;
		String query = "SELECT id, nombreAsignatura FROM profesores WHERE notaCorte < ?;"; 		
		PreparedStatement stmt;
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(query);
			stmt.setInt(1, nota);
			rs = stmt.executeQuery();
		} 
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		
		return rs;
	}
	
	public ResultSet dameProfesor(int id) throws SQLException {
		ResultSet rs = null;
		String query = "SELECT nombre, primerApellido, segundoApellido, nombreAsignatura FROM profesores WHERE id = ?;"; 		
		PreparedStatement stmt;
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(query);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
		} 
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		
		return rs;
	}

	public ResultSet dameLoginP(Usuario usu) throws SQLException {
		ResultSet rs = null;
		String query = "SELECT `usuario`, `password` FROM `profesores`"
				+ "WHERE `usuario` = ? AND `password` = ?;"  ;
		PreparedStatement stmt;
		
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(query);
			stmt.setString(1, usu.getUsuario());
			stmt.setString(2, usu.getPassword());
			rs = stmt.executeQuery();
			
		} catch (ClassNotFoundException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
			.log(Level.INFO, null, e);
		}
		
		return rs;
	}

	public void altaProfesor(ProfesorFull profesorFull) {
		String query = "INSERT INTO profesores (`nombre`, `primerApellido`, "
				+ "`segundoApellido`, `usuario`, `password`, `notaCorte`, `nombreAsignatura`)"
				+ " VALUES (?, ?, ?, ?, ?, ?, ?);";
		PreparedStatement stmt;
		try {
			conn = getConnection();
		
		stmt = conn.prepareStatement(query);
		
		stmt.setString(1, profesorFull.getNombre());
		stmt.setString(2, profesorFull.getPrimerApellido());
		stmt.setString(3, profesorFull.getSegundoApellido());
		stmt.setString(4, profesorFull.getUsuario());
		stmt.setString(5, profesorFull.getPassword());
		stmt.setInt(6, profesorFull.getNotaCorte());
		stmt.setString(7, profesorFull.getAsignatura());
		
		stmt.executeUpdate();
		} 
		catch (ClassNotFoundException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		catch(SQLException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
	}

	public ResultSet dameAlumnosProfesor(int id) {
		String query = "SELECT * FROM alumnos WHERE idProfesor = ?;";
		PreparedStatement stmt;
		ResultSet rs = null;
		try {
			conn = getConnection();
			stmt = conn.prepareStatement(query);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
		}
		catch(SQLException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		catch(ClassNotFoundException e) {
			Logger.getLogger(DataBaseConnection.class.getName())
		 	.log(Level.INFO, null, e);
		}
		
		
		return rs;
		
	}

}
