
package model;

public class Reservation{

    private int reservationID;
    private String from;
    private String to;
    private String date;
    private int passengers;
    private int userid;
	private int BusID;
    private double amount;
    private String time;
  
    public Reservation(int reservationID, String from, String to, String date, int passengers, int userid) {
        this.reservationID = reservationID;
        this.from = from;
        this.to = to;
        this.date = date;
        this.passengers = passengers;
        this.userid = userid;
    }


    public Reservation() {
    }

    
    public int getReservationID() {
        return reservationID;
    }


    public void setReservationID(int reservationID) {
        this.reservationID = reservationID;
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

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getPassengers() {
        return passengers;
    }

    public void setPassengers(int passengers) {
        this.passengers = passengers;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getBusID() {
		return BusID;
	}


	public void setBusID(int busID) {
		BusID = busID;
	}


	public double getAmount() {
		return amount;
	}


	public void setAmount(double amount) {
		this.amount = amount;
	}

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

}