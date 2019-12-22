package com.api.busmap.config;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
 
@Configuration
 
@ComponentScan("com.api.busmap.*")
 
public class ApplicationContextConfig {
	
	public static Connection getConnection() {
		try {
			String connectionurl = "jdbc:mysql://localhost:3306/busmap?useUnicode=true&characterEncoding=utf-8";
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con = DriverManager.getConnection(connectionurl,"pi","123");
        	return con;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}
  
}
