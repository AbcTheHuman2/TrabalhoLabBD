package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GenericDao {
	
	private Connection c;
	
	private Connection getConnection() throws SQLException {
		String hostName = "localhost";
		String dbName ="trabalholabbd";
		String user ="login";
		String senha ="senha";
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			c = DriverManager.getConnection(String.format("jdbc:jtds:sqlserver://%s:1433;database=%s;user=%s;password=%s;", hostName, dbName, user, senha));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return c;
	}
	
	public void fechaConexao() {
		try {
			if (c != null)
				c.close();
			c = null;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}