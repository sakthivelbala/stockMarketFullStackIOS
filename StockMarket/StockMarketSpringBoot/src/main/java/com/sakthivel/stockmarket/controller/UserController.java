package com.sakthivel.stockmarket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sakthivel.stockmarket.model.UserDetails;
import com.sakthivel.stockmarket.service.UserStockDetails;

@RestController
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserStockDetails userStockDetails;
	
	@GetMapping("/stock/{id}")
	public UserDetails home(@PathVariable String id){
		
		return userStockDetails.userStocks(id);
	}

}
