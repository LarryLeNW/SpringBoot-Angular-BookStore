package com.asm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.asm.bean.Favourite;


public interface FavouriteService {
	
	List<Favourite> findAll();
	
	Favourite save(Favourite favourite);
	
	
}
