package com.asm.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.asm.bean.Account;
import com.asm.dao.AccountRepo;
import com.asm.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {
	@Autowired
	AccountRepo aRepo;

	@Override
	public List<Account> findAll() {
		return aRepo.findAll();
	}

	@Override
	public Account findByUsername(String username) {
		return aRepo.findByUsername(username);
	}

	@Override
	public Account save(Account account) {
		return aRepo.save(account);
	}

	@Override
	public void deleteById(Long id) {
		aRepo.deleteById(id);
	}

	@Override
	public boolean existsById(Long id) {
		return aRepo.existsById(id);
	}

	@Override
	public List<Account> findByFullname(String fullname) {
		return aRepo.findByFullname(fullname);
	}

	@Override
	public List<Account> findByUsernameLike(String username) {
		return aRepo.findByFullname(username);
	}

	@Override
	public Long countUserByRole(String roleId) {
		 return aRepo.countByUserByRole(roleId);
	}

	@Override
	public void deleteByUsername(String username) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Account findById(Long id) {
		return aRepo.findById(id).get();
	}


//	 @Override
//	 public Long countCustomer(String role) {
//		 return aRepo.countByCustomerName(role);
//	 }


}
