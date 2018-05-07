package org.iii.ee100.animour.salon.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name="DESIGNER")
public class Designer extends GenericEntity{
	
	
//	@OneToMany(mappedBy = "designer", cascade = { CascadeType.ALL })
//	private List<ServiceContent> serviceContent;

	
	@Column(name="DESIGNER")
	private String designer;
	
	

	
	
		
	
}
