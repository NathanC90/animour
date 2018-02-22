package org.iii.ee100.sample.music;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.Scanner;

public class RecordApp {

	public static void main(String[] args) throws IOException {
		long vnum ;
		RecordDao recDao = new RecordDao();
		List<Record> rList = recDao.findAll();
		
		for(Record record:rList) {
			System.out.println(record.getId()+"\t");
			System.out.println(record.getReclab()+"\t");
			System.out.println(record.getCountry()+"\t");
			System.out.println(record.getArea()+"\t");
			
			System.out.println("\n");
		}
		
		Scanner scann = new Scanner(System.in);
		
		while(true)
		{
			System.out.println("Please insert the ID number to see their performers: ");
		vnum = scann.nextLong();
		
		Record record = recDao.findById(vnum);
		
		if(record != null) {
			System.out.println(record.getId()+"\t");
			System.out.println(record.getReclab()+"\t");
			System.out.println(record.getCountry()+"\t");
			System.out.println(record.getArea()+"\t");
						
		}else {
			System.err.println("The number you inserted is not valid.");
		}
		
		}
		}
	
	

}
