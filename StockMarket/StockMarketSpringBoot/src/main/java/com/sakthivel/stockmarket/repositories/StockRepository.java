package com.sakthivel.stockmarket.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.sakthivel.stockmarket.model.StockDetails;

public interface StockRepository extends MongoRepository<StockDetails,String> {

}
