package com.webq.quiniela.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.webq.quiniela.dao.IAccesoDAO;
import com.webq.quiniela.modelo.Acceso;

@Service
public class AccesoServicioImpl implements IAccesoServicio {

	@Autowired
	private IAccesoDAO accesoDao;
	
	@Override
	@Transactional(readOnly = true)
	public List<Acceso> findAll() {
		return (List<Acceso>) accesoDao.findAll();
	}

	@Override
	@Transactional
	public void save(Acceso acceso) {
		accesoDao.save(acceso);

	}

	@Override
	@Transactional(readOnly = true)
	public Acceso findOne(Long id) {
		return accesoDao.findById(id).orElse(null);
	}

	@Override
	@Transactional
	public void delete(Long id) {
		accesoDao.deleteById(id);
	}

}
