package app.dao;

import java.util.List;

import app.models.goods.Cart;
import app.models.goods.Good;

public interface CartDao {

	public void saveCart(Cart cart);

	public void addToCart(Good good, int num);

	public void deleteFromCart(Good good);

	public Long getTotalNum();

	public float getTotalPrice();

	public void editCart(Good good, long num);

	public void clearCart();

	public Cart findCartByMember();

	public List<Good> fetchGoodByCart();

}
