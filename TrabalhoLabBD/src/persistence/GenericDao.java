package persistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Escola;

public class GenericDao implements IGenericDao {
	
	private Connection c;
	
	private Connection getConnection() throws ClassNotFoundException, SQLException {
		String hostName = "localhost";
		String dbName ="trabalholabbd";
		String user ="login";
		String senha ="senha";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		c = DriverManager.getConnection(String.format("jdbc:jtds:sqlserver://%s:1433;database=%s;user=%s;password=%s;", hostName, dbName, user, senha));
		return c;
	}
	
	@Override
	public void adicionar(Escola es) throws ClassNotFoundException, SQLException {
		Connection con = getConnection();
		try {
			PreparedStatement pstm = con.prepareStatement(
			"INSERT INTO apuracao (id, nome_escola, nome_jurado, nome_quesito, nota_quesito) "
			+ "VALUES (?, ?, ?, ?, ?)");
			pstm.setLong(1, 0);
			pstm.setString(2, es.getNome_escola());
			pstm.setString(3, es.getJurado());
			pstm.setString(4, es.getQuesito());
			pstm.setFloat(5, es.getNota());
			pstm.executeUpdate();
			System.out.println("Nota gravada com sucesso");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Escola> verTotal() throws ClassNotFoundException, SQLException {
		return null;
	}

	@Override
	public List<Escola> verQuesito(String where) throws ClassNotFoundException, SQLException {
		List<Escola> lista = new ArrayList<>();
		Connection con = getConnection();
		try {
			PreparedStatement pstm = con.prepareStatement(
			"SELECT * FROM apuracao " + where);
			ResultSet rs = pstm.executeQuery();
			while(rs.next()) {
				Escola es = new Escola();
				es.setId(rs.getLong("id"));
				es.setNome_escola(rs.getString("nome_escola"));
				es.setJurado(rs.getString("nome_jurado"));
				es.setQuesito(rs.getString("nome_quesito"));
				es.setNota(rs.getFloat("nota_quesito"));
				lista.add(es);
			}
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lista;
}
}