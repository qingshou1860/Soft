package buygame;

public class Userinfo {
	private String LoginName;
	private String PassWord;
	private String UserName;
	private String Gender;
	private String DateBirth;
	private String Nation;
	private Integer Cell;
	private String Adds;
	private String Email;

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public String getLoginName() {
		return LoginName;
	}

	public void setLoginName(String loginName) {
		LoginName = loginName;
	}

	public String getPassWord() {
		return PassWord;
	}

	public void setPassWord(String passWord) {
		PassWord = passWord;
	}

	public String getUserName() {
		return UserName;
	}

	public void setUserName(String userName) {
		UserName = userName;
	}

	public String getDateBirth() {
		return DateBirth;
	}

	public void setDateBirth(String dateBirth) {
		DateBirth = dateBirth;
	}

	public String getNation() {
		return Nation;
	}

	public void setNation(String nation) {
		Nation = nation;
	}

	public Integer getCell() {
		return Cell;
	}

	public void setCell(Integer cell) {
		Cell = cell;
	}

	public String getAdds() {
		return Adds;
	}

	public void setAdds(String adds) {
		Adds = adds;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	@Override
	public String toString() {
		return "Userinfo [LoginName=" + LoginName + ", PassWord=" + PassWord + ", UserName=" + UserName + ", Gender="
				+ Gender + ", DateBirth=" + DateBirth + ", Nation=" + Nation + ", Cell=" + Cell + ", Adds=" + Adds
				+ ", Email=" + Email + "]";
	}
	
}
