package com.api.busmap.idao;

import java.util.List;

import com.api.busmap.model.BusStation;

public interface BusStationIDAO {
	public List<BusStation> getBusStationByIdBus(int idBus);
	public Boolean addBusStation(List<BusStation> busStation);
	public int getMaxIdBusStation();
	public List<String> getAll();
}
