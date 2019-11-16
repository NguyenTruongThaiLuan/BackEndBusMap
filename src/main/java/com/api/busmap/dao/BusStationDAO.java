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
}
