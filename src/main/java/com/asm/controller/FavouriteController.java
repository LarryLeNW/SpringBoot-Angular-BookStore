package com.asm.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.asm.bean.Account;
import com.asm.bean.Alert;
import com.asm.bean.Favourite;
import com.asm.bean.Product;
import com.asm.service.FavouriteService;
import com.asm.service.SessionService;

@Controller
@RequestMapping("/favourite")
public class FavouriteController {

	@Autowired
	SessionService session;

	@Autowired
	FavouriteService fService;

	@GetMapping("/list")
	public String listFavourite(Model model) {
		Account account = session.get("user");
		ArrayList<Favourite> list = (ArrayList<Favourite>) fService.findByUserId(account.getId());
		model.addAttribute("FProduct", list);
		return "/favourite/list";
	}

	@GetMapping("/add/{id}")
	public String addFavourite(Model model, @PathVariable("id") Long id) {
		Account account = session.get("user");
		Product product = new Product();
		product.setId(id);

		// if status true, it's created .
		boolean statusFavourite = fService.checkStatusFavourite(account.getId(), product.getId()) != null;

		if (statusFavourite) {
			model.addAttribute("alert", new Alert("warning", "Đã tồn tại trong list favourite của bạn ..."));
			return "redirect:/product/list";
		} else {
			try {
				fService.save(new Favourite(new Date(), account, product));
				model.addAttribute("alert", new Alert("success", "Đã thêm vào list favourite ..."));
			} catch (Exception e) {
				model.addAttribute("error", new Alert("error", e.getMessage()));
			}
		}

		return "redirect:/favourite/list";
	}

	@GetMapping("/remove/{id}")
	public String removeFavourite(Model model, @PathVariable("id") Long id) {
		System.out.println("id remove" + id);
		try {
			fService.deleteById(id);
			model.addAttribute("alert", new Alert("success", "Xóa thành công ..."));
		} catch (Exception e) {
			model.addAttribute("alert", new Alert("error", "Xóa thành công ..."));
		}
		return "redirect:/favourite/list";
	}

}
