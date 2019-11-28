package mis;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/DBWow64?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
			String dbID = "root";
			String dbPassword ="dlfjs18torl!";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL,dbID,dbPassword);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	

	public int login(String userID, String userPassword) {
		String SQL = "SELECT password FROM insat where id = ?";
		try {
			//System.out.println(userID);
			//System.out.println(userPassword);
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1,  userID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).contentEquals(userPassword)) {
					return 1; // 성공
				}
				else 
					return 0; // 비번없음
			}
			return -1; // 아디 없즘
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2; // 디비 연결도안됨
	}
	
	public int joinData(User user) {
		String SQL = "update insat set id=?, password=?, name=?, tel=? where id = ?";
		try {
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return -2;
	}
	
}
