package member.vo;

public class Member {

	private String email;
	private String pw;
	private String name;
	private String tel;
	private String address;
	

	public Member() {
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public String toString() {
		return "Member [email=" + email + ", pw=" + pw + ", name=" + name + ", tel=" + tel + ", address=" + address
				+ "]";
	}

}
