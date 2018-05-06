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
	ReservationDateDao reservationDateDao;
	
	
	
	
	
	public ArrayList<Reservation> getAllContent() {
		return Lists.newArrayList(reservationDao.findAll());
	}
	
	public Reservation insertReservation(Reservation reservation) {
		return reservationDao.save(reservation);		
	}
	

	
	public List<Designer> getAllDesigner(){
		return Lists.newArrayList(designerDao.findAll());
		
	}
	
	public ArrayList<ReservationTime> getAllReservationDate(){
		return Lists.newArrayList(reservationDateDao.findAll());
	}
	
	public Designer getOne(Long id) {
		return designerDao.findOne(id);
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
	public Page<Reservation> getReservationPage(PageInfo pageInfo) {
		PageRequest request = new PageRequest(pageInfo.getNumber() - 1, pageInfo.getSize(), Sort.Direction.DESC, "upload");
		
		return reservationDao.findAll(request);		
	}
	
	public Page<ServiceContent> getServiceContentPage(Integer pageNumber, Integer pageSize){
		PageRequest request= new PageRequest(pageNumber, pageSize, Sort.Direction.DESC,"upload");
		return serviceContentDao.findAll(request);		
	}
	
	
	

}
