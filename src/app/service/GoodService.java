package app.service;

import java.util.List;

import app.models.goods.Cart_Good;
import app.models.goods.Good;

public interface GoodService {

	public Good saveGood(Good good);

	public void saveGood(Good good, String picUrls);

	public Good getGood(long id);

	public List<Good> getGoodList(String name, String type, int page,
			int pageSize);

	public int getTotalNum(String name, String type);

	public void addToCart(Good good, int num);

	public void deleteFromCart(Good good);

	public void deleteGoodByIds(String[] goodIds);

	public Long getTotalNum();

	public float getTotalPrice();

	public void editCart(Good good, long num);

	public void clearCart();

	public List<Good> getGoodListByCart();

	public List<Cart_Good> getTotal();//

}
