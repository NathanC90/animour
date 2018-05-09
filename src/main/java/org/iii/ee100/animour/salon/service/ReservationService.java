package org.iii.ee100.animour.salon.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.forum.entity.Article;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.salon.dao.DesignerDao;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.dao.ReservationDateDao;
import org.iii.ee100.animour.salon.dao.ServiceContentDao;
import org.iii.ee100.animour.salon.dao.reservationTimeDao;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ReservationTime;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class ReservationService extends GenericService<Reservation>{
	
	@Autowired
	ReservationDao reservationDao;
	
	@Autowired
	DesignerDao designerDao;
    
	@Autowired
	ServiceContentDao serviceContentDao;
	
	@Autowired
	org.iii.ee100.animour.salon.dao.reservationTimeDao reservationTimeDao;
	
	
	public void deleteReservation(Reservation id) {
		 reservationDao.delete(id);
	}
	
	
	public ArrayList<Reservation> getAllContent() {
		return Lists.newArrayList(reservationDao.findAll());
	}
	
	public Reservation insertReservation(Reservation reservation) {
		return reservationDao.save(reservation);		
	}
	

	
	public List<Designer> getAllDesigner(){
		return Lists.newArrayList(designerDao.findAll());
		
	}
	
	public ArrayList<ReservationTime> getAllReservationTime(){
		return Lists.newArrayList(reservationTimeDao.findAll());
	}
	
	public Reservation getOne(Long id) {
		return reservationDao.findOne(id);
	}
	public ServiceContent getServiceContentId(Long id) {
		return serviceContentDao.findOne(id);
	}
	
	public ArrayList<ServiceContent> getAllServiceContent(){
		return Lists.newArrayList(serviceContentDao.findAll());
		
	}
	//計算總時數
	public Integer addServiceTime(){
		ServiceContent serviceContent=new ServiceContent();
		return serviceContent.getTime();		
	}
	
	
	
	
	//預約幾筆的頁面方法
	public Page<Reservation> getReservationPage(PageForAnimour pageForAnimour) {
		pageForAnimour.getPageRequest();
		PageRequest request = new PageRequest(pageForAnimour.getPageNo(), pageForAnimour.getSize(), Sort.Direction.DESC,"reservationDate");
		
		return reservationDao.findAll(request);		
	}
	
	
	
	
	

}
