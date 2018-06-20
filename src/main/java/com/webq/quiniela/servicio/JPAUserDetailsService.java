package com.webq.quiniela.servicio;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webq.quiniela.dao.IUsuarioDAO;
import com.webq.quiniela.modelo.Rol;
import com.webq.quiniela.modelo.Usuario;

@Service("jpaUserDetailService")
public class JPAUserDetailsService implements UserDetailsService {

	@Autowired
	private IUsuarioDAO usuarioDAO;
	
	private Logger logger = LoggerFactory.getLogger(JPAUserDetailsService.class);
	
	@Override
	@Transactional(readOnly = true) //Read only true porque es para consulta
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		Usuario domainUser = usuarioDAO.findByUsername(username);
		
		if(domainUser == null) {
			logger.error("Datos erroneos");
			throw new UsernameNotFoundException("Datos Erroneos");
		}

        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        
        for(Rol rol: domainUser.getRoles()) {
        	logger.info("Rol: ".concat(rol.getAuthority()));
        	authorities.add(new SimpleGrantedAuthority(rol.getAuthority()));
        }
        
		return new User(domainUser.getUsername(), domainUser.getClave(), domainUser.getEstatus(), true, true, true, authorities);
	}

}
