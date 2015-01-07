package app.dao;

import java.util.List;

import app.models.goods.Cart;
import app.models.goods.Cart_Goods;
import app.models.goods.Goods;

public interface CartGoodsDao {

	public void saveCartGoods(Cart_Goods cartGoods);

	public Cart_Goods findByCartAndGoods(Cart cart, Goods goods);

	public List<Cart_Goods> fetchByCart(Cart cart);

	public List<Goods> fetchGoosListByCart(Cart cart);

	public int totalNum(Cart cart);

	public float totalPrice(Cart cart);

	public void clearCart(Cart cart);

}
