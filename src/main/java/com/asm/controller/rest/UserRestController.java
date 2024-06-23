package com.asm.controller.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.asm.bean.Account;
import com.asm.bean.Account;
import com.asm.dao.AccountRepo;
import com.asm.service.AccountService;
import com.asm.service.AccountService;
import com.asm.service.UploadService;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/admin/rest/accounts")
public class UserRestController {
	@Autowired
	AccountService aService;
	
	@Autowired
	UploadService uService;

	@GetMapping("")
	public List<Account> getAllAccount() {
		return aService.findAll();
	}

	@GetMapping("/{id}")
	public ResponseEntity<Account> getAccount(@PathVariable("id") Long id) {
		if (!aService.existsById(id)) {
			return ResponseEntity.notFound().build();
		} else {
			return ResponseEntity.ok(aService.findById(id));
		}
	}

	@GetMapping("/authorities")
	public Map<String, Object> getAuthority() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("accounts", aService.findAll());
		return map;
	}

	@GetMapping("/search")
	public List<Account> searchAccount(@RequestParam("kw") Optional<String> kw) {
		String keyword = kw.orElse(null);
		if (keyword != null) {
			return aService.findByFullname("%" + keyword + "%");
		} else {
			return this.getAllAccount();
		}
	}

	@GetMapping("/authorities/search")
	public List<Account> searchAccountByUsername(@RequestParam("kw") Optional<String> kw) {
		String keyword = kw.orElse(null);
		if (keyword != null) {
			return aService.findByUsernameLike("%" + keyword + "%");
		} else {
			return this.getAllAccount();
		}
	}

	@PostMapping("")
	public ResponseEntity<Account> postAccount(@RequestBody Account Account) {
			return ResponseEntity.ok(aService.save(Account));
	}

	@PutMapping("/{id}")
	public ResponseEntity<Account> putAccount(@PathVariable("id") Long id, @RequestBody Account Account) {
		if (!aService.existsById(id)) {
			return ResponseEntity.notFound().build();
		} else {
			return ResponseEntity.ok(aService.save(Account));
		}
	}

	@DeleteMapping("/{id}")
	public ResponseEntity<Void> deleteAccount(@PathVariable("id") Long id) {
		if (!aService.existsById(id)) {
			return ResponseEntity.notFound().build();
		} else {
			Account Account = aService.findById(id);
			String filename = Account.getPhoto();
			aService.deleteById(id);
			return ResponseEntity.ok().build();
		}
	}

}
