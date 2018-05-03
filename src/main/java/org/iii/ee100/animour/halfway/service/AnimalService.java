package org.iii.ee100.animour.halfway.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.common.service.GenericService;
import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.dao.CityDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.City;
import org.iii.ee100.animour.member.entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

@Transactional
@Service
public class AnimalService extends GenericService<Animal>{

	@Autowired
	private AnimalDao animalDao;

	@Autowired
	private CityDao cityDao;

	public void insert(Animal animal) {
		animalDao.save(animal);
	}

	public void update(Animal animal) {
		animalDao.save(animal);
	}

	public void delete(Long id) {
		animalDao.delete(id);
	}

	public ArrayList<Animal> getAll() {
		return Lists.newArrayList(animalDao.findAll());
	}

	public Animal getOne(Long id) {
		return animalDao.findOne(id);
	}

	public List<Animal> getSix() {
		return animalDao.findTop6ByOrderByUploadDesc();
	}

	public List<Animal> getAllDesc() {
		return animalDao.findByOrderByUploadDesc();
	}

	public List<Animal> searchBySpecie(String specie) {
		return animalDao.findBySpecieOrderByUploadDesc(specie);
	}

	public Page<Animal> getByCity(City city, Integer pageNumber, Integer pageSize) {
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, Sort.Direction.DESC, "upload");
		return animalDao.findByCity(city, request);
	}

	// pageSize=一頁幾筆資料
	public Page<Animal> getAnimalPage(Integer pageNumber, Integer pageSize) {
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, Sort.Direction.DESC, "upload");
		return animalDao.findAll(request);
	}

	public Page<Animal> getAnimalConatainingPage(String name, Integer pageNumber, Integer pageSize) {
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, Sort.Direction.DESC, "upload");
		return animalDao.findByNameContaining(name, request);
	}
	
	public Page<Animal> getSpecPage(Integer pageNumber, Integer pageSize, Specification<Animal> spec) {
		PageRequest request = new PageRequest(pageNumber - 1, pageSize, Sort.Direction.DESC, "upload");
		return animalDao.findAll(spec, request);
	}

	public List<City> getAllCity() {
		return cityDao.findByOrderById();
	}

	public List<City> getQueryCity() {
		return cityDao.findByAnimalCountGreaterThanOrderByAnimalCountDesc(0L);
	}

	public City getCityById(Long id) {
		return cityDao.findOne(id);
	}

	public void updateAnimalCount() {
		List<City> citys = getAllCity();
		for (City city : citys) {
			city.setAnimalCount(new Long(city.getAnimals().size()));
		}
	}

	public String readImage(MultipartFile image, HttpServletRequest request, Animal an) {
		// 圖片
		String fileName = null;
		String uploadRootPath = request.getServletContext().getRealPath("images/halfway/animal/");
		System.out.println("uploadRootPath=" + uploadRootPath);

		// 如果檔案路徑不存在，創造一個
		File uploadRootDir = new File(uploadRootPath);
		if (!uploadRootDir.exists()) {
			uploadRootDir.mkdirs();
		}

		String contentType = image.getContentType();
		String fileType = contentType.substring(contentType.indexOf("/") + 1);

		if ((!image.isEmpty()) && ((fileType.equals("jpeg")) || (fileType.equals("png")))) {
			try {
				String originName = image.getOriginalFilename();
				fileName = "id_" + an.getId() + originName.substring(originName.lastIndexOf(".")).trim();
				// 把讀進來的檔案，轉成byte陣列
				byte[] bytes = image.getBytes();
				BufferedOutputStream buffout = new BufferedOutputStream(
						new FileOutputStream(new File(uploadRootPath + fileName)));
				// 利用Outputstream 把檔案內容(byte陣列)透過write方法寫出，至硬碟端檔案(檔案名稱為"/tmp"+fileName)
				buffout.write(bytes);
				buffout.close();

			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return fileName;
	}

	public List<String> setSpecie() {
		List<String> species = new ArrayList<>();
		species.add("狗");
		species.add("貓");
		species.add("兔");
		species.add("鼠");
		species.add("鳥");
		species.add("其他");
		return species;
	}
	
	public Member getCurrentMember() {
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal instanceof UserDetails && principal instanceof Member) {
			return (Member) principal;
		} else {
			String account = principal.toString();
			System.out.println(account);
			return null;
		}
		
	}	
	public List<Animal> getHomepageAnimalList(Long memberId){
		return animalDao.findByMemberIdOrderByUploadDesc(memberId);
		
	}
	

}
