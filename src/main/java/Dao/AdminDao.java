package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.LoginAdmin;




public class AdminDao {

	public boolean validate(LoginAdmin admin) throws ClassNotFoundException {
		boolean status = false;

        try(
            Connection connection = DatabaseConnection.connectDB();
		    // Step 2:Create a statement using connection object
		    PreparedStatement preparedStatement = connection.prepareStatement("select * from admin where username = ? and password = ? ");){ 
			preparedStatement.setString(1, admin.getUsername());
			preparedStatement.setString(2, admin.getPassword());

			
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();
            admin.setUserid(rs.getInt("admin_ID"));

            connection.close();
            

		} catch (SQLException | ClassNotFoundException e) {
			// process sql exception
			e.printStackTrace();
		}
		return status;
	}

	
}
