package org.iii.ee100.animour.salon.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

@Entity
@Table(name="RESERVATIONDATE")
@Data
public class ReservationDate extends GenericEntity{
	
	@OneToMany(mappedBy = "reservationdate", cascade = { CascadeType.ALL })
	private List<ServiceContent> serviceContent;
	
	@Column(name="DATE")
	private Timestamp date;
	

}
