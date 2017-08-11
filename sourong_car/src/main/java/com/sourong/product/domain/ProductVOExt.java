package com.sourong.product.domain;

import com.sourong.configuration.domain.ConfigurationVO;

public class ProductVOExt {
	private Integer productid;
	private ConfigurationVO configuration;
	private String brandname;
	private String cartype;
	private String marketprice;
	private String sourongprice;
	private String title;

	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	public ConfigurationVO getConfiguration() {
		return configuration;
	}

	public void setConfiguration(ConfigurationVO configuration) {
		this.configuration = configuration;
	}

	public String getBrandname() {
		return brandname;
	}

	public void setBrandname(String brandname) {
		this.brandname = brandname;
	}

	public String getCartype() {
		return cartype;
	}

	public void setCartype(String cartype) {
		this.cartype = cartype;
	}

	public String getMarketprice() {
		return marketprice;
	}

	public void setMarketprice(String marketprice) {
		this.marketprice = marketprice;
	}

	public String getSourongprice() {
		return sourongprice;
	}

	public void setSourongprice(String sourongprice) {
		this.sourongprice = sourongprice;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	@Override
	public String toString() {
		return "ProducVOExt [productid=" + productid + ", configuration=" + configuration + ", brandname=" + brandname
				+ ", cartype=" + cartype + ", marketprice=" + marketprice + ", sourongprice=" + sourongprice
				+ ", title=" + title + "]";
	}
}
