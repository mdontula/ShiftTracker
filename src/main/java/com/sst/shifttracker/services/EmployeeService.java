package com.sst.shifttracker.services;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sst.shifttracker.DTOs.EmployeeDTO;
import com.sst.shifttracker.dao.EmployeeDAO;
import com.sst.shifttracker.viewbeans.EmployeeDetailsVB;

@Component
public class EmployeeService {

	private Logger logger = LoggerFactory.getLogger(UserService.class);
	@Autowired
	private EmployeeDAO employeeDAO;
	
	
	
	public EmployeeDAO getEmployeeDAO() {
		return employeeDAO;
	}

	public void setEmployeeDAO(EmployeeDAO employeeDAO) {
		this.employeeDAO = employeeDAO;
	}

	public List<EmployeeDetailsVB> getEmployeeList() {
		
		List<EmployeeDTO> employeeDTOs  = 	employeeDAO.getEmployeeDetails();
		List<EmployeeDetailsVB> employeeDetailsVBs = prepareDtoToVBObject(employeeDTOs);
		return employeeDetailsVBs;
		}

	private List<EmployeeDetailsVB> prepareDtoToVBObject(
			List<EmployeeDTO> employeeDTOs) {
	List<EmployeeDetailsVB> employeeDetailsVBs = new ArrayList<EmployeeDetailsVB>() ;
		if(null != employeeDTOs & employeeDTOs.size() > 0){
			for(EmployeeDTO dto : employeeDTOs){
				
				EmployeeDetailsVB employeeDetailsVB = new EmployeeDetailsVB();
				employeeDetailsVB.setEmpId(dto.getEmpId());
				employeeDetailsVB.setEmpName(dto.getEmpName());
				employeeDetailsVB.setEmpProject(dto.getEmpProject());
				employeeDetailsVB.setEmpProjStream(dto.getEmpProjStream());
				employeeDetailsVBs.add(employeeDetailsVB);			}
		}
		return employeeDetailsVBs;
	}
	
}
