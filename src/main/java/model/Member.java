package model;

import java.io.InputStream;

//member class
public class Member {
	private int userID;
	private String username;
	private String dob;
	private String phone;
	private String email;
	private String gender;
	private String password;
	private InputStream image;
	private String profilepic;

	//constructor
	public Member(int userID, String username, String dob, String phone, String email, String gender, String password, InputStream image){
		this.userID = userID;
		this.username = username;
		this.dob = dob;
		this.phone = phone;
		this.email = email;
		this.gender = gender;
		this.password = password;
		this.image = image;
	}

	//default constructor
	public Member() {
	}

	//getter for getting the user ID
	public int getUserID() {
		return userID;
	}

	//setter for setting the user ID
	public void setUserID(int userID) {
		this.userID = userID;
	}

	//getter for getting the username
	public String getUsername() {
		return username;
	}

	//setter for setting the username
	public void setUsername(String username) {
		this.username = username;
	}

	//getter for getting the date of birth
	public String getDob() {
		return dob;
	}

	//setter for setting the date of birth
	public void setDob(String dob) {
		this.dob = dob;
	}

	//getter for getting the phone number
	public String getPhone() {
		return phone;
	}

	//setter for setting the phone number
	public void setPhone(String phone) {
		this.phone = phone;
	}

	//getter for getting the email
	public String getEmail() {
		return email;
	}

	//setter for setting the email
	public void setEmail(String email) {
		this.email = email;
	}

	//getter for getting the gender
	public String getGender() {
		return gender;
	}

	//setter for setting the gender
	public void setGender(String gender) {
		this.gender = gender;
	}

	//getter for getting the password
	public String getPassword() {
		return password;
	}

	//setter for setting the password
	public void setPassword(String password) {
		this.password = password;
	}

	//getter for getting the input stream of the image 
	public InputStream getImage() {
		return image;
	}

	//setter for setting the input stream of the image 
	public void setImage(InputStream image) {
		this.image = image;
	}

	//getter for getting the profilepic 
	public String getProfilepic() {
		return profilepic;
	}

	//setter for setting the profile
	public void setProfilepic(String profilepic) {
		this.profilepic = profilepic;
	}

}
