package org.iii.ee100.animour.salon.entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import org.iii.ee100.animour.common.entity.GenericEntity;

import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity
@Table(name="RESERVATIONDATE")
public class ReservationDate extends GenericEntity{
	
	@Column(name="RESERVATION_DATE")
	private Date reservationDate;

	@Override
	public String toString() {
		return "ReservationDate [reservationDate=" + reservationDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((reservationDate == null) ? 0 : reservationDate.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		ReservationDate other = (ReservationDate) obj;
		if (reservationDate == null) {
			if (other.reservationDate != null)
				return false;
		} else if (!reservationDate.equals(other.reservationDate))
			return false;
		return true;
	}

}
