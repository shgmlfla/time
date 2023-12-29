import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCConnection {
	
	public Connection getConnection() throws Exception{
		
		String ip = "";
		int port = 0000;
		String database = "";
		String user = "";
		String password = "";
		
		String DRIVER_NAME = "com.tmax.tibero.jdbc.TbDriver";
		String TIBERO_JDBC_URL = "jdbc:tibero:thin:@" + ip + ":" + port + ":" + database;
		
		/*
		 * String keyValue = request.getParameter("KEY_VALUE"); String col01 =
		 * request.getParameter("COL01");
		 */
		
		Connection conn = null;
		PreparedStatement pstmt = null;
			
		Class.forName(DRIVER_NAME);
		conn = DriverManager.getConnection(TIBERO_JDBC_URL, user, password);
		
		return conn;
	}
}
