package bmi.net.domain.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import bmi.net.model.User;

public class UserMapping implements RowMapper<User> {

	public User mapRow(ResultSet resultSet, int rowNum)
			throws SQLException {
		User user = new User();
		user.setuName(resultSet.getString("uName"));
		user.setPass(resultSet.getString("pass"));
		user.setName(resultSet.getString("name"));
		user.setSurName(resultSet.getString("surName"));
		user.setAge(resultSet.getString("age"));
		user.setComment(resultSet.getString("comment"));
		return user;
	}
}