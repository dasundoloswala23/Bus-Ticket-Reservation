package model;

public class LoginAdmin {
	private String username;
    private String password;
    private int adminid;
    
        
    
	public LoginAdmin(String username, String password, int adminid) {
		super();
		this.username = username;
		this.password = password;
		this.adminid = adminid;
	}
    public LoginAdmin() {
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
	public int getAdminid() {
		return adminid;
	}
	public void setUserid(int adminid) {
		this.adminid = adminid;
	}
    
    
    
}
