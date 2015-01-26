package app.action;

import java.util.List;

import javax.annotation.Resource;

import util.CommonUtils;
import app.models.goods.Cart_Good;
import app.models.goods.Good;
import app.service.GoodService;
import app.util.Result;

@SuppressWarnings("all")
public class GoodAction extends BaseAction {

	@Resource
	private GoodService goodsService;

	private long goodsId;

	private String name;

	private String goodsType;

	private String goodsArr;// 批量删除商品的Ids

	private Integer page;

	private int num;

	public String getGoods() {

		Good goods = goodsService.getGood(goodsId);
		request.setAttribute("goods", goods);
		return SUCCESS;
	}

	public String getGoodsList() {
		if (page == null) {
			page = 1;
		}
		List<Good> list = goodsService.getGoodList(name, goodsType, page,
				PAGESIZE);
		int goodCount = goodsService.getTotalNum(name, goodsType);
		int pageCount = goodCount / PAGESIZE == 0 ? goodCount / PAGESIZE
				: goodCount / PAGESIZE + 1;
		request.setAttribute("goodsList", list);
		request.setAttribute("page", page);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("goodsType", goodsType);
		return SUCCESS;
	}

	public String addGoodsToCart() throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		if (CommonUtils.getCurrentMember() == null) {
			out.write(Result.failed("未登录,请先登录！"));
			return null;
		}
		Good goods = goodsService.getGood(goodsId);
		goodsService.addToCart(goods, num);
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
		Good goods = goodsService.getGood(goodsId);
		goodsService.deleteFromCart(goods);
		out.write(Result.succeed(null));
	}

	public void deleteGoodsFromCart() {
		String[] goodIds = goodsArr.split(",");
		goodsService.deleteGoodByIds(goodIds);
		out.write(Result.succeed(null));
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

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public GoodService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodService goodsService) {
		this.goodsService = goodsService;
	}

	public String getGoodsArr() {
		return goodsArr;
	}

	public void setGoodsArr(String goodsArr) {
		this.goodsArr = goodsArr;
	}

}
