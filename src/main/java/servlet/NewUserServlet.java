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
 * Servlet implementation class NewUserServlet
 */
@WebServlet("/NewUserServlet")
//configure servlet as multipart
@MultipartConfig
public class NewUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//create a variable from MemberDao class 
	private MemberDao memberDao;

	//initialising the memberDao as a object
	public void init(){
		memberDao = new MemberDao();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//getting values given from the form to these variables
		String username = request.getParameter("name");
		String dob = request.getParameter("dob");
		String phone = request.getParameter("mobile");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String password = request.getParameter("password");
		Part image = request.getPart("image");

		//input stream of the image
		InputStream inputstream = null;

		if(image != null){
			//gets the input stream of the iamge file
			inputstream = image.getInputStream(); 
		}
		

		//create a member object with those values
		Member member = new Member();
		member.setUsername(username);
		member.setDob(dob);
		member.setPhone(phone);
		member.setEmail(email);
		member.setGender(gender);
		member.setPassword(password);
		member.setImage(inputstream);

		boolean istrue;
		//sending the member object to addMember method in memberDao class
		try {
			istrue = memberDao.addMember(member);
			//checking whether the registration has updated in the database
			if(istrue == true){
				//if successfully updated display an alert an redirect to login page
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Registration Successful');");  
				output.println("window.location.replace('login.jsp');");
				output.println("</script>");
			}
			else{
				//if updating is unsuccessful display an alert an redirect to sign up page again
				PrintWriter output = response.getWriter();  
				response.setContentType("text/html");  
				output.println("<script type=\"text/javascript\">"); 
				output.println("alert('Invalid Username. Registration Unsuccessful');");  
				output.println("window.location.replace('main/webapp/signup.jsp');");
				output.println("</script>");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	
	}

}
