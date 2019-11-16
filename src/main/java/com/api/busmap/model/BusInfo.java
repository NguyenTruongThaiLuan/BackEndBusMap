package com.api.busmap.model;

public class BusInfo {
	private int Id;
	private String Name;
	private String Description;
	private String Amount;
	private String AmountForStudent;
	private String AdditionalInfo;
	private String Time;
	private String RouteLength;
	private String RunTime;
	private String TripDistance;
	private String NumberOfTrips;


	public BusInfo(int id, String name, String description, String amount, String amountForStudent,
			String additionalInfo, String time, String routeLength, String runTime, String tripDistance,
			String numberOfTrips) {
		Id = id;
		Name = name;
		Description = description;
		Amount = amount;
		AmountForStudent = amountForStudent;
		AdditionalInfo = additionalInfo;
		Time = time;
		RouteLength = routeLength;
		RunTime = runTime;
		TripDistance = tripDistance;
		NumberOfTrips = numberOfTrips;
	}

	public BusInfo() {
		Id = 0;
		Name = "";
		Description = "";
		Amount = "";
		AmountForStudent = "";
		AdditionalInfo = "";
		Time = "";
		RouteLength = "";
		RunTime = "";
		TripDistance = "";
		NumberOfTrips = "";
	}


	public int getId() {
		return Id;
	}


	public void setId(int id) {
		Id = id;
	}


	public String getName() {
		return Name;
	}


	public void setName(String name) {
		Name = name;
	}


	public String getDescription() {
		return Description;
	}


	public void setDescription(String description) {
		Description = description;
	}


	public String getAmount() {
		return Amount;
	}


	public void setAmount(String amount) {
		Amount = amount;
	}


	public String getAmountForStudent() {
		return AmountForStudent;
	}


	public void setAmountForStudent(String amountForStudent) {
		AmountForStudent = amountForStudent;
	}

	public String getAdditionalInfo() {
		return AdditionalInfo;
	}


	public void setAdditionalInfo(String additionalInfo) {
		AdditionalInfo = additionalInfo;
	}


	public String getTime() {
		return Time;
	}


	public void setTime(String time) {
		Time = time;
	}

	public String getRouteLength() {
		return RouteLength;
	}


	public void setRouteLength(String routeLength) {
		RouteLength = routeLength;
	}


	public String getRunTime() {
		return RunTime;
	}


	public void setRunTime(String runTime) {
		RunTime = runTime;
	}


	public String getTripDistance() {
		return TripDistance;
	}


	public void setTripDistance(String tripDistance) {
		TripDistance = tripDistance;
	}


	public String getNumberOfTrips() {
		return NumberOfTrips;
	}


	public void setNumberOfTrips(String numberOfTrips) {
		NumberOfTrips = numberOfTrips;
	}
}
