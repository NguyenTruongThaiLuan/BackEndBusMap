package com.api.busmap.idao;

import java.util.List;

import com.api.busmap.model.BusInfo;

public interface BusInfoIDAO{
	public BusInfo getBusInfo(int id);
	public List<BusInfo> getAll();
}
