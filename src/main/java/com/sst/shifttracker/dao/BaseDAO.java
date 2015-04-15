package com.sst.shifttracker.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.sst.shifttracker.util.PropDBReader;

@Service
public class BaseDAO {

	public JdbcTemplate jdbctemplate;
	
	@Autowired
	public void createTemplate(@Qualifier("dataSource")DataSource datasource)
	{
		this.jdbctemplate=new JdbcTemplate(datasource);
	}
}
