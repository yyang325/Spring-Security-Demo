package com.mercury.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.simple.SimpleJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mercury.beans.Person;
import com.mercury.dao.PersonDao;

@Repository
public class PersonDaoImpl implements PersonDao {
	private SimpleJdbcTemplate template;
	
	@Autowired
	public void setDataSource(DataSource dataSource){
		template = new SimpleJdbcTemplate(dataSource);
	}

	@Override
	public Person findByName(String name) {
		// TODO Auto-generated method stub
		String sql = "select username, password, authority from users u, user_roles ur "
				+ "where u.user_id=ur.user_id and username=?";
		Object[] params = {name.toLowerCase()};
		Person person = new Person();
		template.query(sql, new RowMapper<Person>(){
			public Person mapRow(ResultSet rs, int line) throws SQLException{
				person.setUsername(rs.getString("username"));
				person.setPassword(rs.getString("password"));
				person.addAuthority(rs.getString("authority"));
				return null;
			}
		}, params);
		
		return person;
		
	}

}
