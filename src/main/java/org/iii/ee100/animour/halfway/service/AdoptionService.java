package org.iii.ee100.animour.halfway.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.dao.AdoptionDao;
import org.iii.ee100.animour.halfway.entity.Adoption;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class AdoptionService extends GenericService<Adoption> {

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
		for (Adoption adoption : adoptionDao.findByOwnerIdOrderByRequestDateDesc(ownerId)) {
			if (adoption.getAcceptRequest() == null) {
				adoptions.add(adoption);
			}
		}
		return adoptions;
	}

	// pageSize=一頁幾筆資料
	public Page<Adoption> getAdoptionPage(PageInfo pageinfo) {
		PageRequest request = new PageRequest(pageinfo.getPageNumber() - 1, pageinfo.getSize(), Sort.Direction.DESC,
				"requestDate");
		return adoptionDao.findAll(request);
	}

	// 檢核認養數量是否已達上限
	public Boolean checkAdoptionLimit(Long id) {
		//List<Adoption> count = adoptionDao.findByMemberIdOrderByAcceptDateDesc(id);
		//List<Adoption> count = adoptionDao.findByMemberId(id);
		List<Adoption> count = adoptionDao.findTop2ByMemberIdOrderByAcceptDateDesc(id);
		System.out.println("++++++++++++++++++"+count.size()+"++++++++++++++++++");
		
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.YEAR, -1);
		Long lastyear = cal.getTimeInMillis();
		Timestamp ts = new Timestamp(lastyear);
		
		if (count.size() == 2 && count.get(1).getAcceptDate().after(ts)) {
			return false;
		} else {
			return true;
		}
	}
	
}
