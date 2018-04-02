package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;import org.springframework.test.annotation.DirtiesContext.MethodMode;

@Entity
@Table(name="ADOPTION")
public class Adoption {
	
	@Id
	@Column(name="ID")
	@GeneratedValue(strategy= GenerationType.AUTO)
	private Long id;
	
	@Column(name="ORDER_DATE")
	private Timestamp orderDate;
	
	@Column(name="FEEDBACK")
	private String feedback;
	
	@Column(name="ADOPT_MEMBER_ID")
	private Long adoptMemberId;
	
	@Column(name="GIVE_MEMBER_ID")
	private Long giveMemeberId;
	
	@Column(name="ANIMAL_IDS")
	private List<Long> animalIds;
	
	@Override
	public String toString() {
		return "Adoption [id=" + id + ", orderDate=" + orderDate + ", feedback=" + feedback + ", adoptMemberId="
				+ adoptMemberId + ", giveMemeberId=" + giveMemeberId + ", animalIds=" + animalIds + "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Timestamp getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}
	public String getFeedback() {
		return feedback;
	}
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}
	public Long getAdoptMemberId() {
		return adoptMemberId;
	}
	public void setAdoptMemberId(Long adoptMemberId) {
		this.adoptMemberId = adoptMemberId;
	}
	public Long getGiveMemeberId() {
		return giveMemeberId;
	}
	public void setGiveMemeberId(Long giveMemeberId) {
		this.giveMemeberId = giveMemeberId;
	}
	public List<Long> getAnimalIds() {
		return animalIds;
	}
	public void setAnimalIds(List<Long> animalIds) {
		this.animalIds = animalIds;
	}
	
}
