package com.api.busmap.model;

public class BusStation {
	private int Id;
	private String Name;
	private String NumberX;
	private String NumberY;
	private String Address;
	private String Street;
	
	public BusStation(int id, String name, String numberX, String numberY, String address, String street) {
		Id = id;
		Name = name;
		NumberX = numberX;
		NumberY = numberY;
		Address = address;
		Street = street;
	}

	public BusStation() {
		Id = 0;
		Name = "";
		NumberX = "";
		NumberY = "";
		Address = "";
		Street = "";
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

	public String getNumberX() {
		return NumberX;
	}

	public void setNumberX(String numberX) {
		NumberX = numberX;
	}
	public String getNumberY() {
		return NumberY;
	}

	public void setNumberY(String numberY) {
		NumberY = numberY;
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
