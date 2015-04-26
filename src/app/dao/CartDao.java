package app.dao;

import java.util.List;

import app.models.goods.Cart;
import app.models.goods.Cart_Good;
import app.models.goods.Good;
import app.models.member.Member;

public interface CartDao {

	public void saveCart(Cart cart);

	public void addToCart(Good good, long num, Member member);

	public void deleteFromCart(Good good, Member member);

	public Long getTotalNum(Member member);

	public float getTotalPrice(Member member);

	public void editCart(Good good, long num, Member member);

	public void clearCart(Member member);

	public Cart findCartByMember(Member member);

	public List<Good> fetchGoodByCart(Member member);

	public List<Cart_Good> fetchByMember(Member member);

}
