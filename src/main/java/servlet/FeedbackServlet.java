package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.FeedbackDao;
import model.Feedback;

/**
 * Servlet implementation class ContactusServlet
 */
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
      private FeedbackDao feedbackDao ;
      public void init() {
    	  feedbackDao = new FeedbackDao();
      }
   
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userid = Integer.parseInt(request.getParameter("userid")); 
		String name = request.getParameter("name");
		String email = request.getParameter("email");		
		String message = request.getParameter("feedback");
		
		Feedback feedback = new Feedback();
		feedback.setUserid(userid);
		feedback.setUsername(name);
		feedback.setEmail(email);
		feedback.setMessage(message);
		
		 boolean tof = false;
		try {
			tof=feedbackDao.submitFeedback(feedback);
			if (tof==true)
			{
				PrintWriter out = response.getWriter(); 
				response.setContentType("text/html"); 
				out.println("<script type=\"text/javascript\">"); 
				out.println("alert('Feedback sent Successfully');"); 
				out.println("window.location.replace('feedback.jsp');");
				out.println("</script>");	
			}
			else {
				PrintWriter out = response.getWriter(); 
				response.setContentType("text/html"); 
				out.println("<script type=\"text/javascript\">"); 
				out.println("alert('Feedback failed to send');"); 
				out.println("window.location.replace('feedback.jsp');");
				out.println("</script>");	
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
