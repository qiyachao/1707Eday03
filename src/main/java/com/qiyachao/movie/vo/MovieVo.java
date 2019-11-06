package com.qiyachao.movie.vo;

import com.qiyachao.movie.domain.Movie;

public class MovieVo extends Movie{
	private Integer abcd;
	private String startDate;
	private String endDate;
	private String startuptime;
	private String enduptime;
	private Integer startprice;
	private Integer endprice;
	private Integer startlongtime;
	private Integer endlongtime;
	
	private String orderFiled;
	private String orderMethod;
	public MovieVo() {
		super();
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getStartuptime() {
		return startuptime;
	}
	public void setStartuptime(String startuptime) {
		this.startuptime = startuptime;
	}
	public String getEnduptime() {
		return enduptime;
	}
	public void setEnduptime(String enduptime) {
		this.enduptime = enduptime;
	}
	public Integer getStartprice() {
		return startprice;
	}
	public void setStartprice(Integer startprice) {
		this.startprice = startprice;
	}
	public Integer getEndprice() {
		return endprice;
	}
	public void setEndprice(Integer endprice) {
		this.endprice = endprice;
	}
	public Integer getStartlongtime() {
		return startlongtime;
	}
	public void setStartlongtime(Integer startlongtime) {
		this.startlongtime = startlongtime;
	}
	public Integer getEndlongtime() {
		return endlongtime;
	}
	public void setEndlongtime(Integer endlongtime) {
		this.endlongtime = endlongtime;
	}
	public String getOrderFiled() {
		return orderFiled;
	}
	public void setOrderFiled(String orderFiled) {
		this.orderFiled = orderFiled;
	}
	public String getOrderMethod() {
		return orderMethod;
	}
	public void setOrderMethod(String orderMethod) {
		this.orderMethod = orderMethod;
	}
	
}
