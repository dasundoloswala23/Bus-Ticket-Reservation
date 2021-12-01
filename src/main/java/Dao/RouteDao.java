package Dao;
import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.SQLException;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import model.Route;
	import java.util.ArrayList;

	
public class RouteDao {
	
	

	   

	    
	    public ArrayList<Route> getRoute() throws ClassNotFoundException{

	        //SQL
	        String GetRoute_SQL = "SELECT * FROM route ";

	   
	        ArrayList<Route> routeList = new ArrayList<Route>();

	        try(
	            //start of database connection
	            Connection conn = DatabaseConnection.connectDB();

	            PreparedStatement statement = conn.prepareStatement(GetRoute_SQL);){

	            //start query and retrieve data
	            ResultSet routedetails = statement.executeQuery();
	            while(routedetails.next()){
	                Route route = new Route();
	                route.setRoutenumber(routedetails.getInt("routenumber"));
	                route.setSource(routedetails.getString("source"));
	                route.setDestination(routedetails.getString("destination"));				        			                
	                route.setTraveltime(routedetails.getString("traveltime"));	           
	                routeList.add(route);
	            }
	            //end db connection
	            conn.close();

	        } catch (SQLException | ClassNotFoundException e){
	            e.printStackTrace();
	        } 
	        return routeList;
	    }

		public boolean addroute(Route route) throws ClassNotFoundException{
			

	 //SQL insert
	        String Addroute_SQL = "INSERT INTO route" + " ( routenumber,source, destination, traveltime) VALUES " + " (?,?,?,?); ";

	        //boolean variable
	        boolean Status = false; 

	        try(
	            //start of database connection
	            Connection connection = DatabaseConnection.connectDB();

	            PreparedStatement column = connection.prepareStatement(Addroute_SQL, Statement.RETURN_GENERATED_KEYS);){
	            //adding data to columns
	            column.setInt(1, route.getRoutenumber());
	            column.setString(2, route.getSource());
	            column.setString(3, route.getDestination());
	            column.setString(4, route.getTraveltime());
	           


	            //rows affected
	            int rows = column.executeUpdate(); 

	            //updated no.of rows
	            if (rows > 0){
	                Status = true;

	                ResultSet result = column.getGeneratedKeys();
	                result.next();

	                route.setRoutenumber(result.getInt(1));
	            
	            }
	            //end db connection
	            connection.close();

	        } catch (SQLException | ClassNotFoundException e){
	            e.printStackTrace();
	        } 
	        return Status;
	    }


	    public boolean updateRoute(int rn, Route route) throws ClassNotFoundException{

	//SQL update
	        String Checkout_SQL = "UPDATE route SET source = ?,destination = ?, traveltime = ? WHERE routenumber = ?";

	        //boolean variable
	        boolean Status = false; 

	        try(
	            //start of database connection
	            Connection connection = DatabaseConnection.connectDB();
	        		
	        		
	            PreparedStatement column = connection.prepareStatement(Checkout_SQL);){
	        	
	            //adding data to columns
	        	column.setString(1, route.getSource());
	            column.setString(2, route.getDestination());
	            column.setString(3, route.getTraveltime());
	            column.setInt(4, rn);
	          

	            //rows affected
	            int rows = column.executeUpdate(); 

	            //updated no.of rows
	            if (rows > 0){
	                Status = true;    
	            }
	            //end db connection
	            connection.close();

	        } catch (SQLException | ClassNotFoundException e){
	            e.printStackTrace();
	        } 
	        return Status;
	    
	    }
	      
    
	    
	 //delete route
	    public boolean deleteRoute(int rn) throws ClassNotFoundException{

	        //SQL
	        String Delete_Route_SQL = "DELETE FROM route WHERE routenumber = ?";

	        //boolean variable
	        boolean Status = false; 

	        try(
	            //start of database connection
	            Connection conn = DatabaseConnection.connectDB();

	            PreparedStatement statement = conn.prepareStatement(Delete_Route_SQL);){

	            statement.setInt(1, rn);

	            //rows affected
	            int rows = statement.executeUpdate(); 

	            //deleted no.of rows
	            if (rows > 0){
	                Status = true;    
	            }
	            //end db connection
	            conn.close();

	        } catch (SQLException | ClassNotFoundException e){
	            e.printStackTrace();
	        } 
	        return Status;
	    }
	    
	    public Route GetRouteById(int routeId) throws ClassNotFoundException{

	        //SQL
	        String GetRouteById_SQL = "SELECT * FROM route WHERE routenumber=? ";

	       
	        Route route = new Route();

	        try(
	            //start of database connection
	            Connection conn = DatabaseConnection.connectDB();

	            PreparedStatement statement = conn.prepareStatement(GetRouteById_SQL);){
	        	statement.setInt(1, routeId);
	            //start query and retrieve data
	            ResultSet routedetails = statement.executeQuery();
	                routedetails.next();
	                
	                route.setRoutenumber(routedetails.getInt("routenumber"));
	                route.setSource(routedetails.getString("source"));
	                route.setDestination(routedetails.getString("destination"));				        			                
	                route.setTraveltime(routedetails.getString("traveltime"));	           
	               
	            
	            //end db connection
	            conn.close();

	        } catch (SQLException | ClassNotFoundException e){
	            e.printStackTrace();
	        } 
	        return route;
	    }

	}


	  

