package test;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class JDBCConnection 
{
	
	public static  Connection getJDBCConnection() 
	throws Exception
	{
		
		
		
		String DRIVER_NAME = "com.tmax.tibero.jdbc.TbDriver";
		String TIBERO_JDBC_URL = "jdbc:tibero:thin:@" + ip + ":" + port + ":" + database;
		
		/*
		 * String keyValue = request.getParameter("KEY_VALUE"); String col01 =
		 * request.getParameter("COL01");
		 */
		
		Connection conn = null;
			
		Class.forName(DRIVER_NAME);
		conn = DriverManager.getConnection(TIBERO_JDBC_URL, user, password);
		
		return conn;
	}
}
