package com.asm.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asm.bean.Favourite;
import com.asm.dao.FavouriteRepo;
import com.asm.service.FavouriteService;

@Service
public class FavouriteServiceImpl implements FavouriteService {

	@Autowired FavouriteRepo FRepo; 
	
	@Override
	public List<Favourite> findAll() {
		return FRepo.findAll();
	}

	@Override
	public Favourite save(Favourite favourite) {
		return FRepo.save(favourite);
	}
	

}
