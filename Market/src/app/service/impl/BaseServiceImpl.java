package app.service.impl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.dao.BaseDao;
import app.models.BaseModel;
import app.service.BaseService;

@Transactional("transactionManager")
@Repository("baseService")
@SuppressWarnings("all")
public class BaseServiceImpl<T> implements BaseService<T> {

	@Resource
	private BaseDao<T> baseDao;

	@Override
	public Serializable save(T o) {
		return baseDao.save(o);
	}

	@Override
	public void delete(T o) {
		baseDao.delete(o);

	}

	@Override
	public void update(T o) {
		baseDao.update(o);
	}

	@Override
	public void saveOrUpdate(T o) {
		baseDao.saveOrUpdate(o);

	}

	@Override
	public <T extends BaseModel> List<T> find(String hql) {
		return baseDao.find(hql);
	}

	@Override
	public <T extends BaseModel> List<T> find(String hql, Object... param) {
		return baseDao.find(hql, param);
	}

	@Override
	public <T extends BaseModel> List<T> find(String hql, List<Object> param) {
		return baseDao.find(hql, param);
	}

	@Override
	public <T extends BaseModel> List<T> find(String hql, Object[] param,
			Integer page, Integer rows) {
		return baseDao.find(hql, param, page, rows);
	}

	@Override
	public <T extends BaseModel> List<T> find(String hql, List<Object> param,
			Integer page, Integer rows) {
		return baseDao.find(hql, param, page, rows);
	}

	@Override
	public <T extends BaseModel> T get(Class<T> c, Serializable id) {
		return baseDao.get(c, id);
	}

	@Override
	public <T extends BaseModel> T get(String hql, Object... param) {
		return baseDao.get(hql, param);
	}

	@Override
	public <T extends BaseModel> T get(String hql, List<Object> param) {
		return baseDao.get(hql, param);
	}

	@Override
	public Long count(String hql) {
		return baseDao.count(hql);
	}

	@Override
	public Long count(String hql, Object[] param) {
		return baseDao.count(hql, param);
	}

	@Override
	public Long count(String hql, List<Object> param) {
		return baseDao.count(hql, param);
	}

	@Override
	public Integer executeHql(String hql) {
		return baseDao.executeHql(hql);
	}

	@Override
	public Integer executeHql(String hql, Object[] param) {
		return baseDao.executeHql(hql, param);
	}

	@Override
	public Integer executeHql(String hql, List<Object> param) {
		return baseDao.executeHql(hql, param);
	}

}
