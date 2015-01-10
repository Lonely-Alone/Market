package app.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import app.dao.GoodsDao;
import app.models.goods.Goods;
import app.models.goods.Goods.GoodsType;

@SuppressWarnings("all")
@Repository("goodsDao")
public class GoodsDaoImpl extends BaseDaoImpl implements GoodsDao {

	@Override
	public void saveGoods(Goods goods) {
		save(goods);
	}

	@Override
	public Goods getGoods(long id) {
		return (Goods) find(Goods.class, id);
	}

	@Override
	public List<Goods> getGoodsList(String name, String type, int page, int size) {
		String hql = "select g from Goods g where g.goodsType=?";
		List<Object> list = new ArrayList<Object>();
		list.add(GoodsType.book);
		if (StringUtils.isNotBlank(name)) {
			list.add("%" + name + "%");
			hql += "and g.name like ?";
		}
		return fetch(hql, list, page, size);
	}

	@Override
	public int getTotalPage(String name, String type) {
		List<Object> list = new ArrayList<Object>();
		list.add(type);
		list.add("%" + name + "%");
		return fetch(
				"select * from Goods g where g.goodsType=? and g.name like ?",
				list).size();
	}

}
