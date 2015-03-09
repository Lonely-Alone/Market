package app.action;

import java.util.List;

import javax.annotation.Resource;

import util.CommonUtils;
import app.models.goods.Cart_Good;
import app.models.goods.Good;
import app.service.GoodService;
import app.service.impl.AttachServiceImpl;
import app.util.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.interceptor.PreResultListener;

@SuppressWarnings("all")
public class GoodAction extends BaseAction implements ModelDriven<Good> {

	@Resource
	private GoodService goodsService;

	@Resource
	private AttachServiceImpl attachService;

	public Integer page;

	public String goodsArr;// 批量删除商品的Ids

	public String goodType;

	public int num;

	private Good good;

	public String picUrls;

	@Resource(name = "goodService")
	private GoodService goodService;

	public void saveGood() throws Exception {
		out = response.getWriter();
		goodService.saveGood(good);
		goodService.saveGood(good, picUrls);
		ActionContext.getContext().getActionInvocation()
				.addPreResultListener(new PreResultListener() {
					@Override
					public void beforeResult(ActionInvocation arg0, String arg1) {
						good.goodSerial = CommonUtils.serial(good.id);
						goodService.saveGood(good);
					}
				});
		out.write(Result.succeed(true, "商品添加成功！"));
	}

	public String getGood() {
		Good goods = goodsService.getGood(good.id);
		request.setAttribute("good", goods);
		request.setAttribute("attchs", attachService.getPictuesByGood(goods));
		return SUCCESS;
	}

	public String getGoodList() {
		if (page == null) {
			page = 1;
		}
		List<Good> list = goodsService.getGoodList(good.name, goodType, page,
				PAGESIZE);
		int goodCount = goodsService.getTotalNum(good.name, goodType);
		int pageCount = goodCount / PAGESIZE == 0 ? goodCount / PAGESIZE
				: goodCount / PAGESIZE + 1;
		request.setAttribute("goodsList", list);
		request.setAttribute("page", page);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("goodsType", goodType);
		return SUCCESS;
	}

	public String addGoodToCart() throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		if (CommonUtils.getCurrentMember() == null) {
			out.write(Result.failed("未登录,请先登录！"));
			return null;
		}
		Good goods = goodsService.getGood(good.id);
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
		Good goods = goodsService.getGood(good.id);
		goodsService.deleteFromCart(goods);
		out.write(Result.succeed(null));
	}

	public void deleteGoodsFromCart() {
		String[] goodIds = goodsArr.split(",");
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
