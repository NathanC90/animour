package org.iii.ee100.animour.Designer.dao;

import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.iii.ee100.animour.salon.dao.DesignerDao;
import org.iii.ee100.animour.salon.dao.ReservationDao;
import org.iii.ee100.animour.salon.dao.ServiceContentDao;
import org.iii.ee100.animour.salon.entity.Designer;
import org.iii.ee100.animour.salon.entity.Reservation;
import org.iii.ee100.animour.salon.entity.ReservationTime;
import org.iii.ee100.animour.salon.service.ReservationService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DesignerDaoTest {

	@Autowired
	private DesignerDao designerDao;
	// @Autowired
	private ServiceContentDao serviceContenDao;
	@Autowired
	private ReservationService reservationService;

	@Autowired
	ReservationDao reservationDao;

	@Test
	public void decideThreeContentRepeateOrNot() throws ParseException {
		// 取出各Table設計師名稱、時間內容種類
		Reservation reservation = new Reservation();
		// 時間、設計師、日期的空物件
		ReservationTime reservationTime = null;
		Designer designer = null;
		
		//使用空set放置不重複物件
		Set<ReservationTime> reservationTimeSetList = new HashSet<ReservationTime>();
		Set<Designer> designerSetList = new HashSet<Designer>();

		//
		List<Designer> designerList = reservationService.getAllDesigner();
		ArrayList<ReservationTime> reservationTimeList = reservationService.getAllReservationTime();
		// 前端日期輸入
		// Date compareDate = reservation.getReservationDate();

		DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		//預設時間
		int i=0;
		
        

         //這個就是時間往後推一天的结果
		// 預約內容明細
		List<Reservation> reservationListData = new ArrayList<>();
		reservationListData = reservationDao.findAll();
		// 取出資料庫的日期、內容、設計師名稱
		for (Reservation reservations : reservationListData) {
			// 設計師Table
			for (Designer designers : designerList) {
				// 服務內容Table
				for (ReservationTime reservationTimes : reservationTimeList) {
					Date mainDate = reservations.getReservationDate();
					Date CurrentDate=new Date();//取時間
			        Calendar calendar = new GregorianCalendar();
					calendar.setTime(CurrentDate);
					calendar.add(calendar.DATE,i);//把日期往後增加一天.整數往後,負數往前
			        CurrentDate=calendar.getTime();
			        i++;
//					String stringDate= simpleDateFormat.format(mainDate);
//					Date mainDate2=simpleDateFormat.parse(stringDate);
					String mainDesigner = reservations.getDesigner();
					Time mainTime = reservations.getFrontTime();
					String compareDesigner = designers.getDesigner();
					Time compareTime = reservationTimes.getFrontTime();
//					System.out.println(mainDate2);
					if (!mainDate.equals(CurrentDate) || !mainDesigner.equals(compareDesigner)||!mainTime.equals(compareTime)) {

						// if(!reservationTime.getFrontTime().equals(compareTime)) {
						 reservationTime =new ReservationTime();
						 reservationTime.setFrontTime(compareTime);
						 reservationTimeSetList.add(reservationTime);
//						 }
						System.out.println("compareDate2: " + CurrentDate);
//
						designer = new Designer();
						designer.setDesigner(compareDesigner);
						designerSetList.add(designer);
						// if(!reservationDate.getReservationDate().equals(compareDate2)) {
//						 reservationDateFinallyList.add(reservationDate);
						// }
					}
				}
			}

		}

		 for(ReservationTime finalAnswer:reservationTimeSetList) {
		 System.out.println("finalAnswer"+finalAnswer.getFrontTime());
		 }
 		for (Designer finalAnswer2 : designerSetList) {
			System.out.println("finalAnswer2" + finalAnswer2.getDesigner());
		}

	}

	// public void TestInsertDesigner() {
	// Designer designer = new Designer();
	// designer.setDesigner("小美");
	// designer.setFreeTime(Timestamp.valueOf("2018-06-01 09:00:00"));
	// designer.setOneFree(1);
	// designerDao.save(designer);
	//
	// Designer designer2 = new Designer();
	// designer2.setDesigner("阿明");
	// designer2.setFreeTime(Timestamp.valueOf("2018-06-01 10:00:00"));
	// designer2.setOneFree(1);
	// designerDao.save(designer2);
	//
	// Designer designer3 = new Designer();
	// designer3.setDesigner("志偉");
	// designer3.setFreeTime(Timestamp.valueOf("2018-06-01 11:00:00"));
	// designer3.setOneFree(1);
	// designerDao.save(designer3);
	//
	// Designer designer4 = new Designer();
	// designer4.setDesigner("阿湯");
	// designer4.setFreeTime(Timestamp.valueOf("2018-06-01 12:00:00"));
	// designer4.setOneFree(1);
	// designerDao.save(designer4);
	//
	// Designer designer5 = new Designer();
	// designer5.setDesigner("阿生");
	// designer5.setFreeTime(Timestamp.valueOf("2018-06-01 02:00:00"));
	// designer5.setOneFree(1);
	// designerDao.save(designer5);
	//
	// Designer designer6 = new Designer();
	// designer6.setDesigner("阿佑");
	// designer6.setFreeTime(Timestamp.valueOf("2018-06-01 03:00:00"));
	// designer6.setOneFree(1);
	// designerDao.save(designer6);
	//
	// }

	// @Test
	// public void reservationForm() {
	// PageForAnimour pageForAnimour =new PageForAnimour();
	// Page<Reservation> page =
	// reservationService.getReservationPage(pageForAnimour);
	// List<Reservation> ReservationList = page.getContent();
	// System.out.println(ReservationList);
	//
	// }
	// @Test
	// public void getReservationPage() {
	// PageForAnimour pageForAnimour =new PageForAnimour();
	// pageForAnimour.getPageRequest();
	// PageRequest request = new PageRequest(pageForAnimour.getPageNo(),
	// pageForAnimour.getSize(), Sort.Direction.DESC,"reservationDate");
	// System.out.println(request);
	// }

	// @Test
	// public void TestfindAll() {
	// System.out.println(designerDao.findAll());
	// }

	// @Test
	// public void TestfindContentall() {
	// System.out.println(reservationService.getAllServiceContent());
	// }

}
