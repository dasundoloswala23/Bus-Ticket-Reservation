package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ReservationDao;

/**
 * Servlet implementation class DeleteReservationServlet
 */
@WebServlet("/DeleteReservationServlet")
public class DeleteReservationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ReservationDao reservationDao;

	//initialising the memberDao as a object
	public void init(){
		reservationDao = new ReservationDao();
	}
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getting values given from the form tovariables
		int delete = Integer.parseInt(request.getParameter("delete"));

		boolean istrue;
		//sending the reservation id of reservation that needs to be delete to deleteReservation method in reservation dao class
		try {
			istrue = reservationDao.deleteReservation(delete);
			//checking whether the reservation has deleted
			if(istrue == true){
				//if successfully deleted display an alert
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Deleted Successfully');");  
				output.println("window.location.replace('user.jsp');");
				output.println("</script>");
			}
			else{
				//if deleting is unsuccessful display an alert
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Deleting Unsuccessful');");  
				output.println("window.location.replace('user.jsp');");
				output.println("</script>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
