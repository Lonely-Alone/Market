package app.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import app.dao.GoodsDao;
import app.models.goods.Goods;

@SuppressWarnings("all")
@Repository
public class GoodsDaoImpl extends BaseDaoImpl implements GoodsDao {

	@Override
	public void saveGoods(Goods goods) {
		save(goods);
	}

	@Override
	public Goods getGoods(long id) {
		return (Goods) get(Goods.class, id);
	}

	@Override
	public List<Goods> getGoodsList(String name, String type, int page, int size) {
		List<Object> list = new ArrayList<Object>();
		list.add(type);
		list.add("%" + name + "%");
		return find(
				"select * from Goods g where g.goodsType=? and g.name like ?",
				list, page, size);
	}

	@Override
	public int getTotalPage(String name, String type) {
		List<Object> list = new ArrayList<Object>();
		list.add(type);
		list.add("%" + name + "%");
		return find(
				"select * from Goods g where g.goodsType=? and g.name like ?",
				list).size();
	}

}
