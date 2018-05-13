package org.iii.ee100.animour.halfway.service;

import java.util.ArrayList;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.dao.AcceptRecordDao;
import org.iii.ee100.animour.halfway.entity.AcceptRecord;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class AcceptRecordService extends GenericService<AcceptRecord>{

	@Autowired
	private AcceptRecordDao acceptRecordDao;

	public void insert(AcceptRecord acceptRecord) {
		acceptRecordDao.save(acceptRecord);
	}

	public void update(AcceptRecord acceptRecord) {
		acceptRecordDao.save(acceptRecord);
	}

	public void delete(Long id) {
		acceptRecordDao.delete(id);
	}

	public ArrayList<AcceptRecord> getAll() {
		return Lists.newArrayList(acceptRecordDao.findAll());
	}

	public AcceptRecord getOne(Long id) {
		return acceptRecordDao.findOne(id);
	}
	
	// pageSize=一頁幾筆資料
	public Page<AcceptRecord> getAccpetRecordPage(PageInfo pageinfo) {
		PageRequest request = new PageRequest(pageinfo.getPageNumber() - 1, pageinfo.getSize(), Sort.Direction.DESC,
				"startDate");
		return acceptRecordDao.findAll(request);
	}
	
}
