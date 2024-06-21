package com.asm.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.bean.Favourite;

@Repository
public interface FavouriteRepo extends JpaRepository<Favourite, Long>  {

}
