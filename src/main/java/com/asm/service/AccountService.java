package com.asm.service;

import java.util.List;

import com.asm.bean.Account;
import com.asm.bean.Brand;

public interface AccountService {

	List<Account> findAll();

	Account findByUsername(String username);

	Account save(Account account);

	void deleteByUsername(String username);

	boolean existsById(String username);

	List<Account> findByFullname(String fullname);

	// void deleteRoleDetail(Long id);

	List<Account> findByUsernameLike(String username);
	
	Long countUserByRole(String roleId);


}
