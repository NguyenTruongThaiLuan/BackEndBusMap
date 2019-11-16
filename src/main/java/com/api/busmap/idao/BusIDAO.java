package com.api.busmap.idao;

import com.api.busmap.model.Bus;

public interface BusIDAO {
	public boolean insertBus(Bus b);
	public boolean updateBus(Bus b);
	public boolean findBus(String id, int IdBusInfo);
}
