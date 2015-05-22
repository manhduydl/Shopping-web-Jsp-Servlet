package model;


public class User {

	private int user_id;
	private String username;
	private String password;
	private java.sql.Date ngaysinh;
	private String gioitinh;
	private String email;
	private String sdt;
	private String diachi;
	private String role;

	public User() {
	}

	public User(int user_id, String username, String password, java.sql.Date ngaysinh, String gioitinh, String email, String sdt, String diachi,
			String role) {
		this.user_id = user_id;
		this.username = username;
		this.password = password;
		this.ngaysinh = ngaysinh;
		this.gioitinh = gioitinh;
		this.email = email;
		this.sdt = sdt;
		this.diachi = diachi;
		this.role = role;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public java.sql.Date getNgaysinh() {
		return ngaysinh;
	}

	public void setNgaysinh(java.sql.Date ngaysinh) {
		this.ngaysinh = ngaysinh;
	}
	
	public String getGioitinh() {
		return gioitinh;
	}

	public void setGioitinh(String gioitinh) {
		this.gioitinh = gioitinh;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	
	public String getDiachi() {
		return diachi;
	}

	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
