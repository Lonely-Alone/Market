package app.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import app.dao.GoodDao;
import app.models.enums.GoodType;
import app.models.goods.Good;

@Repository("goodDao")
@SuppressWarnings("all")
public class GoodDaoImpl extends BaseDaoImpl implements GoodDao {

	@Override
	public Good saveGood(Good good) {
		return (Good) save(good);
	}

	@Override
	public Good getGood(long id) {
		return (Good) find(Good.class, id);
	}

	@Override
	public void addGood(Good good, int num) {
		good.leftCount += num;
		save(good);

	}

	@Override
	public List<Good> getGoodList(String name, String type, int page,
			int pageSize) {
		String hql = "select g from Good g where g.isDeleted = false ";
		List<Object> list = new ArrayList<Object>();
		if (StringUtils.isNotBlank(name)) {
			list.add("%" + name + "%");
			hql += "and g.name like ?";
		}
		if (StringUtils.isNotBlank(type)) {
			hql += " and  g.goodType=?";
			list.add(GoodType.书籍);
		}
		return fetch(hql, list, page, pageSize);
	}

	public void removeGood(long goodId) {
		Good good = getGood(goodId);
		good.isDeleted = true;
		save(good);
	}

	public void removeGoods(String goodIds) {
		List<String> idList = new ArrayList<String>();
		for (String id : goodIds.split(",")) {
			removeGood(Long.parseLong(id));
		}
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
