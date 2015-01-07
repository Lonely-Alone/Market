package app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import util.CommonUtils;
import app.dao.CartDao;
import app.dao.CartGoodsDao;
import app.dao.GoodsDao;
import app.dao.MemberDao;
import app.models.goods.Cart;
import app.models.goods.Cart_Goods;
import app.models.goods.Goods;
import app.models.member.Member;
import app.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Resource
	private GoodsDao goodsDao;

	@Resource
	private CartDao cartDao;

	@Resource
	private CartGoodsDao cartGoodsDao;

	@Resource
	private MemberDao memberDao;

	public void saveGoods(Goods goods) {
		goodsDao.saveGoods(goods);
	}

	@Override
	public Goods getGoods(long id) {
		return goodsDao.getGoods(id);
	}

	@Override
	public List<Goods> getGoodsList(String name, String type, int page, int size) {
		return goodsDao.getGoodsList(name, type, page, size);
	}

	@Override
	public List<Goods> getGoodsListByCart() {
		return cartDao.fetchGoodsByCart();
	}

	@Override
	public int getTotalPage(String name, String type) {
		return goodsDao.getTotalPage(name, type);
	}

	@Override
	public void addToCart(Goods goods) {
		Member member = CommonUtils.getCurrentMember();
		Cart myCart = cartDao.findCartByMember(member);
		if (myCart == null) {
			myCart = new Cart();
			myCart.member = CommonUtils.getCurrentMember();
			cartDao.saveCart(myCart);
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
		cartDao.deleteFromCart(goods);

	}

	@Override
	public int getTotalNum() {
		return cartDao.getTotalNum();
	}

	@Override
	public float getTotalPrice() {
		return cartDao.getTotalPrice();
	}

	@Override
	public void editCart(Goods goods, long num) {
		cartDao.editCart(goods, num);

	}

	@Override
	public void clearCart() {
		cartDao.clearCart();
	}

}
