package app.action;

import java.util.List;

import javax.annotation.Resource;

import util.CommonUtils;
import app.models.enums.GoodType;
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
	private GoodService goodService;

	@Resource
	private AttachServiceImpl attachService;

	public Integer page;

	public String goodIds;// 批量删除商品的Ids

	public String type;

	public int num;

	public Good good;

	public String picUrls;

	public void saveGood() throws Exception {
		out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		goodService.saveGood(good, picUrls);
		ActionContext.getContext().getActionInvocation()
				.addPreResultListener(new PreResultListener() {
					@Override
					public void beforeResult(ActionInvocation arg0, String arg1) {
						good.goodSerial = CommonUtils.serial(good.id);
						goodService.saveGood(good);
					}
				});
		out.write(Result.success("商品添加成功！"));
	}

	public String getGood() {
		Good good_ = goodService.getGood(good.id);
		request.setAttribute("good", good_);
		request.setAttribute("attchs", attachService.getPictuesByGood(good_));
		return SUCCESS;
	}

	public String getGoodList() throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		type = new String(type.getBytes("utf-8"));
		if (page == null) {
			page = 1;
		}
		List<Good> list = goodService.getGoodList(good.name, type, page,
				PAGESIZE);
		int goodCount = goodService.getTotalNum(good.name, type);
		int pageCount = (goodCount - 1) / PAGESIZE + 1;
		request.setAttribute("goodList", list);
		request.setAttribute("page", page);
		request.setAttribute("pageCount", pageCount);
		request.setAttribute("goodType", GoodType.converToEnum(type));
		return SUCCESS;
	}

	public void removeGoods() {
		goodService.removeGoods(goodIds);
		out.write(Result.succeed(null));
	}

	public String addGoodToCart() throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		if (CommonUtils.getCurrentMember() == null) {
			out.write(Result.failed("未登录,请先登录！"));
			return null;
		}
		Good goods = goodService.getGood(good.id);
		goodService.addToCart(goods, num);
		List<Good> list = goodService.getGoodListByCart();
		List<Cart_Good> list1 = goodService.getTotal();
		float totaoPrice = goodService.getTotalPrice();
		long totalNum = goodService.getTotalNum();
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
		Good goods = goodService.getGood(good.id);
		goodService.deleteFromCart(goods);
		out.write(Result.succeed(null));
	}

	public void deleteGoodsFromCart() {
		String[] ids = goodIds.split(",");
		goodService.deleteGoodByIds(ids);
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
