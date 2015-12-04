package app.dao;

import java.util.List;

import app.models.goods.Good;

public interface GoodDao {
	public Good saveGood(Good good);

	public Good getGood(long id);

	public List<Good> getGoodList(String name, String type, int page,
			int pageSize);

	public void removeGood(long goodId);

	public void removeGoods(String goodIds);

	public int getTotalNum(String name, String type);

	public void addClick(Good good);

	public void addGood(Good good, int num);

}
