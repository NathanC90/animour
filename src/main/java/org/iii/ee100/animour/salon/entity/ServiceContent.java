package org.iii.ee100.animour.salon.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

@Entity
@Table(name="SERVICECONTENT")
public class ServiceContent extends GenericEntity{

	@Column(name ="CONTENT")
	String Content;
	@Column(name ="TIME")
	Integer time;
	@Column(name ="PRICE")
	Integer price;
	
	
	

	
	@Override
	public String toString() {
		return "ServiceContent [Content=" + Content + ", time=" + time + ", price=" + price + ", getId()=" + getId()
				+ "]";
	}
	@Override
	public Long getId() {
		// TODO Auto-generated method stub
		return super.getId();
	}
	@Override
	public void setId(Long id) {
		// TODO Auto-generated method stub
		super.setId(id);
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public Integer getTime() {
		return time;
	}
	public void setTime(Integer time) {
		this.time = time;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	
	
}