package Dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;

import model.Member;

public class MemberDao {
    public boolean addMember(Member member) throws ClassNotFoundException{

        //sql statement
        String AddMember_SQL = "INSERT INTO member" + " (username, mobile, dob, email, gender, password, profilepic) VALUES " + " (?,?,?,?,?,?,?); ";

        //declaring a boolean variable to return
        boolean Status = false; 

        try(
            //initialising the database connection
            Connection conn = DatabaseConnection.connectDB();
            PreparedStatement statement = conn.prepareStatement(AddMember_SQL);)
            {
            //setting the data to particular columns in the table
            statement.setString(1, member.getUsername());
            statement.setString(2, member.getPhone());
            statement.setString(3, member.getDob());
            statement.setString(4, member.getEmail());
            statement.setString(5, member.getGender());
            statement.setString(6, member.getPassword());
            statement.setBlob(7, member.getImage());

            //this will return how many rows have been affected
            int rows = statement.executeUpdate(); 

            //checking whether 1 or more rows has been updated or added to database
            if (rows > 0){
                Status = true;
            }
            
            //closing the database connection
            conn.close();

        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 
        return Status;
    }

    //get user details by user ID
    public Member getUserByID(int userID) throws ClassNotFoundException{
        //sql statement
        String SearchUser_SQL = "SELECT * FROM member WHERE member_ID = ?";

        //creating an member object
        Member member = new Member();

        try(
            //initialising the database connection
            Connection conn = DatabaseConnection.connectDB();
            PreparedStatement statement = conn.prepareStatement(SearchUser_SQL);)
            {   
            statement.setInt(1, userID);

            //executing the query and getting data
            ResultSet userdetails = statement.executeQuery(); 

            userdetails.next();
            member.setUserID(userdetails.getInt("member_ID"));
            member.setUsername(userdetails.getString("username"));
            member.setPhone(userdetails.getString("mobile"));
            member.setDob(userdetails.getString("dob"));
            member.setGender(userdetails.getString("gender"));
            member.setEmail(userdetails.getString("email"));
            member.setPassword(userdetails.getString("password"));

            //converting image to displayable format
            Blob image = userdetails.getBlob("profilepic");
            byte[] imagedata = null ; 
            imagedata = image.getBytes(1,(int)image.length());
            String imagedataBase64 = new String(Base64.getEncoder().encode(imagedata));
            member.setProfilepic(imagedataBase64);
            
            //closing the database connection
            conn.close();

        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 
 
        return member;
    }

    //update user
    public boolean updateUser(String userID, Member updatemember) throws ClassNotFoundException{
        //sql statement 1
        String UpdateUser_SQL = "UPDATE member as m SET m.username = ?, m.mobile = ?, m.email = ?, m.password = ?, m.profilepic = ? WHERE m.member_ID = ?";

        //declaring a boolean variable to return
        boolean Status = false; 

        try(
            //initialising the database connection
            Connection conn = DatabaseConnection.connectDB();
            PreparedStatement statement1 = conn.prepareStatement(UpdateUser_SQL);){  

                statement1.setString(1, updatemember.getUsername()); 
                statement1.setString(2, updatemember.getPhone()); 
                statement1.setString(3, updatemember.getEmail()); 
                statement1.setString(4, updatemember.getPassword()); 
                statement1.setBlob(5, updatemember.getImage()); 
                statement1.setString(6, userID);

                //this will return how many rows have been affected
                int rows = statement1.executeUpdate(); 
                
                //checking whether 1 or more rows has been updated or added to database
                if (rows > 0){
                    Status = true;
                }
                statement1.close();

            //closing the database connection
            conn.close();

        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 

        return Status;
    }


    //no of reservations done by user
    public int getNoOfReservations(int userID) throws ClassNotFoundException{
        //sql statement
        String No_OF_Reservation_SQL = "SELECT COUNT(*) as 'rcount' FROM reservation WHERE user_ID = ?";

        int count=0;

        try(
            //initialising the database connection
            Connection conn = DatabaseConnection.connectDB();
            PreparedStatement statement = conn.prepareStatement(No_OF_Reservation_SQL);)
            {   
            statement.setInt(1, userID);

            //executing the query and getting data
            ResultSet userdetails = statement.executeQuery(); 

            userdetails.next();
            count = userdetails.getInt("rcount");
            
            //closing the database connection
            conn.close();

        } catch (SQLException | ClassNotFoundException e){
            e.printStackTrace();
        } 

        return count;
    }
   
}
