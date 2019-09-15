package clases;

public class Usuario {
	private String usuario;
	private String password;
	private TipoCuenta tipoCuenta;
	
	public Usuario() {
		super();
	}

	
	
	public Usuario(String usuario, String password, TipoCuenta tipoCuenta) {
		super();
		this.usuario = usuario;
		this.password = password;
		this.tipoCuenta = tipoCuenta;
	}



	public Usuario(String usuario, String password) {
		this.usuario = usuario;
		this.password = password;
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

	public TipoCuenta getTipoCuenta() {
		return tipoCuenta;
	}

	public void setTipoCuenta(TipoCuenta tipoCuenta) {
		this.tipoCuenta = tipoCuenta;
	}
	
	
	
}
