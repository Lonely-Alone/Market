package app.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import app.dao.AttachDao;
import app.dao.CartDao;
import app.dao.CartGoodDao;
import app.dao.GoodDao;
import app.dao.MemberDao;
import app.models.goods.Cart;
import app.models.goods.Cart_Good;
import app.models.goods.Good;
import app.service.GoodService;

@Service("goodService")
@Transactional
public class GoodServiceImpl implements GoodService {

	@Resource
	private GoodDao goodDao;

	@Resource
	private CartDao cartDao;

	@Resource
	private CartGoodDao cartGoodsDao;

	@Resource
	private MemberDao memberDao;

	@Resource
	private AttachDao attachmentDao;

	public Good saveGood(Good good) {
		return goodDao.saveGood(good);

	}

	public void saveGood(Good good, String picUrls) {
		goodDao.saveGood(good);
		attachmentDao.updateGoodPictures(good, picUrls);
	}

	@Override
	public Good getGood(long id) {
		return goodDao.getGood(id);
	}

	@Override
	public List<Good> getGoodList(String name, String type, int page,
			int pageSize) {
		return goodDao.getGoodList(name, type, page, pageSize);
	}

	@Override
	public List<Good> getGoodListByCart() {
		return cartDao.fetchGoodByCart();
	}

	public void removeGoods(String goodIds) {
		goodDao.removeGoods(goodIds);
	}

	@Override
	public int getTotalNum(String name, String type) {
		return goodDao.getTotalNum(name, type);
	}

	@Override
	public void addToCart(Good good, int num) {
		cartDao.addToCart(good, num);
	}

	@Override
	public void deleteFromCart(Good good) {
		cartDao.deleteFromCart(good);

	}

	@Override
	public List<Cart_Good> getTotal() {
		List<Cart_Good> goodsList = cartGoodsDao.fetchByCart(cartDao
				.findCartByMember());
		return goodsList;
	}

	@Override
	public Long getTotalNum() {
		List<Cart_Good> goodsList = cartGoodsDao.fetchByCart(cartDao
				.findCartByMember());
		Long totalNum = 0l;
		for (Cart_Good good : goodsList) {
			totalNum += good.num;
		}
		return totalNum;
	}

	@Override
	public void deleteGoodByIds(String[] goodIds) {
		Cart cart = cartDao.findCartByMember();
		for (String id : goodIds) {
			Cart_Good cgood = cartGoodsDao.findByCartAndGoodId(cart,
					Long.parseLong(id));
			cgood.isDeleted = true;
			cartGoodsDao.saveCartGood(cgood);
		}
	}

	@Override
	public float getTotalPrice() {
		List<Cart_Good> goodList = cartGoodsDao.fetchByCart(cartDao
				.findCartByMember());
		float totalPrice = 0f;
		for (Cart_Good good : goodList) {
			float price = good.num * good.good.realPrice;
			totalPrice += price;
		}
		return totalPrice;
	}

	@Override
	public void editCart(Good good, long num) {
		cartDao.editCart(good, num);

	}

	@Override
	public void clearCart() {
		cartDao.clearCart();
	}

}
