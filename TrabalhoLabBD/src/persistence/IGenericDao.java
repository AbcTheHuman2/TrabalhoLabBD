package persistence;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import model.Escola;

public interface IGenericDao {
	
	void adicionar(Escola es) throws ClassNotFoundException, SQLException;
	List<Escola> verTotal() throws ClassNotFoundException, SQLException;
	List<Escola> verQuesito(String where) throws ClassNotFoundException, SQLException;
}
