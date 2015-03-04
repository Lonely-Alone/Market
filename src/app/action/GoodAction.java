package app.action;

import java.util.List;

import javax.annotation.Resource;

import util.CommonUtils;
import app.models.goods.Cart_Good;
import app.models.goods.Good;
import app.models.parameter.GoodDriven;
import app.service.GoodService;
import app.util.Result;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
public class GoodAction extends BaseAction implements ModelDriven<Good> {

	@Resource
	private GoodService goodsService;

	private GoodDriven goodDriven;

	private Good good;

	@Resource(name = "goodService")
	private GoodService goodService;

	public void saveGood() throws Exception {
		System.err.println(good.description);
		out = response.getWriter();
		goodService.saveGood(good);
		out.write(Result.succeed(true, "商品添加成功！"));
	}

	public String getGoods() {

		Good goods = goodsService.getGood(goodDriven.goodsId);
		request.setAttribute("goods", goods);
		return SUCCESS;
	}

	public String getGoodsList() {
		if (goodDriven.page == null) {
			goodDriven.page = 1;
		}
		List<Good> list = goodsService.getGoodList(goodDriven.name,
				goodDriven.goodsType, goodDriven.page, PAGESIZE);
		int goodCount = goodsService.getTotalNum(goodDriven.name,
				goodDriven.goodsType);
		int pageCount = goodCount / PAGESIZE == 0 ? goodCount / PAGESIZE
				: goodCount / PAGESIZE + 1;
		request.setAttribute("goodsList", list);
		request.setAttribute("page", goodDriven.page);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("goodsType", goodDriven.goodsType);
		return SUCCESS;
	}

	public String addGoodsToCart() throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		if (CommonUtils.getCurrentMember() == null) {
			out.write(Result.failed("未登录,请先登录！"));
			return null;
		}
		Good goods = goodsService.getGood(goodDriven.goodsId);
		goodsService.addToCart(goods, goodDriven.num);
		List<Good> list = goodsService.getGoodListByCart();
		List<Cart_Good> list1 = goodsService.getTotal();
		float totaoPrice = goodsService.getTotalPrice();
		long totalNum = goodsService.getTotalNum();
		session.put("myCart", list1);
		session.put("totalPrice", totaoPrice);
		session.put("totalNum", totalNum);
		if (list1 != null) {
			out.write(Result.succeed(null));
			return null;
		}
		out.write(Result.failed("添加失败！"));
		return null;
	}

	public void deleteGoodFromCart() {
		Good goods = goodsService.getGood(goodDriven.goodsId);
		goodsService.deleteFromCart(goods);
		out.write(Result.succeed(null));
	}

	public void deleteGoodsFromCart() {
		String[] goodIds = goodDriven.goodsArr.split(",");
		goodsService.deleteGoodByIds(goodIds);
		out.write(Result.succeed(null));
	}

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	@Override
	public Good getModel() {
		if (good == null) {
			good = new Good();
		}
		return good;
	}

	public GoodService getGoodService() {
		return goodService;
	}

}
