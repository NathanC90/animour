package org.iii.ee100.animour.salon.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="DESIGNER")
public class Designer {
	
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
