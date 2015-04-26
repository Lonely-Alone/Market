package app.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import app.dao.CartGoodDao;
import app.models.goods.Cart;
import app.models.goods.Cart_Good;
import app.models.goods.Good;

@Repository("cartGoodDao")
@SuppressWarnings("all")
public class CartGoodDaoImpl extends BaseDaoImpl implements CartGoodDao {

	public void saveCartGood(Cart_Good cartGood) {
		save(cartGood);
	}

	@Override
	public Cart_Good findByCartAndGoodId(Cart cart, long goodId) {
		return (Cart_Good) find(
				"select cg from Cart_Good cg where  cg.cart = ? and cg.good.id = ? ",
				cart, goodId);
	}

	@Override
	public Cart_Good findByCartAndGood(Cart cart, Good good) {
		return (Cart_Good) find(
				"select cg from Cart_Good cg where  cg.cart = ? and cg.good = ? ",
				cart, good);
	}

	@Override
	public List<Cart_Good> fetchByCart(Cart cart) {
		return fetch(
				"select cg from Cart_Good cg where cg.isDeleted = false and cg.cart = ? ",
				cart);
	}

	@Override
	public List<Good> fetchGooListByCart(Cart cart) {
		return fetch(
				"select cg.good from Cart_Good cg where cg.isDeleted = false and cg.cart = ?  ",
				cart);
	}

	@Override
	public List<Cart_Good> fetchGooListByIds(String[] goodIds) {
		return fetch(
				"select cg from Cart_Good cg where cg.isDeleted = false and cg.id in(:?)  ",
				goodIds);
	}

	public Long totalNum(Cart cart) {
		return count(
				"select sum(cg.num) from Cart_Good cg where cg.isDeleted = false and cg.isDeleted = false and cg.cart = ?",
				cart);

	}

	public float totalPrice(Cart cart) {
		return count(
				"select sum(cg.good.price) from Cart_Good cg.isDeleted = false and cg where cg.isDeleted = false and cg.cart = ?",
				cart);

	}

	public void clearCart(Cart cart) {
		executeHql(
				"update Cart_Good cg set cg.isDeleted = false and cg.cart = ?",
				cart);
	}

}
