package com.asm;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.asm.dao.FavouriteRepo;

public class TestingFavourite {

	@Autowired
	FavouriteRepo FRepo  ;
	
	
	@Test
	public void findAll() {
		System.out.println(FRepo.findAll());;
	}
	
	
	
	
}
