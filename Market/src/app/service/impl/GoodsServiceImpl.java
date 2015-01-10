package app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import app.dao.CartDao;
import app.dao.CartGoodsDao;
import app.dao.GoodsDao;
import app.dao.MemberDao;
import app.models.goods.Goods;
import app.service.GoodsService;

@Service
@Transactional("transactionManager")
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
		cartDao.addToCart(goods);
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
