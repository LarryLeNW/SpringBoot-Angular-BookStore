package com.asm.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.asm.bean.Favourite;

@Repository
public interface FavouriteRepo extends JpaRepository<Favourite, Long>  {
	@Query("SELECT f FROM Favourite f WHERE f.account.id= :id")
	List<Favourite> findByUserId(@Param("id") Long id);
	
	@Query("SELECT f FROM Favourite f WHERE f.account.id = :userId and f.product.id = :productId ")
	Favourite checkStatusFavourite(@Param("userId") Long userId, @Param("productId") Long productId);
	
	
}
