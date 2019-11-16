package com.api.busmap.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.api.busmap.config.ApplicationContextConfig;
import com.api.busmap.idao.BusInfoIDAO;
import com.api.busmap.model.BusInfo;

@Repository
public class BusInfoDAO implements BusInfoIDAO{
	
	public BusInfo getBusInfo(int id) {
		PreparedStatement smt = null;
		BusInfo busInfo = null;
		try {
			Connection con = ApplicationContextConfig.getConnection();
			String sql = "Select * from businfo b where b.Id = ?";
			smt = con.prepareStatement(sql);
			smt.setLong(1, id);
			ResultSet rs= smt.executeQuery();
			while(rs.next()) {
				int idBus = rs.getInt("Id");
				String name = rs.getString("Name");
				String description = rs.getString("Description");
				String amount = rs.getString("Amount");
				String amountForStudent = rs.getString("AmountForStudent");
				String additionalInfo = rs.getString("AdditionalInfo");
				String time = rs.getString("Time");
				String routeLength = rs.getString("RouteLength");
				String runTime = rs.getString("RunTime");
				String tripDistance = rs.getString("TripDistance");
				String numberOfTrips = rs.getString("NumberOfTrips");
				
				busInfo = new BusInfo(idBus, name, description, amount, amountForStudent, additionalInfo, time, routeLength, runTime, tripDistance, numberOfTrips);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return busInfo;
	}

}
