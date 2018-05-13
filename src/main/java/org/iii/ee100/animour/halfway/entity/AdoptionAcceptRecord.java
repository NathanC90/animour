package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "ADOPTION_ACCEPT_RECORD")
public class AdoptionAcceptRecord extends GenericEntity {

	// 訂單成立時間(接受認養時間)
	@Column(name = "ACCEPT_DATE")
	private Timestamp acceptDate;

	// 訂單處理狀態
	@Column(name = "STATUS")
	private String status;

	// 飼主是否繳納押金
	@Column(name = "DEPOSIT_OWNER")
	private Boolean depositOwner;

	// 飼主繳納押金時間
	@Column(name = "DEPOSIT_OWNER_DATE")
	private Timestamp depositOwnerDate;

	// 會員是否繳納押金
	@Column(name = "DEPOSIT_MEMBER")
	private Boolean depositMember;

	// 會員繳納押金時間
	@Column(name = "DEPOSIT_MEMBER_DATE")
	private Timestamp depositMemberDate;

	// 認養程序是否成功
	@Column(name = "SUCCESS")
	private Boolean success;

	// 飼主對本次交易的回饋意見
	@Column(name = "FEEDBACK_OWNER")
	private String feedbackOwner;

	// 會員對本次交易的回饋意見
	@Column(name = "FEEDBACK_MEMBER")
	private String feedbackMember;

	// 交易完成後的認證照片URL
	@Column(name = "FEEDBACK_IMAGE")
	private String feedbackImages;

	@OneToOne
	private Adoption adoption;
}
