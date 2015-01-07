package app.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import app.dao.CartGoodsDao;
import app.models.goods.Cart;
import app.models.goods.Cart_Goods;
import app.models.goods.Goods;

@Repository("cartGoodsDao")
@SuppressWarnings("all")
@Transactional("transactionManager")
public class CartGoodsDaoImpl extends BaseDaoImpl implements CartGoodsDao {

	public void saveCartGoods(Cart_Goods cartGoods) {
		save(cartGoods);
	}

	@Override
	public Cart_Goods findByCartAndGoods(Cart cart, Goods goods) {
		return (Cart_Goods) find(
				"select cd from Cart_Goods cd where cd.cart = ? and cd.goods = ? ",
				cart, goods);
	}

	@Override
	public List<Cart_Goods> fetchByCart(Cart cart) {
		return fetch(
				"select cd from Cart_Goods cd where cd.cart = ? and cd.isDeleted = false ",
				cart);
	}

	@Override
	public List<Goods> fetchGoosListByCart(Cart cart) {
		return fetch(
				"select cd.goods from Cart_Goods cd where cd.cart = ? and cd.isDeleted = false ",
				cart);
	}

	public int totalNum(Cart cart) {
		return executeHql(
				"select sum(cd.num) form Cart_Goods cd where cd.isDeleted = false and cd.cart = ?",
				cart);

	}

	public float totalPrice(Cart cart) {
		return executeHql(
				"select sum(cd.price) form Cart_Goods cd where cd.isDeleted = false and cd.cart = ?",
				cart);

	}

	public void clearCart(Cart cart) {
		executeHql(
				"update Cart_Goods cd set cd.isDeleted = false and cd.cart = ?",
				cart);
	}

}
