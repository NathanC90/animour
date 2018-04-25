package org.iii.ee100.animour.news.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="Event")
@Data
public class Event {

	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name="SUBJECT_ID")
	private Long subject_id;
	@Column(name="SUBJECT")
	private String subject;
	@Column(name="TICKET_PRICE")
	private int ticket_price;
	@Column(name="TICKET_QUANTITY")
	private int ticket_quantity;
	

	@Override
	public String toString() {
		return "Event [subject_id=" + subject_id + ", subject=" + subject + ", ticket_price=" + ticket_price
				+ ", ticket_quantity=" + ticket_quantity + "]";
	}
	
	public Long getSubject_id() {
		return subject_id;
	}
	public void setSubject_id(Long subject_id) {
		this.subject_id = subject_id;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public int getTicket_price() {
		return ticket_price;
	}
	public void setTicket_price(int ticket_price) {
		this.ticket_price = ticket_price;
	}
	public int getTicket_quantity() {
		return ticket_quantity;
	}
	public void setTicket_quantity(int ticket_quantity) {
		this.ticket_quantity = ticket_quantity;
	}
		
}
