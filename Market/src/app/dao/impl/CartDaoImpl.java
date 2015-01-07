package app.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import app.dao.CartDao;
import app.dao.CartGoodsDao;
import app.models.goods.Cart;
import app.models.goods.Goods;
import app.models.member.Member;

@SuppressWarnings("all")
@Repository("cartDao")
public class CartDaoImpl extends BaseDaoImpl implements CartDao {

	@Resource
	private CartGoodsDao cartGoodsDao;

	public void saveCart(Cart cart) {
		save(cart);
	}

	@Override
	public void addToCart(Goods goods) {

	}

	@Override
	public void deleteFromCart(Goods goods) {
		// Cart_Goods cartGoods = cartGoodsDao.findByCartAndGoods(
		// findCartByMember(), goods);
		// if (cartGoods != null) {
		// cartGoods.isDeleted = true;
		// }
		// save(cartGoods);
	}

	public List<Goods> fetchGoodsByCart() {
		return null;
		// return cartGoodsDao.fetchGoosListByCart(findCartByMember());
	}

	@Override
	public int getTotalNum() {
		return 0;
		// return cartGoodsDao.totalNum(findCartByMember());
	}

	@Override
	public float getTotalPrice() {
		return 0;
		// return cartGoodsDao.totalPrice(findCartByMember());
	}

	@Override
	public void editCart(Goods goods, long num) {
		// Cart_Goods cartGoods = cartGoodsDao.findByCartAndGoods(
		// findCartByMember(), goods);
		// cartGoods.num = num;
		// save(cartGoods);
	}

	@Override
	public void clearCart() {
		// cartGoodsDao.clearCart(findCartByMember());

	}

	@Override
	public Cart findCartByMember(Member member) {
		return (Cart) find("select c from Cart c where c.member = ?", member);
	}

}
