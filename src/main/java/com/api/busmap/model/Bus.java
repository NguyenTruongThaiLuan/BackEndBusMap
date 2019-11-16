package com.api.busmap.model;

public class Bus {
	private String Id;
	private int IdBusInfo;
	private String Latitude;
	private String Longitude;

	public Bus(String id, int idBusInfo, String latitude, String longitude) {
		super();
		Id = id;
		IdBusInfo = idBusInfo;
		Latitude = latitude;
		Longitude = longitude;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public int getIdBusInfo() {
		return IdBusInfo;
	}

	public void setIdBusInfo(int idBusInfo) {
		IdBusInfo = idBusInfo;
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
	
}
