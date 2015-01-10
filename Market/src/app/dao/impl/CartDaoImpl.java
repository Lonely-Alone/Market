package app.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import util.CommonUtils;
import app.dao.CartDao;
import app.dao.CartGoodsDao;
import app.models.goods.Cart;
import app.models.goods.Cart_Goods;
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
		Cart myCart = findCartByMember();
		if (myCart == null) {
			myCart = new Cart();
			myCart.member = CommonUtils.getCurrentMember();
			saveCart(myCart);
		}
		Cart_Goods cartGoods = cartGoodsDao.findByCartAndGoods(myCart, goods);
		if (cartGoods == null) {
			cartGoods = new Cart_Goods();
			cartGoods.cart = myCart;
			cartGoods.goods = goods;
			cartGoodsDao.saveCartGoods(cartGoods);
		} else if (cartGoods.isDeleted) {
			cartGoods.isDeleted = false;
			cartGoodsDao.saveCartGoods(cartGoods);
		}
	}

	@Override
	public void deleteFromCart(Goods goods) {
		Cart_Goods cartGoods = cartGoodsDao.findByCartAndGoods(
				findCartByMember(), goods);
		if (cartGoods != null) {
			cartGoods.isDeleted = true;
			save(cartGoods);
		}

	}

	public List<Goods> fetchGoodsByCart() {
		return cartGoodsDao.fetchGoosListByCart(findCartByMember());
	}

	@Override
	public int getTotalNum() {
		return cartGoodsDao.totalNum(findCartByMember());
	}

	@Override
	public float getTotalPrice() {
		return cartGoodsDao.totalPrice(findCartByMember());
	}

	@Override
	public void editCart(Goods goods, long num) {
		Cart_Goods cartGoods = cartGoodsDao.findByCartAndGoods(
				findCartByMember(), goods);
		cartGoods.num = num;
		saveOrupdate(cartGoods);
	}

	@Override
	public void clearCart() {
		cartGoodsDao.clearCart(findCartByMember());

	}

	@Override
	public Cart findCartByMember() {
		Member member = CommonUtils.getCurrentMember();
		return (Cart) find("select c from Cart c where c.member = ?", member);
	}

}
