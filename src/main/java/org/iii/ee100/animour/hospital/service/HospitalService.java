package org.iii.ee100.animour.hospital.service;

import java.util.ArrayList;
import java.util.List;

import org.iii.ee100.animour.hospital.dao.HospitalDao;
import org.iii.ee100.animour.hospital.entity.Hospital;
import org.springframework.stereotype.Service;

@Service
public class HospitalService  {

	private HospitalDao hospitalDao;
	
	
	
	
	public HospitalService() throws InstantiationException, IllegalAccessException, ClassNotFoundException  {
		String daoImplName = "org.iii.ee100.animour.hospital.dao.HospitalDaoImpl";
		hospitalDao = (org.iii.ee100.animour.hospital.dao.HospitalDao) Class.forName(daoImplName).newInstance();
	}



	public void insert(Hospital hospital)  {
		hospitalDao.insertHosp(hospital);
	}

	

	public void update(Hospital hospital)  {
		hospitalDao.updateHosp(hospital);		
	}

	

	public void delete(String veterinaryHospId) {
		hospitalDao.deleteHosp(veterinaryHospId);
	}


	public List<Hospital> getAll() {
		return hospitalDao.findAllHosp();
	}


	public Hospital getOne(String Id) {
		return hospitalDao.findOneHosp(Id);
	}
	
	public List<Hospital> getThreeForIndex() {
		int[] array=new int[3];//3個數字
		for (int arr=0;arr<array.length;arr++) {
			int i=0;
			p:
			while (i==0) {
				i=(int)(Math.random()*10+1);
				for(int b=0;b<arr;b++) {
					if(array[b]==i) {
						i=0;
						continue p;
					}
					
				}
				array[arr]=i;//不重複
			}//end while
		}//end for
	
		
		List<Hospital> result =new ArrayList<Hospital>();
		for(int i=0;i<array.length;i++) {
			
			result.add(hospitalDao.findOneHospbySEQNO(array[i]));
		}
		return result;
	} 
	
	
	
	
}
