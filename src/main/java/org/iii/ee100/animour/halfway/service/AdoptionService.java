package org.iii.ee100.animour.halfway.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.dao.AdoptionDao;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdoptionService extends GenericService<Adoption>{

	@Autowired
	private AdoptionDao adoptionDao;
	
	
	public List<Adoption> getCheckAdoption(Long ownerId) {
		List<Adoption> adoptions = new ArrayList<>();
		for (Adoption adoption: adoptionDao.findByOwnerIdOrderByRequestDateDesc(ownerId)) {
			if (adoption.getAcceptRequest() == null ) {
				adoptions.add(adoption);
			}
		}
		return adoptions;
	}
	
	
}
