package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.LoginMember;



public class LoginDao {

	public boolean validate(LoginMember loginmember) throws ClassNotFoundException {
		boolean status = false;

        try(
            Connection connection = DatabaseConnection.connectDB();
		    // Step 2:Create a statement using connection object
		    PreparedStatement preparedStatement = connection.prepareStatement("select * from member where username = ? and password = ? ");){ 
			preparedStatement.setString(1, loginmember.getUsername());
			preparedStatement.setString(2, loginmember.getPassword());

			
			ResultSet rs = preparedStatement.executeQuery();
			status = rs.next();
            loginmember.setUserid(rs.getInt("member_ID"));

            connection.close();
            

		} catch (SQLException | ClassNotFoundException e) {
			// process sql exception
			e.printStackTrace();
		}
		return status;
	}

	
}