package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ReservationDao;
import model.Reservation;


@WebServlet("/checkoutServlet")

public class checkoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	 private ReservationDao reservationDao;  
		
	 public void init() {
			reservationDao = new ReservationDao();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int BusID = Integer.parseInt(request.getParameter("bus"));
		double amount = Double.parseDouble(request.getParameter("amount"));
		int resID = Integer.parseInt(request.getParameter("resID"));
		
		Reservation reservation = new Reservation();
		
		reservation.setReservationID(resID);
		reservation.setBusID(BusID);
		reservation.setAmount(amount);
		
		boolean istrue;

		try {
			istrue = reservationDao.checkout(resID, reservation);

			if(istrue == true){

			PrintWriter output = response.getWriter(); 
			response.setContentType("text/html"); 
			output.println("<script type=\"text/javascript\">"); 
			output.println("alert('Reservation Successful');"); 
			output.println("window.location.replace('myreservation.jsp');");
			output.println("</script>");
			}
			else{

			PrintWriter output = response.getWriter(); 
			response.setContentType("text/html"); 
			output.println("<script type=\"text/javascript\">"); 
			output.println("alert('Reservation Unsuccessful');"); 
			output.println("window.location.replace('homepage.jsp');");
			output.println("</script>");
			}
		} catch (ClassNotFoundException e) {
		e.printStackTrace();
		}
		
		
	}

}
