package com.api.busmap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.api.busmap.idao.BusInfoIDAO;
import com.api.busmap.model.BusInfo;

@RestController
@RequestMapping("businfo")
@CrossOrigin(origins = "*")
public class BusInfoController {
	@Autowired
	private BusInfoIDAO busInfoIDAO;
	
	@GetMapping(value="/findById/{id}",produces = "application/json;charset=UTF-8")
	public BusInfo findByID(@PathVariable("id") int id) {
		return busInfoIDAO.getBusInfo(id);
	}
	
	@GetMapping(value="/getBusInfoAll",produces = "application/json;charset=UTF-8")
	public List<BusInfo> getAll() {
		return busInfoIDAO.getAll();
	}
}
