package com.sakthivel.stockmarket.service;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sakthivel.stockmarket.model.UserDetails;
import com.sakthivel.stockmarket.repositories.UserRepository;

@Service
public class UserStockDetailsImplementation implements UserStockDetails {
	
	
	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails userStocks(String id) {
		
		UserDetails userDetails = userRepository.findById(id).get();
		
		//calculating sum of values for the user
		userDetails.setTotalValue(userDetails.getStocks().stream().mapToDouble(o->o.getCurrentValue()).sum());
		userDetails.setTotalChange(userDetails.getStocks().stream().mapToDouble(o->o.getChange()).sum());
		
		
		//shuffling the list of stocks for each hit
		Collections.shuffle(userDetails.getStocks());
		
		return userDetails;
		
	}

}
