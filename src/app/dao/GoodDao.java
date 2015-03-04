package app.dao;

import java.util.List;

import app.models.goods.Good;

public interface GoodDao {
	public void saveGood(Good good);

	public Good getGood(long id);

	public List<Good> getGoodList(String name, String type, int page,
			int pageSize);

	public int getTotalNum(String name, String type);

	public void addClick(Good good);

}
