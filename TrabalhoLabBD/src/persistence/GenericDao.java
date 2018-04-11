package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GenericDao {

private Connection c;

public Connection getConnection() throws ClassNotFoundException, SQLException {

String hostName = "localhost";
String dbName ="trabalholabbd";
String user ="login";
String senha ="senha";

Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");


c = DriverManager.getConnection(String.format("jdbc:jtds:sqlserver://%s:1433;database=%s;user=%s;password=%s;", hostName, dbName, user, senha));

return c;
}

}