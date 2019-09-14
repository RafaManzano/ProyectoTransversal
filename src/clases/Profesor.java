package clases;

public class Profesor {
	
	private Integer id;
	private String nombre;
	private String primerApellido;
	private String segundoApellido;
	private String usuario;
	private String password;
	private Integer NotaCorte;
	private String NombreAsignatura;
	
	public Profesor() {
		super();
	}

	public Profesor(String nombre, String primerApellido, String segundoApellido, String usuario, String password,
			Integer notaCorte, String nombreAsignatura) {
		super();
		this.nombre = nombre;
		this.primerApellido = primerApellido;
		this.segundoApellido = segundoApellido;
		this.usuario = usuario;
		this.password = password;
		NotaCorte = notaCorte;
		NombreAsignatura = nombreAsignatura;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPrimerApellido() {
		return primerApellido;
	}

	public void setPrimerApellido(String primerApellido) {
		this.primerApellido = primerApellido;
	}

	public String getSegundoApellido() {
		return segundoApellido;
	}

	public void setSegundoApellido(String segundoApellido) {
		this.segundoApellido = segundoApellido;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getNotaCorte() {
		return NotaCorte;
	}

	public void setNotaCorte(Integer notaCorte) {
		NotaCorte = notaCorte;
	}

	public String getNombreAsignatura() {
		return NombreAsignatura;
	}

	public void setNombreAsignatura(String nombreAsignatura) {
		NombreAsignatura = nombreAsignatura;
	}
	
	
	
	
}
