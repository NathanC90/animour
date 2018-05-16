package org.iii.ee100.animour.salon.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.salon.dao.DesignerDao;
import org.iii.ee100.animour.salon.dao.ReservationDao;
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
public class ReservationService extends GenericService<Reservation> {

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

	public List<Designer> getAllDesigner() {
		return Lists.newArrayList(designerDao.findAll());

	}

	public ArrayList<ReservationTime> getAllReservationTime() {
		return Lists.newArrayList(reservationTimeDao.findAll());
	}

	public Reservation getOne(Long id) {
		return reservationDao.findOne(id);
	}

	public ServiceContent getServiceContentId(Long id) {
		return serviceContentDao.findOne(id);
	}

	public ArrayList<ServiceContent> getAllServiceContent() {
		return Lists.newArrayList(serviceContentDao.findAll());

	}
	
	public ArrayList<ServiceContent> getThreeServiceConten() {
		return Lists.newArrayList(serviceContentDao.findTop3ByOrderByIdDesc());

	}


	// 計算總時數
	public Integer addServiceTime() {
		ServiceContent serviceContent = new ServiceContent();
		return serviceContent.getTime();
	}

	public Reservation repeateOrNot(Reservation reservation) throws ParseException {
		List<Reservation> reservationList = new ArrayList<>();
		reservationList = reservationDao.findAll();
		Date compareDate = reservation.getReservationDate();
		DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String dateText = simpleDateFormat.format(compareDate);
		Date compareDate2 = simpleDateFormat.parse(dateText);

		// System.out.println("catch textDate :"+dateText);
		int flag2 = 0;
		int flag3 = 0;
		for (Reservation reservations : reservationList) {
			Date mainDate = reservations.getReservationDate();
			if (mainDate.equals(compareDate2)) {
				flag3++;

			} else {
				flag2++;
				if (flag2 == reservationList.size()) {
					System.out.println("flag2number"+flag2);
					reservationDao.save(reservation);
				}
			}
		}
		return reservation;
	}

	// 預約幾筆的頁面方法
	public Page<Reservation> getReservationPage(PageForAnimour pageForAnimour) {
		pageForAnimour.setSize(6);
		PageRequest request = new PageRequest(pageForAnimour.getPageNo(), pageForAnimour.getSize(), Sort.Direction.ASC,
				"id");

		return reservationDao.findAll(request);
	}

}
