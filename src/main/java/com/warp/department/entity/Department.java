package com.warp.department.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "DEPARTMENTID")
    private Long departmentId;
    
	@Column(name = "DEPARTMENTNAME")
    private String departmentName;

	@Column(name = "DEPARTMENTADDRESS")
	private String departmentAddress;

	@Column(name = "DEPARTMENTCODE")
	private String departmentCode;
}
