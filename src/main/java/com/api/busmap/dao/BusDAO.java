package com.api.busmap.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.api.busmap.config.ApplicationContextConfig;
import com.api.busmap.idao.BusIDAO;
import com.api.busmap.model.Bus;

@Repository
public class BusDAO implements BusIDAO{

	public boolean insertBus(Bus b) {
		PreparedStatement smt = null;
		boolean n= false;
		try {
			Connection con = ApplicationContextConfig.getConnection();
			String sql = "INSERT INTO bus(Id, IdBusInfo, Latitude, Longitude) VALUES (?,?,?,?)";
			smt = con.prepareStatement(sql);
			smt.setString(1, b.getId());
			smt.setLong(2, b.getIdBusInfo());
			smt.setString(3, b.getLatitude());
			smt.setString(4, b.getLongitude());
			n = smt.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n;
	}

	public boolean updateBus(Bus b) {
		PreparedStatement smt = null;
		int n=0;
		try {
			Connection con = ApplicationContextConfig.getConnection();
			String sql = "UPDATE bus SET Latitude= ? ,Longitude= ? WHERE Id = ? AND IdBusInfo = ?";
			smt = con.prepareStatement(sql);
			smt.setString(1, b.getLatitude());
			smt.setString(2, b.getLongitude());
			smt.setString(3, b.getId());
			smt.setLong(4, b.getIdBusInfo());
			n = smt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return n>0;
	}

	public boolean findBus(String id, int IdBusInfo) {
		PreparedStatement smt = null;
		String idBus = null;
		try {
			Connection con = ApplicationContextConfig.getConnection();
			String sql = "SELECT b.Id FROM bus b WHERE b.Id = ? AND b.IdBusInfo = ?";
			smt = con.prepareStatement(sql);
			smt.setString(1, id);
			smt.setLong(2, IdBusInfo);
			ResultSet rs= smt.executeQuery();
			while(rs.next()) {
				idBus = rs.getString("Id");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(idBus.length() > 0) {
			return true;
		}
		return false;
	}

}
