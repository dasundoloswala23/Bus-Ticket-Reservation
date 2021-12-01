package servlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import Dao.MemberDao;
import model.Member;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/UpdateUserServlet")
//configure servlet as multipart
@MultipartConfig
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//create a variable from MemberDao class 
	private MemberDao updatememberDao;

	//initialising the memberDao as a object
	public void init(){
		updatememberDao = new MemberDao();
	}
       
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//getting values given from the form to these variables
		String userID = request.getParameter("userid");
		String username = request.getParameter("name");
		String phone = request.getParameter("mobile");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Part image = request.getPart("photo");

		//input stream of the image
		InputStream inputstream = null;

		if(image != null){
			//gets the input stream of the image file
			inputstream = image.getInputStream();
		}
	
		//create a member object with those values
		Member updatemember = new Member();
		updatemember.setUsername(username);
		updatemember.setPhone(phone);
		updatemember.setEmail(email);
		updatemember.setPassword(password);
		updatemember.setImage(inputstream);

		boolean istrue;
		//sending the member object to updateUser method in memberDao class
		try {
			istrue = updatememberDao.updateUser(userID, updatemember);
			//checking whether the changes has updated in the database
			if(istrue == true){
				//if successfully updated display an alert an redirect to user profile page
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Updated Successfully');");  
				output.println("window.location.replace('user.jsp');");
				output.println("</script>");
			}
			else{
				//if updating is unsuccessful display an alert an redirect to edit profile page again
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Update Unsuccessful');");  
				output.println("window.location.replace('editprofile.jsp');");
				output.println("</script>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	
	}

}
