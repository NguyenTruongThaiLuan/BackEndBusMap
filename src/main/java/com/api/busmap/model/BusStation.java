package com.api.busmap.model;

public class BusStation {
	private int Id;
	private String Name;
	private String Latitude;
	private String Longitude;
	private String Address;
	private String Street;

	public BusStation(int id, String name, String latitude, String longitude, String address, String street) {
		Id = id;
		Name = name;
		Latitude = latitude;
		Longitude = longitude;
		Address = address;
		Street = street;
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
	public String getLatitude() {
		return Latitude;
	}
	public void setLatitude(String latitude) {
		Latitude = latitude;
	}
	public String getLongitude() {
		return Longitude;
	}
	public void setLongitude(String longitude) {
		Longitude = longitude;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getStreet() {
		return Street;
	}
	public void setStreet(String street) {
		Street = street;
	}
	
}
