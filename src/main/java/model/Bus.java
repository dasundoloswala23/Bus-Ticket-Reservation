package model;

public class Bus{

	    private int busID;
	    private String registration_no;
	    private String type;
	    private String from;
	    private String to;
	    private int seats;
	    private double price;
	    private String time;

	public Bus(int busID, String registration_no, String type, String from, String to, int seats, double price, String time) {
		super();
		this.busID = busID;
		this.registration_no = registration_no;
		this.type = type;
		this.from = from;
		this.to = to;
		this.seats = seats;
		this.price = price;
		this.time = time;
	}

	public Bus() {
	}

	public int getBusID() {
		return busID;
	}

	public void setBusID(int busID) {
		this.busID = busID;
	}

	public String getRegistration_no() {
		return registration_no;
	}

	public void setRegistration_no(String registration_no) {
		this.registration_no = registration_no;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFrom() {
		return from;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}
	
	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
    

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

    
    
}    
  
    