package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.iii.ee100.animour.common.entity.GenericEntity;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Entity
@Table(name = "ANIMAL")
public class Animal extends GenericEntity{

	@ManyToOne
	// @JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;

	@JsonIgnore
	@OneToMany(mappedBy = "animal", cascade = { CascadeType.ALL })
	private List<Adoption> adoptions;

	@Column(name = "STATUS") // for system
	private String status = "開放認養";

	@Column(name = "NAME")
	private String name;

	@Column(name = "SPECIE")
	private String specie;

	@Column(name = "COLOR")
	private String color;

	@Column(name = "GENDER")
	private String gender;

	// 張貼時間
	@Column(name = "FOUND")
	private java.sql.Date found;

	// 更新時間(系統時間)
	@Column(name = "UPLOAD") // for system
	private Timestamp upload;

	@ManyToOne
	private City city;

	@Column(name = "DISTRICT")
	private String district;

	@Column(name = "HOSPITALIZED", columnDefinition = "BOOLEAN default 'FALSE'")
	private Boolean hospitalized;

	@Column(name = "SIZE")
	private String size;
	
	@Column(name = "AGE")
	private String age;

	@Column(name = "CARD_NUM")
	private String cardNum;

	@Column(name = "NEUTER", columnDefinition = "BOOLEAN default 'FALSE'")
	private Boolean neuter;

	//飼主所開認養條件，包含於此
	@Column(name = "REMARK", columnDefinition = "TEXT")
	private String remark;

	@Column(name = "FILE_NAME")
	private String fileName;
	
	@Transient
	private MultipartFile avatar;
}
