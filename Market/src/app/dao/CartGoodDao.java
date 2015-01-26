package app.dao;

import java.util.List;

import app.models.goods.Cart;
import app.models.goods.Cart_Good;
import app.models.goods.Good;

public interface CartGoodDao {

	public void saveCartGood(Cart_Good cartGood);

	public Cart_Good findByCartAndGood(Cart cart, Good good);

	public List<Cart_Good> fetchByCart(Cart cart);

	public List<Good> fetchGooListByCart(Cart cart);

	public Long totalNum(Cart cart);

	public float totalPrice(Cart cart);

	public void clearCart(Cart cart);

	public List<Cart_Good> fetchGooListByIds(String[] goodIds);

	public Cart_Good findByCartAndGoodId(Cart cart, long goodId);

}
