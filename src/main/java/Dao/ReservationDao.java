package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import model.Reservation;

public class ReservationDao {

    public boolean addreservation(Reservation reservation) throws ClassNotFoundException{

        //SQL
        String Addreservation_SQL = "INSERT INTO reservation" + " ( user_ID, journey_date, destination_from, destination_to, passengers) VALUES " + " (?,?,?,?,?); ";

        //boolean variable
        boolean Status = false; 

        try(
            //start of database connection
            Connection connection = DatabaseConnection.connectDB();

            PreparedStatement column = connection.prepareStatement(Addreservation_SQL, Statement.RETURN_GENERATED_KEYS);){
            //adding data to columns
            column.setInt(1, reservation.getUserid());
            column.setString(2, reservation.getDate());
            column.setString(3, reservation.getFrom());
            column.setString(4, reservation.getTo());
            column.setInt(5, reservation.getPassengers());


            //rows affected
            int rows = column.executeUpdate(); 

            //updated no.of rows
            if (rows > 0){
                Status = true;

                ResultSet result = column.getGeneratedKeys();
                result.next();

                reservation.setReservationID(result.getInt(1));
            
            }
            //end db connection
            connection.close();

        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 
        return Status;
    }


    public boolean checkout(int resID, Reservation reservation) throws ClassNotFoundException{

        //SQL
        String Checkout_SQL = "UPDATE reservation SET amount = ?, busID = ?, payment_status = 'Paid' WHERE reservation_ID = ?";

        //boolean variable
        boolean Status = false; 

        try(
            //start of database connection
            Connection connection = DatabaseConnection.connectDB();

            PreparedStatement column = connection.prepareStatement(Checkout_SQL);){
            //adding data to columns
            column.setDouble(1, reservation.getAmount());
            column.setInt(2, reservation.getBusID());
            column.setInt(3, resID);

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
    

    public ArrayList<Reservation> getReservations(int userid) throws ClassNotFoundException{

        //SQL
        String Delete_Reservation_SQL = "SELECT * FROM reservation r, bus b WHERE r.busID = b.busID and user_ID = ? ORDER BY journey_date DESC";

        //Creating a Resrvation
        ArrayList<Reservation> reservationList = new ArrayList<Reservation>();

        try(
            //start of database connection
            Connection conn = DatabaseConnection.connectDB();

            PreparedStatement statement = conn.prepareStatement(Delete_Reservation_SQL);){

            statement.setInt(1, userid);
            //start query and retrieve data
            ResultSet reservationdetails = statement.executeQuery();
            while(reservationdetails.next()){
                Reservation reservation = new Reservation();
                reservation.setReservationID(reservationdetails.getInt("reservation_ID"));
                reservation.setFrom(reservationdetails.getString("destination_from"));
                reservation.setTo(reservationdetails.getString("destination_to"));
                reservation.setDate(reservationdetails.getString("journey_date"));
                reservation.setBusID(reservationdetails.getInt("busID"));
                reservation.setPassengers(reservationdetails.getInt("passengers"));
                reservation.setAmount(reservationdetails.getDouble("amount"));
                reservation.setTime(reservationdetails.getString("dep_time"));
                reservationList.add(reservation);
            }
            //end db connection
            conn.close();

        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 
        return reservationList;
    }

    //pending reeservations
    public ArrayList<Reservation> getNewReservations(int userid) throws ClassNotFoundException{

        //SQL
        String Delete_Reservation_SQL = "SELECT * FROM reservation r, bus b WHERE r.busID = b.busID and user_ID = ? and DATEDIFF(r.journey_date, CURDATE()) >= 1 ORDER BY r.journey_date ASC";

        //Creating a Resrvation
        ArrayList<Reservation> reservationList = new ArrayList<Reservation>();

        try(
            //start of database connection
            Connection conn = DatabaseConnection.connectDB();

            PreparedStatement statement = conn.prepareStatement(Delete_Reservation_SQL);){

            statement.setInt(1, userid);
            //start query and retrieve data
            ResultSet reservationdetails = statement.executeQuery();
            while(reservationdetails.next()){
                Reservation reservation = new Reservation();
                reservation.setReservationID(reservationdetails.getInt("reservation_ID"));
                reservation.setFrom(reservationdetails.getString("destination_from"));
                reservation.setTo(reservationdetails.getString("destination_to"));
                reservation.setDate(reservationdetails.getString("journey_date"));
                reservation.setBusID(reservationdetails.getInt("busID"));
                reservation.setPassengers(reservationdetails.getInt("passengers"));
                reservation.setAmount(reservationdetails.getDouble("amount"));
                reservation.setTime(reservationdetails.getString("dep_time"));
                reservationList.add(reservation);
            }
            //end db connection
            conn.close();

        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 
        return reservationList;
    }
    
    //delete reservation
    public boolean deleteReservation(int resID) throws ClassNotFoundException{

        //SQL
        String Delete_Reservation_SQL = "DELETE FROM reservation WHERE reservation_id = ?";

        //boolean variable
        boolean Status = false; 

        try(
            //start of database connection
            Connection conn = DatabaseConnection.connectDB();

            PreparedStatement statement = conn.prepareStatement(Delete_Reservation_SQL);){

            statement.setInt(1, resID);

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
}