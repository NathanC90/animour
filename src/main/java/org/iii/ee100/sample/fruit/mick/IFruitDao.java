package org.iii.ee100.sample.fruit.mick;

import java.sql.SQLException;
import java.util.List;

public interface IFruitDao {
	public void getConnection() throws SQLException;
	public void insert(Fruit fruit) throws SQLException;
	public void update(Fruit fruit) throws SQLException;
	public void delete(long id) throws SQLException;
	public List<Fruit> findAll() throws SQLException;
	public Fruit findById(long id) throws SQLException;
	public void closeConn() throws SQLException;
}
