package org.iii.ee100.animour.salon.entity;

import java.sql.Timestamp;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="DESIGNER")
public class Designer {
	
	private Long id;
	private String designer;
	private Timestamp freeTime;
	
	
	@Override
	public String toString() {
		return "Designer [designer=" + designer + ", freeTime=" + freeTime + "]";
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
	
}
