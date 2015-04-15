package com.sst.shifttracker.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.sst.shifttracker.DTOs.EmployeeDTO;
import com.sst.shifttracker.mapper.EmployeeMapper;

@Component
public class EmployeeDAO extends BaseDAO{
	private final String SELECT_EMPLOYEE_SQL = "SELECT * FROM sstemployee";

	@SuppressWarnings("unchecked")
	public List<EmployeeDTO> getEmployeeDetails() {
		 List<EmployeeDTO>  employeeDTOslist = new ArrayList<EmployeeDTO>();

		 employeeDTOslist = jdbctemplate.query(SELECT_EMPLOYEE_SQL, new EmployeeMapper());
		
		return employeeDTOslist;

	}
}
		
		
		
	