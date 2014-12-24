package app.action;

import java.util.List;

import javax.annotation.Resource;

import app.models.goods.Goods;
import app.service.GoodsService;

@SuppressWarnings("all")
public class GoodsAction extends BaseAction {

	@Resource
	private GoodsService goodsService;

	private long goodsId;

	private String name;

	private String goodsType;

	private int page;

	public String getGoods() {

		Goods goods = goodsService.getGoods(goodsId);
		request.setAttribute("goods", goods);
		return SUCCESS;
	}

	public String getGoodsList() {
		List<Goods> list = goodsService.getGoodsList(name, goodsType, page,
				size);
		request.setAttribute("goodsList", list);
		return SUCCESS;
	}
}
