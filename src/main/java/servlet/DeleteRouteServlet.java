package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.RouteDao;

/**
 * Servlet implementation class DeleteRouteServlet
 */
@WebServlet("/DeleteRouteServlet")
public class DeleteRouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RouteDao  routeDao;

	
	public void init(){
			routeDao = new RouteDao();
	}
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getting values given from the form tovariables
		
		int delete = Integer.parseInt(request.getParameter("delete"));

		boolean istrue;
		
		try {
			istrue = routeDao.deleteRoute(delete);
		
			
			if(istrue == true){
				
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Deleted Successfully');");  
				output.println("window.location.replace('route-list.jsp');");
				output.println("</script>");
			}
			else{
				
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Deleting Unsuccessful');");  
				output.println("window.location.replace('route-list.jsp');");
				output.println("</script>");
			}
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
