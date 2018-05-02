package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class AnimalRestController {

	@Autowired
	AnimalService animalservice;

	// 查詢全部 
	@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public List<Animal> listAnimal(@RequestParam(value = "pageNumber", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
		Page<Animal> page = animalservice.getAnimalPage(pageNumber, pageSize); // pageNumber=頁數 pageSize=一頁幾筆資料
		List<Animal> animals = page.getContent();
		return animals;
	}

	// 新增
	@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.POST, consumes = {  "multipart/form-data",
			"application/json", "application/xml" })
	public ResponseEntity<?> insertAnimal(@RequestBody Animal animal, @RequestParam(value = "file", required = false) MultipartFile image,
			HttpServletRequest request, Model model) {
		Member current = animalservice.getCurrentMember();
		animal.setMember(current);
		// 普通表單
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		animal.setUpload(ts);
		// 先insert，才能取得自動生成的id，做為儲存圖片的檔名
		animalservice.insert(animal);
		
//		if (image == null || image.isEmpty()) {
//			
//			return new ResponseEntity<String>("", HttpStatus.OK);
//		}
		//String fileName = animalservice.readImage(image, request, animal);
		//animal.setFileName(fileName);
		// 儲存圖片之後，更新檔名
		//animalservice.update(animal);

		//return "success";
		return new ResponseEntity<Animal>(animal, HttpStatus.OK);
	}

}
