package tw.idv.hunterchen.customer.model;

import java.sql.SQLException;
import java.util.List;

public interface ICustomerDAO {
	public void getConnection() throws SQLException;
	public void closeConnection() throws SQLException;

	public List<CustomerPOJO> getAll()throws SQLException;
	
	public CustomerPOJO findByPrimaryKey(Long cstId) throws SQLException;
	public void insert(CustomerPOJO cstPojo) throws SQLException;
	public void update(CustomerPOJO cstPojo) throws SQLException;
	public void delete(Long cstId) throws SQLException;
}
