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
	public void addToCart(Good good, long num, Member member) {
		Cart myCart = findCartByMember(member);
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
			cartGood.num = num;
			cartGoodDao.saveCartGood(cartGood);
		}
	}

	@Override
	public void deleteFromCart(Good good, Member member) {
		Cart_Good cartGood = cartGoodDao.findByCartAndGood(
				findCartByMember(member), good);
		if (cartGood != null) {
			cartGood.isDeleted = true;
			save(cartGood);
		}

	}

	@Override
	public List<Good> fetchGoodByCart(Member member) {
		return cartGoodDao.fetchGooListByCart(findCartByMember(member));
	}

	@Override
	public List<Cart_Good> fetchByMember(Member member) {
		return cartGoodDao.fetchByCart(findCartByMember(member));

	}

	@Override
	public Long getTotalNum(Member member) {
		return cartGoodDao.totalNum(findCartByMember(member));
	}

	@Override
	public float getTotalPrice(Member member) {
		return cartGoodDao.totalPrice(findCartByMember(member));
	}

	@Override
	public void editCart(Good goods, long num, Member member) {
		Cart_Good cartGoods = cartGoodDao.findByCartAndGood(
				findCartByMember(member), goods);
		cartGoods.num = num;
		saveOrupdate(cartGoods);
	}

	@Override
	public void clearCart(Member member) {
		cartGoodDao.clearCart(findCartByMember(member));

	}

	@Override
	public Cart findCartByMember(Member member) {
		return (Cart) find("select c from Cart c where c.member = ?", member);
	}

}
