package com.webq.quiniela;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/","/css/**","/js/**","/imagenes/**").permitAll()
		.antMatchers("/quiniela/").hasAnyRole("MASTER")
		.anyRequest().authenticated()
		.and()
		.formLogin().loginPage("/signin")
		.permitAll()
		.and()
		.logout().permitAll();
	}

	@Autowired
	public void configurerGlobal(AuthenticationManagerBuilder build) throws Exception {
		/*
		 * 	Deprecated!!
		 *	UserBuilder users = User.withDefaultPasswordEncoder();
		 */
		
		PasswordEncoder encoder = PasswordEncoderFactories.createDelegatingPasswordEncoder();
		UserBuilder users = User.builder().passwordEncoder(encoder::encode);
		
		build.inMemoryAuthentication()
		.withUser(users.username("master")
				.password("12345")
				.roles("MASTER","ADMIN"))
		.withUser(users.username("admin")
				.password("12345")
				.roles("ADMIN","USER"))
		.withUser(users.username("user")
				.password("12345")
					.roles("USER"));
	}
}
