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

import com.webq.quiniela.auth.handler.LoginSuccessHandler;

@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private LoginSuccessHandler successHandler;
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/","/index","/home","/inicio","/includes/**","/css/**","/js/**","/imagenes/**").permitAll()
		.antMatchers("/crearquiniela/**").hasAnyRole("ADMIN")	
		.anyRequest().authenticated()
		.and()
		.formLogin()
		.successHandler(successHandler)
		.loginPage("/login")				//Corresponde al formulario login.ftl
		.usernameParameter("inputUser")		//El name del input usuario
		.passwordParameter("inputPassword")	//El name del input password
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
		.withUser(users.username("usuario")
				.password("12345")
					.roles("USER"));
	}
}