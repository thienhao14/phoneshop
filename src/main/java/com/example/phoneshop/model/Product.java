package com.example.phoneshop.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column
	private Integer id;
	@Column(name="categoryid")
	private Integer categoryId;
	@Column(name="brandid")
	private Integer brandId;
	@Column
	private String name;
	@Column
	private String code;
	@Column
	private Double price;
	@Column
	private Double discount;
	@Column(name="unitbrief")
	private String unitBrief;
	@Column
	private String description;
	@Column(name="imgmain")
	private String imgMain;
	@Column(name="imglist")
	private String imgList;
	@Column
	private int quantity;
	@Column(name="activeflag")
	private int activeFlag;
	@Column(name="createdate")
	private Date createDate;
	@Column(name="updatedate")
	private Date updateDate;
	public Product() {
		super();
	}
	public Product(Integer id, Integer categoryId, Integer brandId, String name, String code, Double price,
			Double discount, String unitBrief, String description, String imgMain, String imgList, int quantity,
			int activeFlag, Date createDate, Date updateDate) {
		super();
		this.id = id;
		this.categoryId = categoryId;
		this.brandId = brandId;
		this.name = name;
		this.code = code;
		this.price = price;
		this.discount = discount;
		this.unitBrief = unitBrief;
		this.description = description;
		this.imgMain = imgMain;
		this.imgList = imgList;
		this.quantity = quantity;
		this.activeFlag = activeFlag;
		this.createDate = createDate;
		this.updateDate = updateDate;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public Integer getBrandId() {
		return brandId;
	}
	public void setBrandId(Integer brandId) {
		this.brandId = brandId;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getDiscount() {
		return discount;
	}
	public void setDiscount(Double discount) {
		this.discount = discount;
	}
	public String getUnitBrief() {
		return unitBrief;
	}
	public void setUnitBrief(String unitBrief) {
		this.unitBrief = unitBrief;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImgMain() {
		return imgMain;
	}
	public void setImgMain(String imgMain) {
		this.imgMain = imgMain;
	}
	public String getImgList() {
		return imgList;
	}
	public void setImgList(String imgList) {
		this.imgList = imgList;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getActiveFlag() {
		return activeFlag;
	}
	public void setActiveFlag(int activeFlag) {
		this.activeFlag = activeFlag;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	public Date getUpdateDate() {
		return updateDate;
	}
	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", categoryId=" + categoryId + ", brandId=" + brandId + ", name=" + name
				+ ", code=" + code + ", price=" + price + ", discount=" + discount + ", unitBrief=" + unitBrief
				+ ", description=" + description + ", imgMain=" + imgMain + ", imgList=" + imgList + ", quantity="
				+ quantity + ", activeFlag=" + activeFlag + ", createDate=" + createDate + ", updateDate=" + updateDate
				+ "]";
	}
	
	
	
}
