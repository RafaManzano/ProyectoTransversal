package clases;

public class Asignatura {
	private int id;
	private String nombreAsignatura;
	
	public Asignatura() {
		super();
	}

	public Asignatura(int id, String nombreAsignatura) {
		this.id = id;
		this.nombreAsignatura = nombreAsignatura;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombreAsignatura() {
		return nombreAsignatura;
	}

	public void setNombreAsignatura(String nombreAsignatura) {
		this.nombreAsignatura = nombreAsignatura;
	}
	
	
	
	
}
