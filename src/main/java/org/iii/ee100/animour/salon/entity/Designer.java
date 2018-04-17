package org.iii.ee100.animour.salon.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

@Entity
@Table(name="DESIGNER")
public class Designer extends GenericEntity{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@Column(name="DESIGNER")
	private String designer;
	
	@Column(name="FREETIME")
	private Timestamp freeTime;
	
	@Column(name="ONEFREE")
	private Integer oneFree;
	
	
	@Override
	public String toString() {
		return "Designer [id=" + id + ", designer=" + designer + ", freeTime=" + freeTime + ", oneFree=" + oneFree
				+ "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getDesigner() {
		return designer;
	}
	public void setDesigner(String designer) {
		this.designer = designer;
	}
	public Timestamp getFreeTime() {
		return freeTime;
	}
	public void setFreeTime(Timestamp freeTime) {
		this.freeTime = freeTime;
	}
	public Integer getOneFree() {
		return oneFree;
	}
	public void setOneFree(Integer oneFree) {
		this.oneFree = oneFree;
	}
	
	
}
