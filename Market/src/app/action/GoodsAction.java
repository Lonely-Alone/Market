package app.action;

import java.util.List;

import javax.annotation.Resource;

import util.CommonUtils;
import app.models.goods.Goods;
import app.service.GoodsService;
import app.util.Result;

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

	public String addGoodsToCart() throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		if (CommonUtils.getCurrentMember() == null) {
			out.write(Result.failed("未登录,请先登录！"));
			return null;
		}

		Goods goods = goodsService.getGoods(goodsId);
		goodsService.addToCart(goods);
		List<Goods> list = goodsService.getGoodsListByCart();
		float totaoPrice = goodsService.getTotalPrice();
		int totalNum = goodsService.getTotalNum();
		session.put("myCart", list);
		session.put("totalPrice", totaoPrice);
		session.put("totalNum", totalNum);
		if (list != null)
			return SUCCESS;
		out.write(Result.failed("添加失败！"));
		return null;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public long getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(long goodsId) {
		this.goodsId = goodsId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGoodsType() {
		return goodsType;
	}

	public void setGoodsType(String goodsType) {
		this.goodsType = goodsType;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

}
