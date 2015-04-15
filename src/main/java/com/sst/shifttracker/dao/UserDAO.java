package com.sst.shifttracker.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.sst.shifttracker.DTOs.UserDTO;

/**
 * @author amahammad
 * 
 */
@Component
public class UserDAO extends BaseDAO {

	private Logger logger = LoggerFactory.getLogger(UserDAO.class);
	private final String SELECT_USER_SQL = "SELECT * FROM sstuser where user_name =? and user_password = ? and is_active= 1";

	public UserDTO getUserDetails(String userName, String password) {
		UserDTO userDetailsDTO = null;

		try {

			userDetailsDTO = jdbctemplate.queryForObject(SELECT_USER_SQL,
					new Object[] { userName, password },
					new RowMapper<UserDTO>() {

						@Override
						public UserDTO mapRow(ResultSet rs, int row)
								throws SQLException {
							UserDTO userDTO = new UserDTO();
							userDTO.setUserName(rs.getString("user_Name"));
							userDTO.setPassword(rs.getString("user_password"));

							return userDTO;
						}
					});
		} catch (EmptyResultDataAccessException e) {
			return null;
		}

		return userDetailsDTO;

	}
}
