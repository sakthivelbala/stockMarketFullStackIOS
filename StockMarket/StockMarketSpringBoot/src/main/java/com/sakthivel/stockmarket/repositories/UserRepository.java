package com.sakthivel.stockmarket.repositories;


import org.springframework.data.mongodb.repository.MongoRepository;

import com.sakthivel.stockmarket.model.UserDetails;

public interface UserRepository extends MongoRepository<UserDetails,String> {

}
