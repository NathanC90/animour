package org.iii.ee100.animour.halfway.service;

import java.util.List;

import org.assertj.core.util.Lists;
import org.iii.ee100.animour.halfway.dao.AnimalDao;
import org.iii.ee100.animour.halfway.dao.CityDao;
import org.iii.ee100.animour.halfway.entity.Animal;
import org.iii.ee100.animour.halfway.entity.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class AnimalService {

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

	public List<Animal> getAll() {
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

}
