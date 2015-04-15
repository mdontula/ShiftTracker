package com.sst.shifttracker.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.sst.shifttracker.DTOs.EmployeeDTO;

public class EmployeeMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		EmployeeDTO employeeDTOObj = new EmployeeDTO();
		employeeDTOObj.setEmpId(rs.getInt("empId"));
		employeeDTOObj.setEmpName(rs.getString("empName"));
		employeeDTOObj.setEmpProject(rs.getString("empProject"));
		employeeDTOObj.setEmpProjStream(rs.getString("empStream"));
		return employeeDTOObj;
	}

}
