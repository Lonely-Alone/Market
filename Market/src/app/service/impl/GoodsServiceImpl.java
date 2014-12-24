package app.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import app.dao.GoodsDao;
import app.models.goods.Goods;
import app.service.GoodsService;

@Service
public class GoodsServiceImpl implements GoodsService {

	@Resource
	private GoodsDao goodsDao;

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
	public int getTotalPage(String name, String type) {
		return goodsDao.getTotalPage(name, type);
	}

}
