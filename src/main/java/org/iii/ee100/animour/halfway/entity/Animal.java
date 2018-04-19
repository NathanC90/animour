package org.iii.ee100.animour.halfway.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.member.entity.Member;

import lombok.Data;

@Data
@Entity
@Table(name = "ANIMAL")
public class Animal {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID") // for system
	private Long id;

	@ManyToOne
	// @JoinColumn(name = "MEMBER_ID",referencedColumnName="ID")
	private Member member;

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

	@Column(name = "FOUND")
	private java.sql.Date found;

	@Column(name = "UPLOAD") // for system
	private Timestamp upload;

	@ManyToOne
	private City city;

	@Column(name = "DISTRICT")
	private String district;

	@Column(name = "HOSPITALIZED", columnDefinition = "BOOLEAN default 'FALSE'")
	private Boolean hospitalized;

	@Column(name = "HOSPITAL_NAME")
	private String hospitalName;

	@Column(name = "CARD_NUM")
	private String cardNum;

	@Column(name = "NEUTER", columnDefinition = "BOOLEAN default 'FALSE'")
	private Boolean neuter;

	@Column(name = "REMARK", columnDefinition = "TEXT")
	private String remark;

	@Column(name = "FILE_NAME")
	private String fileName;
}
