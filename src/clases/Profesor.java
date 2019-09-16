package clases;

public class Profesor {
	private String nombre;
	private String primerApellido;
	private String segundoApellido;
	private String Asignatura;
	
	public Profesor() {
		super();
	}

	public Profesor(String nombre, String primerApellido, String segundoApellido, String asignatura) {
		this.nombre = nombre;
		this.primerApellido = primerApellido;
		this.segundoApellido = segundoApellido;
		Asignatura = asignatura;
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
		return Asignatura;
	}

	public void setAsignatura(String asignatura) {
		Asignatura = asignatura;
	}
	
	
}
