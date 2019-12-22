package com.api.busmap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.api.busmap.config.ApplicationContextConfig;
import com.api.busmap.idao.BusStationIDAO;
import com.api.busmap.model.BusStation;

@Repository
public class BusStationDAO implements BusStationIDAO{

	public List<BusStation> getBusStationByIdBus(int idBus) {
		PreparedStatement smt = null;
		ArrayList<BusStation> list = new ArrayList<BusStation>() ;
		try {
			Connection con = ApplicationContextConfig.getConnection();
			String sql = "SELECT DISTINCT s.* FROM businfo i, busstation s, trip t WHERE t.IdBusStation = s.Id AND t.IdBus = ?";
			smt = con.prepareStatement(sql);
			smt.setLong(1, idBus);
			ResultSet rs= smt.executeQuery();
			while(rs.next()) {
				int id = rs.getInt("Id");
				String name = rs.getString("Name");
				String Latitude = rs.getString("Latitude");
				String Longitude = rs.getString("Longitude");
				String address = rs.getString("address");
				String street = rs.getString("street");
				
				BusStation busStation = new BusStation(id, name, Latitude, Longitude, address, street);
				list.add(busStation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	
	public Boolean addBusStation(List<BusStation> busStations) {
		int n = 0;
		for (BusStation busStation : busStations) {
			PreparedStatement smt = null;
			try {
				Connection con = ApplicationContextConfig.getConnection();
				String sql = "insert into busstation('Name', 'Latitude', 'Longitude', 'Address', 'Street') values (?,?,?,?,?)";
				smt = con.prepareStatement(sql);
				smt.setString(1, busStation.getName());
				smt.setString(2, busStation.getLatitude());
				smt.setString(3, busStation.getLongitude());
				smt.setString(4, busStation.getAddress());
				smt.setString(5, busStation.getStreet());
				n = smt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
		}
		return n>0;
	}

	public int getMaxIdBusStation() {
		PreparedStatement smt = null;
		int n = 1;
		try {
			Connection con = ApplicationContextConfig.getConnection();
			String sql = "SELECT MAX(Id) as max FROM busstation";
			smt = con.prepareStatement(sql);
			ResultSet rs= smt.executeQuery();
			while(rs.next()) {
				int maxId = rs.getInt("max");
				n= maxId;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}


	@Override
	public List<String> getAll() {
		PreparedStatement smt = null;
		ArrayList<String> list = new ArrayList<String>() ;
		try {
			Connection con = ApplicationContextConfig.getConnection();
			String sql = "SELECT DISTINCT s.name FROM busstation s";
			smt = con.prepareStatement(sql);
			ResultSet rs= smt.executeQuery();
			while(rs.next()) {
				String name = rs.getString("Name");

				list.add(name);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
