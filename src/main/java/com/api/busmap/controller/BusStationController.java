package com.api.busmap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.api.busmap.idao.BusStationIDAO;
import com.api.busmap.model.BusStation;

@RestController
@RequestMapping("busstation")
@CrossOrigin(origins = "*")
public class BusStationController {
	@Autowired
	private BusStationIDAO busStationIDAO;
	
	@GetMapping(value="/getBusStationByIdBus/{idBus}",produces = "application/json;charset=UTF-8")
	public List<BusStation> getBusStationByIdBus(@PathVariable("idBus") int idBus) {
		return busStationIDAO.getBusStationByIdBus(idBus);
	}
	
	
	@GetMapping(value="/getBusStationByIdBus",produces = "application/json;charset=UTF-8")
	public List<String> getBusStationByIdBus() {
		return busStationIDAO.getAll();
	}

}
