package clases;

public class ProfesorFull {
	private String nombre;
	private String primerApellido;
	private String segundoApellido;
	private String usuario;
	private String password;
	private int notaCorte;
	private String asignatura;
	
	public ProfesorFull() {
		super();
	}

	

	public ProfesorFull(String nombre, String primerApellido, String segundoApellido, String usuario, String password,
			int notaCorte, String asignatura) {
		this.nombre = nombre;
		this.primerApellido = primerApellido;
		this.segundoApellido = segundoApellido;
		this.setUsuario(usuario);
		this.setPassword(password);
		this.setNotaCorte(notaCorte);
		this.asignatura = asignatura;
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

	public String getAsignatura() {
		return asignatura;
	}

	public void setAsignatura(String asignatura) {
		this.asignatura = asignatura;
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



	public int getNotaCorte() {
		return notaCorte;
	}



	public void setNotaCorte(int notaCorte) {
		this.notaCorte = notaCorte;
	}
	
	
}
