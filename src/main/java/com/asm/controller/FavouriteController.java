package com.asm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/favourite")
public class FavouriteController {
	
	
	@GetMapping("/list")
	public String listFavourite() {
		
		
		
		
		return "/favourite/list";
	}
	
	
}
