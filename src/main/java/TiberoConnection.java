
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class TiberoConnection {
	private String ip = "";
	private int port = 0000;
	private String database = "";
	private String user = "";
	private String password = "";
	
	private final String DRIVER_NAME = "com.tmax.tibero.jdbc.TbDriver";
	private final String TIBERO_JDBC_URL = "jdbc:tibero:thin:@" + ip + ":" + port + ":" + database;
	
	private Connection conn = null;
	
	private void connect() {
        try {
        Class.forName(DRIVER_NAME);
            conn = DriverManager.getConnection(TIBERO_JDBC_URL, user, password);
        } catch(ClassNotFoundException e) {
            System.err.println(e);
        } catch(SQLException e) {
            System.err.println(e);
        }
    }
    
    public void executeQuery() {
        String sql = "SELECT * FROM TEMP where KEY_VAL = 'hlnoe_subject'";
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next()) {
            	System.out.println(rs.getString(1) + "\t" + rs.getString(2));
            }
        } catch(SQLException e) {
            System.err.println(e);
        }
    }
    
    private void disconnect() {
        if(conn != null) {
            try {
                conn.close();
            } catch(SQLException e) {
                System.err.println(e);
            }
        }
    }
    
    public static void main(String[] args) {
    	TiberoConnection tibero = new TiberoConnection();
        
        tibero.connect();
        tibero.executeQuery();
        tibero.disconnect();
    }
}
