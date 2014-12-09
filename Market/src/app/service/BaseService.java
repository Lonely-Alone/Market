package app.service;

import java.io.Serializable;
import java.util.List;

import app.models.BaseModel;

@SuppressWarnings("hiding")
public interface BaseService<T> {

	public Serializable save(T o);

	public void delete(T o);

	public void update(T o);

	public void saveOrUpdate(T o);

	public <T extends BaseModel> List<T> find(String hql);

	public <T extends BaseModel> List<T> find(String hql, Object... param);

	public <T extends BaseModel> List<T> find(String hql, List<Object> param);

	public <T extends BaseModel> List<T> find(String hql, Object[] param,
			Integer page, Integer rows);

	public <T extends BaseModel> List<T> find(String hql, List<Object> param,
			Integer page, Integer rows);

	public <T extends BaseModel> T get(Class<T> c, Serializable id);

	public <T extends BaseModel> T get(String hql, Object... param);

	public <T extends BaseModel> T get(String hql, List<Object> param);

	public Long count(String hql);

	public Long count(String hql, Object[] param);

	public Long count(String hql, List<Object> param);

	public Integer executeHql(String hql);

	public Integer executeHql(String hql, Object[] param);

	public Integer executeHql(String hql, List<Object> param);

}
