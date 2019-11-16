package com.api.busmap.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.api.busmap.idao.BusIDAO;
import com.api.busmap.model.Bus;

@RestController
@RequestMapping("bus")
@CrossOrigin(origins = "*")
public class BusController {
	@Autowired
	private BusIDAO busIDAO;
	
	@PostMapping(value="/update",produces = "application/json;charset=UTF-8")
	public boolean create(@RequestBody Bus b) {
		if(busIDAO.findBus(b.getId(), b.getIdBusInfo())) {
			return busIDAO.updateBus(b);
		}
		return busIDAO.insertBus(b);
	}
}
