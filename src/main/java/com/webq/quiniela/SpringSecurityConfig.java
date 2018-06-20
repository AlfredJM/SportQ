package com.webq.quiniela;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.webq.quiniela.auth.handler.LoginSuccessHandler;
import com.webq.quiniela.servicio.JPAUserDetailsService;

@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private LoginSuccessHandler successHandler;

	@Autowired
	private JPAUserDetailsService userDetailsService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests()
				.antMatchers("/", "/index", "/home", "/inicio", "/categoria/**", "/signup", "/css/**", "/js/**",
						"/imagenes/**")
				.permitAll().antMatchers("/crearquiniela/**").hasAnyRole("ADMIN").antMatchers("/dashboard/**")
				.hasAnyRole("ADMIN").anyRequest().authenticated().and().formLogin().successHandler(successHandler)
				.loginPage("/login") // Corresponde al formulario login.ftl
				.usernameParameter("inputUser") // El name del input usuario
				.passwordParameter("inputPassword") // El name del input password
				.permitAll().and().logout().logoutSuccessUrl("/").permitAll();
	}

	@Autowired
	public void configurerGlobal(AuthenticationManagerBuilder build) throws Exception {
		build.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);
	}
}