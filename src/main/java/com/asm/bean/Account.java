package com.asm.bean;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Accounts")
@Getter @Setter
public class Account implements Serializable {
	@Id
	private String username;
	private String password;
	private String fullname;
	private String email;
	private String photo;
	private Boolean activated;
	private String roleId;

	@JsonIgnore
	@OneToMany(mappedBy = "account")
	private List<Order> orders;
}
