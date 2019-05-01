package com.sakthivel.stockmarket.model;

import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.DBRef;
import org.springframework.data.mongodb.core.mapping.Document;

import com.sakthivel.stockmarket.model.StockDetails;

@Document(collection="userDetails")
public class UserDetails {
	
	@Id
	private String _id;
	private Double totalValue;
	private String currency;
	private Double totalChange;
	@DBRef
	private List<StockDetails> stocks;
	public UserDetails() {
	}
	public UserDetails(String _id, Double totalValue, String currency, Double totalChange, List<StockDetails> stocks) {
		this._id = _id;
		this.totalValue = totalValue;
		this.currency = currency;
		this.totalChange = totalChange;
		this.stocks = stocks;
	}
	//getters and setters
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public Double getTotalValue() {
		return totalValue;
	}
	public void setTotalValue(Double totalValue) {
		this.totalValue = totalValue;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public Double getTotalChange() {
		return totalChange;
	}
	public void setTotalChange(Double totalChange) {
		this.totalChange = totalChange;
	}
	public List<StockDetails> getStocks() {
		return stocks;
	}
	public void setStocks(List<StockDetails> stocks) {
		this.stocks = stocks;
	}
}
