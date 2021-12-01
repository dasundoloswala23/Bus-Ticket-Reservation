package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ReservationDao;
import model.Reservation;

/**
 * Servlet implementation class newReservationServlet
 */
@WebServlet("/newReservationServlet")
public class newReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ReservationDao reservationDao;  
	
	public void init() {
		reservationDao = new ReservationDao();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String date = request.getParameter("date");
		int passengers = Integer.parseInt( request.getParameter("passengers"));
		int userid = (int) request.getSession(false).getAttribute("userID");

		//create a reservation object with those values
		Reservation reservation = new Reservation();
		reservation.setFrom(from);
		reservation.setTo(to);
		reservation.setDate(date);
		reservation.setPassengers(passengers);
		reservation.setUserid(userid);

		boolean trueorfalse;

		try {
			trueorfalse = reservationDao.addreservation(reservation);

			if(trueorfalse==true){
				request.setAttribute("reservation", reservation);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/checkout.jsp");
				dispatcher.forward(request, response);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
