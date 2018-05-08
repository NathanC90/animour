package org.iii.ee100.animour.halfway.service;

import java.util.ArrayList;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.dao.AdoptionDao;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class AdoptionService extends GenericService<Adoption>{

	@Autowired
	private AdoptionDao adoptionDao;
	
	public void insert(Adoption adoption) {
		adoptionDao.save(adoption);
	}

	public void update(Adoption adoption) {
		adoptionDao.save(adoption);
	}

	public void delete(Long id) {
		adoptionDao.delete(id);
	}

	public ArrayList<Adoption> getAll() {
		return Lists.newArrayList(adoptionDao.findAll());
	}

	public Adoption getOne(Long id) {
		return adoptionDao.findOne(id);
	}
	
	public List<Adoption> getCheckAdoption(Long ownerId) {
		List<Adoption> adoptions = new ArrayList<>();
		for (Adoption adoption: adoptionDao.findByOwnerIdOrderByRequestDateDesc(ownerId)) {
			if (adoption.getAcceptRequest() == null ) {
				adoptions.add(adoption);
			}
		}
		return adoptions;
	}
	
	// pageSize=一頁幾筆資料
		public Page<Adoption> getAdoptionPage(PageInfo pageinfo) {
			PageRequest request = new PageRequest(pageinfo.getPageNumber() - 1, pageinfo.getSize(), Sort.Direction.DESC, "requestDate");
			return adoptionDao.findAll(request);
		}
	
	
}
