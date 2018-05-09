package org.iii.ee100.animour.halfway.dao;

import java.util.Date;
import java.util.List;

import org.iii.ee100.animour.common.dao.GenericDao;
import org.iii.ee100.animour.halfway.entity.Adoption;

public interface AdoptionDao extends GenericDao<Adoption>{

	List<Adoption> findByOwnerIdOrderByRequestDateDesc(Long ownerId);
	
	List<Adoption> findByAcceptDateAfter (Date acceptDate);

}
