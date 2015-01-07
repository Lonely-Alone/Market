package app.dao;

import java.util.List;

import app.models.goods.Cart;
import app.models.goods.Goods;
import app.models.member.Member;

public interface CartDao {

	public void saveCart(Cart cart);

	public void addToCart(Goods goods);

	public void deleteFromCart(Goods goods);

	public int getTotalNum();

	public float getTotalPrice();

	public void editCart(Goods goods, long num);

	public void clearCart();

	public Cart findCartByMember(Member member);

	public List<Goods> fetchGoodsByCart();

}
