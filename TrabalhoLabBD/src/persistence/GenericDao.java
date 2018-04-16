package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GenericDao {

private Connection c;

public Connection getConnection() throws ClassNotFoundException, SQLException {

String hostName = "localhost";
String dbName ="trabalholabbd";
String user ="trabalho";
String senha ="123";
Class.forName("com.mysql.jdbc.Driver");
c = DriverManager.getConnection("jdbc:mysql://"+hostName+":3306/"+dbName, user, senha);

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