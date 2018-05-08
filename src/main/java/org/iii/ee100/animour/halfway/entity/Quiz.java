package org.iii.ee100.animour.halfway.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="QUIZ")
public class Quiz extends GenericEntity{

	@Column(name="QUESTION")
	private String question;
	
	@NotNull
	@Column(name="YOUR_ANSWER")
	private Boolean youranswer;
	
	@Column(name="CORRECT")
	private Boolean correct;
	
}
