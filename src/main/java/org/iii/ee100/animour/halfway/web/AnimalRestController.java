package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.service.AnimalService;
import org.iii.ee100.animour.halfway.service.SpecificationHalfway;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.domain.Specifications;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class AnimalRestController {

	@Autowired
	AnimalService animalservice;

	PageInfo defaultPageInfo = new PageInfo(1, 8);

	// 查詢全部 
//	@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.GET, produces = { "application/json",
//			"application/xml" })
//	public List<Animal> listAnimal(@RequestParam(value = "pageNumber", defaultValue = "1") Integer pageNumber,
//			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {
//		Page<Animal> page = animalservice.getAnimalPage(pageNumber, pageSize); // pageNumber=頁數 pageSize=一頁幾筆資料
//		List<Animal> animals = page.getContent();
//		return animals;
//	}
	
	// 查詢全部 ， 改用 Page 物件接值
		@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.GET, produces = { "application/json",
				"application/xml" })
		public List<Animal> listAnimal(PageInfo pageinfo, Model model) {
			if (pageinfo.getNumber() == null || pageinfo.getSize() == null) {
				pageinfo = defaultPageInfo;
			}
			Page<Animal> page = animalservice.getAnimalPage(pageinfo); // pageNumber=頁數 pageSize=一頁幾筆資料
			List<Animal> animals = page.getContent();
			return animals;
		}

	// 新增
	@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.POST)
	public ResponseEntity<?> insertAnimal(Animal animal, @RequestParam(value = "file", required = false) MultipartFile image,
			HttpServletRequest request, Model model) {
		Member current = animalservice.getCurrentMember();
		animal.setMember(current);
		// 普通表單
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		animal.setUpload(ts);
		// 先insert，才能取得自動生成的id，做為儲存圖片的檔名
		animalservice.insert(animal);
		
		if (image == null || image.isEmpty()) {
			
			return new ResponseEntity<String>("", HttpStatus.OK);
		}
		String fileName = animalservice.readImage(image, request, animal);
		animal.setFileName(fileName);
		// 儲存圖片之後，更新檔名
		animalservice.update(animal);

		//return "success";
		return new ResponseEntity<Animal>(animal, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/queryTest", method = { RequestMethod.GET })
	public List<Animal> specificationQuery(@RequestParam(value = "specieitems[]", required = false) String[] specieitems,
			@RequestParam(value = "cityitems[]", required = false) Long[] cityitems,
			@RequestParam(value = "page", defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "size", defaultValue = "8") Integer pageSize, Model model) {

		Map<String, Object> speciemap = new IdentityHashMap<>();
		if (specieitems != null && specieitems.length != 0) {
			for (String sp : specieitems) {
				speciemap.put(new String("specie"), sp);
			}
		}
		Map<String, Object> citymap = new IdentityHashMap<>();
		if (cityitems != null && cityitems.length != 0) {
			for (Long ct : cityitems) {
				citymap.put(new String("city"),animalservice.getCityById(ct));
			}
		}
		Specification<Animal> spec;
		if (speciemap.size() != 0 && citymap.size() != 0 ) {
			spec = Specifications.where(SpecificationHalfway.containsLikeOr(speciemap))
					.and(SpecificationHalfway.containsEqualsOr(citymap));
		}else {
			spec = Specifications.where(SpecificationHalfway.containsLikeOr(speciemap))
					.or(SpecificationHalfway.containsEqualsOr(citymap));
		}
		Page<Animal> page = animalservice.getSpecPage(pageNumber, pageSize, spec);
		List<Animal> animals = page.getContent();

		return animals;
	}

	
	

}
