package app.service;

import java.util.List;

import app.models.goods.Goods;

public interface GoodsService {

	public void saveGoods(Goods goods);

	public Goods getGoods(long id);

	public List<Goods> getGoodsList(String name, String type, int page, int size);

	public int getTotalPage(String name, String type);

	public void addToCart(Goods goods);

	public void deleteFromCart(Goods goods);

	public int getTotalNum();

	public float getTotalPrice();

	public void editCart(Goods goods, long num);

	public void clearCart();

	List<Goods> getGoodsListByCart();

}
