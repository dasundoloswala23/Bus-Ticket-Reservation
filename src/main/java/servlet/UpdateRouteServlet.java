package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Dao.RouteDao;
import model.Route;

/**
 * Servlet implementation class UpdateRouteServlet
 */

@WebServlet("/UpdateRouteServlet")
//configure servlet as multipart


public class UpdateRouteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private RouteDao updaterouteDao;

	
	public void init(){
		updaterouteDao = new RouteDao();
	}
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int routenumber = 	Integer.parseInt(request.getParameter("routenumber"));
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");	
		String traveltime = request.getParameter("traveltime");
	
	
		
		Route updateroute = new Route();
		updateroute.setSource(source);
		updateroute.setDestination(destination);
		updateroute.setTraveltime(traveltime);
		
		boolean ut;
		
		try {
			ut = updaterouteDao.updateRoute(routenumber, updateroute);
			
			
			if(ut == true){
				
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Updated Successfully');");  
				output.println("window.location.replace('route-list.jsp');");
				output.println("</script>");
			}
			else{
				
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Update Unsuccessful');");  
				output.println("window.location.replace('route-list.jsp');");
				output.println("</script>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	
	}

}
