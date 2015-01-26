package app.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import app.dao.GoodDao;
import app.models.goods.Good;
import app.models.goods.Good.GoodsType;

@SuppressWarnings("all")
@Repository("goodDao")
public class GoodDaoImpl extends BaseDaoImpl implements GoodDao {

	@Override
	public void saveGood(Good good) {
		save(good);
	}

	@Override
	public Good getGood(long id) {
		return (Good) find(Good.class, id);
	}

	@Override
	public List<Good> getGoodList(String name, String type, int page,
			int pageSize) {
		String hql = "select g from Good g where g.goodsType=?";
		List<Object> list = new ArrayList<Object>();
		list.add(GoodsType.convert2Enum(type));
		if (StringUtils.isNotBlank(name)) {
			list.add("%" + name + "%");
			hql += "and g.name like ?";
		}
		return fetch(hql, list, page, pageSize);
	}

	@Override
	public int getTotalNum(String name, String type) {
		return getGoodList(name, type, 1, Integer.MAX_VALUE).size();
	}

	@Override
	public void addClick(Good good) {
		good.clickCount++;
		saveGood(good);

	}

}
