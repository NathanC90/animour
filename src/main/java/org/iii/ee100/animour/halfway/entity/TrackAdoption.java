package org.iii.ee100.animour.halfway.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="TRACK_ADOPTION")
public class TrackAdoption {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="ID")
	private Long id;
	
	@Column(name="ADOPTION_ID")
	private Long adoptionId;
	
	@Override
	public String toString() {
		return "TrackAdoption [id=" + id + ", adoptionId=" + adoptionId + "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getAdoptionId() {
		return adoptionId;
	}
	public void setAdoptionId(Long adoptionId) {
		this.adoptionId = adoptionId;
	}

}
