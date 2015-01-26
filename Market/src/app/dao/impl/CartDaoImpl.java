package app.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import util.CommonUtils;
import app.dao.CartDao;
import app.dao.CartGoodDao;
import app.models.goods.Cart;
import app.models.goods.Cart_Good;
import app.models.goods.Good;
import app.models.member.Member;

@SuppressWarnings("all")
@Repository("cartDao")
public class CartDaoImpl extends BaseDaoImpl implements CartDao {

	@Resource
	private CartGoodDao cartGoodDao;

	public void saveCart(Cart cart) {
		save(cart);
	}

	@Override
	public void addToCart(Good good, int num) {
		Cart myCart = findCartByMember();
		if (myCart == null) {
			myCart = new Cart();
			myCart.member = CommonUtils.getCurrentMember();
			saveCart(myCart);
		}
		Cart_Good cartGood = cartGoodDao.findByCartAndGood(myCart, good);
		if (cartGood == null) {
			cartGood = new Cart_Good();
			cartGood.cart = myCart;
			cartGood.good = good;
			cartGood.num = num;
			cartGoodDao.saveCartGood(cartGood);
		} else if (cartGood.isDeleted) {
			cartGood.isDeleted = false;
			cartGoodDao.saveCartGood(cartGood);
		}
	}

	@Override
	public void deleteFromCart(Good goods) {
		Cart_Good cartGoods = cartGoodDao.findByCartAndGood(findCartByMember(),
				goods);
		if (cartGoods != null) {
			cartGoods.isDeleted = true;
			save(cartGoods);
		}

	}

	public List<Good> fetchGoodByCart() {
		return cartGoodDao.fetchGooListByCart(findCartByMember());
	}

	@Override
	public Long getTotalNum() {
		return cartGoodDao.totalNum(findCartByMember());
	}

	@Override
	public float getTotalPrice() {
		return cartGoodDao.totalPrice(findCartByMember());
	}

	@Override
	public void editCart(Good goods, long num) {
		Cart_Good cartGoods = cartGoodDao.findByCartAndGood(findCartByMember(),
				goods);
		cartGoods.num = num;
		saveOrupdate(cartGoods);
	}

	@Override
	public void clearCart() {
		cartGoodDao.clearCart(findCartByMember());

	}

	@Override
	public Cart findCartByMember() {
		Member member = CommonUtils.getCurrentMember();
		return (Cart) find("select c from Cart c where c.member = ?", member);
	}

}
