package org.iii.ee100.animour.halfway.web;

import java.sql.Timestamp;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.iii.ee100.animour.common.entity.PageInfo;
import org.iii.ee100.animour.common.model.ResponseForAnimour;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.model.QueryFormHalfway;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
public class AnimalRestController {

	@Autowired
	AnimalService animalservice;
	
	@Autowired
	ResponseForAnimour response;

	private PageInfo defaultPageInfo = new PageInfo(1, 8);
	
	// 查詢全部 ， 改用 Page 物件接值
	@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public ResponseEntity<?> listAnimal(PageInfo pageinfo) throws Exception {
		if (pageinfo.getPageNumber() == null) {
			pageinfo.setPageNumber(defaultPageInfo.getPageNumber());
		}
		if (pageinfo.getSize() == null) {
			pageinfo.setSize(defaultPageInfo.getSize());
		}
		Page<Animal> page = animalservice.getAnimalPage(pageinfo); // pageNumber=頁數 pageSize=一頁幾筆資料
		List<Animal> animals = page.getContent();
		response.setData(animals);
		
		return new ResponseEntity<Object>(response, HttpStatus.OK);
	}

	// 新增&修改
	@RequestMapping(value = { "/halfway/animal" }, method = RequestMethod.POST)
	public ResponseEntity<?> insertAnimal(Animal animal,
			@RequestParam(value = "file", required = false) MultipartFile avatar, HttpServletRequest request) {
		Member current = animalservice.getCurrentMember();
		animal.setMember(current);
		// 普通表單
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		animal.setUpload(ts);
		// 先insert，才能取得自動生成的id，做為儲存圖片的檔名
		if (animal.getId() == null) {
			animalservice.insert(animal);
		}
		if (avatar != null && !avatar.isEmpty()) {
			String fileName = animalservice.readImage(avatar, request, animal);
			animal.setFileName(fileName);
		}
		// 儲存圖片之後，更新
		animalservice.update(animal);

		return new ResponseEntity<Animal>(animal, HttpStatus.OK);
	}

	// 刪除
	@RequestMapping(value = { "/halfway/animal/{id}" }, method = RequestMethod.DELETE)
	public ResponseEntity<?> deleteAnimal(@PathVariable Long id) {
		Animal an = animalservice.getOne(id);
		if (an != null) {
			animalservice.delete(id);
		}
		return new ResponseEntity<Animal>(HttpStatus.OK);
	}

	// 查詢一筆
	@RequestMapping(value = { "/halfway/animal/{id}" }, method = RequestMethod.GET, produces = { "application/json",
			"application/xml" })
	public Animal oneAdoption(@PathVariable Long id) {
		Animal an = animalservice.getOne(id);
		return an;
	}

	// 複合查詢
	@RequestMapping(value = "/queryTest", method = { RequestMethod.POST })
	public List<Animal> specificationQuery(@RequestBody QueryFormHalfway queryform, PageInfo pageinfo, Model model) {

		Map<String, Object> speciemap = new IdentityHashMap<>();
		if (queryform.getSpecieitems() != null && queryform.getSpecieitems().size() != 0) {
			for (String sp : queryform.getSpecieitems()) {
				speciemap.put(new String("specie"), sp);
			}
		}
		Map<String, Object> citymap = new IdentityHashMap<>();
		if (queryform.getCityitems() != null && queryform.getCityitems().size() != 0) {
			for (Long ct : queryform.getCityitems()) {
				citymap.put(new String("city"), animalservice.getCityById(ct));
			}
		}
		Specification<Animal> spec;
		if (speciemap.size() != 0 && citymap.size() != 0) {
			spec = Specifications.where(SpecificationHalfway.containsLikeOr(speciemap))
					.and(SpecificationHalfway.containsEqualsOr(citymap));
		} else {
			spec = Specifications.where(SpecificationHalfway.containsLikeOr(speciemap))
					.or(SpecificationHalfway.containsEqualsOr(citymap));
		}
		// 設定 pageinfo
		if (pageinfo.getPageNumber() == null) {
			pageinfo.setPageNumber(defaultPageInfo.getPageNumber());
		}
		if (pageinfo.getSize() == null) {
			pageinfo.setSize(defaultPageInfo.getSize());
		}
		Page<Animal> page = animalservice.getSpecPage(pageinfo, spec);
		List<Animal> animals = page.getContent();

		return animals;
	}

}
