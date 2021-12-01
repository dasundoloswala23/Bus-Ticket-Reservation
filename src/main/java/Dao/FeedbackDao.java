package Dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

import model.Feedback;
public class FeedbackDao {
	

	    public boolean submitFeedback(Feedback feedback) throws ClassNotFoundException {
	        String INSERT_FEEDBACK_SQL = "INSERT INTO feedback" +  "  ( userid,name,email,message) VALUES " + " (?, ?, ?, ?);";

	       
	        boolean tof=false;
	        

	        try (Connection connection = DatabaseConnection.connectDB();

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_FEEDBACK_SQL)) {
	           
	            preparedStatement.setInt(1, feedback.getUserid());
	            preparedStatement.setString(2, feedback.getUsername());
	            preparedStatement.setString(3, feedback.getEmail());
	            preparedStatement.setString(4, feedback.getMessage());
	          

	            
	            // Step 3: Execute the query or update query
	            int result = preparedStatement.executeUpdate();
	             if(result>0) {
	            	 tof = true;
	             }
	        } catch (SQLException e) {
	            // process sql exception
	            e.printStackTrace();
	        }
	        return tof;
	    }

	    
	}


