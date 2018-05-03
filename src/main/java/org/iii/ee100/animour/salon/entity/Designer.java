package org.iii.ee100.animour.salon.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="DESIGNER")
public class Designer extends GenericEntity{
	
	
	
	@Column(name="DESIGNER")
	private String designer;
	
	

	
	
		
	
}
