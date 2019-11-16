package com.api.busmap.idao;

import java.util.List;

import com.api.busmap.model.BusStation;

public interface BusStationIDAO {
	public List<BusStation> getBusStationByIdBus(int idBus);
}
