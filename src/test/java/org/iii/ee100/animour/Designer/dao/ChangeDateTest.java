package org.iii.ee100.animour.Designer.dao;

import static org.junit.Assert.*;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.model.PageForAnimour;
import org.iii.ee100.animour.member.entity.Member;
import org.iii.ee100.animour.member.service.MemberService;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.dao.ServiceContentDao;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ServiceContent;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class ChangeDateTest {
	@Autowired
	ReservationService reservationService;

	@Autowired
	ReservationDao reservationDao;

	@Autowired
	ServiceContentDao serviceContent;
	
	@Autowired
	MemberService memberService;

	// @Test
	// public void changeDate() {
	//// System.out.println(reservationService);
	// List<Reservation> reservationList= new ArrayList<>();
	// reservationList=reservationDao.findAll();
	// for(Reservation newList:reservationList) {
	//
	// SimpleDateFormat sdf = new SimpleDateFormat();
	// String date=sdf.format(newList.getReservationDate());
	// newList.setAppointDate(date);
	//
	//
	// }
	// PageForAnimour pageForAnimour =new PageForAnimour();
	// Page<Reservation> page=reservationService.getReservationPage(pageForAnimour);
	// reservationList = page.getContent();
	//
	// System.out.println("hhhhhhh"+reservationList);
	//
	// }

	@Test
	public void getAllServiceContent() {
		
		Member currentMember = memberService.getNewCurrentMember();
		
//		long id=2;
//		List<Reservation> test2 = new ArrayList<>();
//		test2 = reservationDao.findByMemberId(id);
//
		System.out.println("aaaabbb" + currentMember.getId());

	}

}
