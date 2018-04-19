
package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.member.entity.Member;

@Entity
@Table(name = "ADOPTION")
public class Adoption {

	@Id
	@Column(name = "ID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	// 提出認養的時間
	@Column(name = "REQUEST_DATE")
	private Timestamp requestDate;

	// 提出認養時的意見
	@Column(name = "REQUEST_COMMENT", columnDefinition = "TEXT")
	private String requestComment;

	// 紀錄主人是否接受認養要求
	@Column(name = "ACCEPT_REQUEST")
	private Boolean acceptRequest;

	// 訂單成立時間
	@Column(name = "ORDER_DATE")
	private Timestamp orderDate;

	// 訂單處理狀態
	@Column(name = "STATUS")
	private String status;

	@Column(name = "FEEDBACK")
	private String feedback;

	// 提出認養的人
	@OneToOne
	// @JoinColumn(name = "user_id", nullable = false)
	private Member member;

	// 想要認養的動物
	@ManyToOne
	private Animal animal;

	// 動物的主人的 ID
	@Column(name="OWNER_ID")
	private Long ownerId;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Timestamp getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(Timestamp requestDate) {
		this.requestDate = requestDate;
	}

	public String getRequestComment() {
		return requestComment;
	}

	public void setRequestComment(String requestComment) {
		this.requestComment = requestComment;
	}

	public Boolean getAcceptRequest() {
		return acceptRequest;
	}

	public void setAcceptRequest(Boolean acceptRequest) {
		this.acceptRequest = acceptRequest;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

	public Long getOwnerId() {
		return ownerId;
	}

	public void setOwnerId(Long ownerId) {
		this.ownerId = ownerId;
	}

}
