package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Bus;

public class BusDao {

    public ArrayList<Bus> searchbus(String to,  String from) throws ClassNotFoundException{

    //SQL
    String SearchBus_SQL = "SELECT * FROM bus WHERE destination_from = ? AND destination_to = ?";
    
    //Creating a Bus
    ArrayList<Bus> buslist = new ArrayList<Bus>();

    try(//start of database connection
        Connection connection = DatabaseConnection.connectDB();
        PreparedStatement column = connection.prepareStatement(SearchBus_SQL);)
        {
        
    	column.setString(1, from);
    	column.setString(2, to);
    	
        //start query and retrieve data
        ResultSet busdetails = column.executeQuery();
        while(busdetails.next()){
        	
        	Bus  bus = new Bus();
            bus.setBusID(busdetails.getInt("busID"));
            bus.setRegistration_no(busdetails.getString("registration_no"));
            bus.setType(busdetails.getString("type"));
            bus.setFrom(busdetails.getString("destination_from"));
            bus.setTo(busdetails.getString("destination_to"));
            bus.setSeats(busdetails.getInt("seats"));
            bus.setPrice(busdetails.getDouble("bus_fare"));
            bus.setTime(busdetails.getString("dep_time"));
            buslist.add(bus);
        }

        
        connection.close();
        
        
        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 
        return buslist;
    }
    
    public ArrayList<String> getfromlist() throws ClassNotFoundException{

    //SQL
    String fromlist_SQL = "SELECT DISTINCT destination_from FROM bus";
    
    //Creating a Bus
    ArrayList<String> fromlist = new ArrayList<String>();

    try(//start of database connection
        Connection connection = DatabaseConnection.connectDB();
        PreparedStatement column = connection.prepareStatement(fromlist_SQL);)
        {
        
        //start query and retrieve data
        ResultSet busdetails = column.executeQuery();
        while(busdetails.next()){
        	
            fromlist.add(busdetails.getString("destination_from"));
        }

        
        connection.close();
        
        
        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 
        return fromlist;
    }
    
    
    public ArrayList<String> gettolist() throws ClassNotFoundException{

    //SQL
    String tolist_SQL = "SELECT DISTINCT destination_to FROM bus";
    
    //Creating a Bus
    ArrayList<String> tolist = new ArrayList<String>();

    try(//start of database connection
        Connection connection = DatabaseConnection.connectDB();
        PreparedStatement column = connection.prepareStatement(tolist_SQL);)
        {
        
        //start query and retrieve data
        ResultSet busdetails = column.executeQuery();
        while(busdetails.next()){
        	
            tolist.add(busdetails.getString("destination_to"));
        }

        
        connection.close();
        
        
        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 
        return tolist;
    }
    
}