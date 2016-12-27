package buygame;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

public class RegisterManager {

	private Userinfo userinfo;
	private List<Userinfo> usersinfo;

	public void add(Userinfo userinfo) {
		Connection conn;
		PreparedStatement ps;

		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=BuyGame ";
			conn = java.sql.DriverManager.getConnection(connectSQL, "zoujian", "");

			ps = conn.prepareStatement("insert into Users values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, userinfo.getLoginName());
			ps.setString(2, userinfo.getPassWord());
			ps.setString(3, userinfo.getUserName());
			ps.setString(4, userinfo.getGender());
			ps.setString(5, userinfo.getDateBirth());
			ps.setString(6, userinfo.getNation());
			ps.setInt(7, userinfo.getCell());
			ps.setString(8, userinfo.getAdds());
			ps.setString(9, userinfo.getEmail());

			ps.executeUpdate();

			ps.close();
			conn.close();
		} catch (Exception e) {

		}
	}
	public void update(Userinfo userinfo) {
		Connection conn;
		PreparedStatement ps;
		String LoginName = userinfo.getLoginName();
		String PassWord = userinfo.getPassWord();
		String UserName = userinfo.getUserName();
		String Gender = userinfo.getGender();
		String DateBirth = userinfo.getDateBirth();
		String Nation = userinfo.getNation();
		Integer Cell = userinfo.getCell();
		String Adds = userinfo.getAdds();
		String Email = userinfo.getEmail();
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
			String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=BuyGame ";
			conn = java.sql.DriverManager.getConnection(connectSQL, "zoujian", "");

			ps = conn.prepareStatement("update Users set LoginName='"+LoginName+"',PassWord='"+PassWord+"',UserName='"+UserName+"',Gender=''"+Gender+"',DateBirth='"+DateBirth+"',Nation='"+Nation+"',Cell='"+Cell+"',Adds='"+Adds+"',Email='"+Email+"' ");
			}
		catch (Exception e) {

		}
	}
	
}
