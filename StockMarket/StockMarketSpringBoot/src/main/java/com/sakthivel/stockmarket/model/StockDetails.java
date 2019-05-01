package com.sakthivel.stockmarket.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="StockDetails")
public class StockDetails {
	@Id
	private String _id;
	private String name;
	private float cpnPercentage;
	private int currentCpn;
	private int totalCpn;
	private String currency;
	private float currentValue;
	private float yeildPercentage;
	private float change;
	private int basePoint;
	public StockDetails() {
	}
	public StockDetails(String _id, String name, float cpnPercentage, int currentCpn, int totalCpn, String currency,
			float currentValue, float yeildPercentage, float change, int basePoint) {
		this._id = _id;
		this.name = name;
		this.cpnPercentage = cpnPercentage;
		this.currentCpn = currentCpn;
		this.totalCpn = totalCpn;
		this.currency = currency;
		this.currentValue = currentValue;
		this.yeildPercentage = yeildPercentage;
		this.change = change;
		this.basePoint = basePoint;
	}
	public String get_id() {
		return _id;
	}
	public void set_id(String _id) {
		this._id = _id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getCpnPercentage() {
		return cpnPercentage;
	}
	public void setCpnPercentage(float cpnPercentage) {
		this.cpnPercentage = cpnPercentage;
	}
	public int getCurrentCpn() {
		return currentCpn;
	}
	public void setCurrentCpn(int currentCpn) {
		this.currentCpn = currentCpn;
	}
	public int getTotalCpn() {
		return totalCpn;
	}
	public void setTotalCpn(int totalCpn) {
		this.totalCpn = totalCpn;
	}
	public String getCurrency() {
		return currency;
	}
	public void setCurrency(String currency) {
		this.currency = currency;
	}
	public float getCurrentValue() {
		return currentValue;
	}
	public void setCurrentValue(float currentValue) {
		this.currentValue = currentValue;
	}
	public float getYeildPercentage() {
		return yeildPercentage;
	}
	public void setYeildPercentage(float yeildPercentage) {
		this.yeildPercentage = yeildPercentage;
	}
	public float getChange() {
		return change;
	}
	public void setChange(float change) {
		this.change = change;
	}
	public int getBasePoint() {
		return basePoint;
	}
	public void setBasePoint(int basePoint) {
		this.basePoint = basePoint;
	}
}
