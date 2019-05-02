package tw.idv.hunterchen.jsp;

public class MemberBean {
	private String name="John";
	private String password="12345678";

	public MemberBean() {
		// TODO Auto-generated constructor stub
	}

	public MemberBean(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return "MemberBean [name=" + name + ", password=" + password + "]";
	}
	
	

}
