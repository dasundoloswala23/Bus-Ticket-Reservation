package model;

public class Route {
	

		private int routenumber;
		private String source;
		private String destination;
		private String traveltime;
		
		
		public Route() {
			super();
		}



		public Route(int routenumber, String source ,String destination , String traveltime ) {
			super();
			this.routenumber = routenumber;
			this.source = source;
			this.destination=destination;
			this.traveltime = traveltime;
			
		}
		


		public int getRoutenumber() {
			return routenumber;
		}
		public void setRoutenumber(int routenumber) {
			this.routenumber = routenumber;
		}
		public String getSource() {
			return source;
		}
		public void setSource(String source) {
			this.source = source;
			
		}
		
		public String getDestination() {
			return destination;
		}



		public void setDestination(String destination) {
			this.destination = destination;
		}
		public String getTraveltime() {
			return traveltime;
		}
		public void setTraveltime(String traveltime) {
			this.traveltime = traveltime;
		}



		
		
		
	}


