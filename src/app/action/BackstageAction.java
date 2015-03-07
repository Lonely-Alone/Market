package app.action;

import java.util.List;

import javax.annotation.Resource;

import app.models.goods.Good;
import app.service.GoodService;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
public class BackstageAction extends BaseAction implements ModelDriven<Good> {

	private Good good;

	public Integer page;

	public String goodType;

	@Resource(name = "goodService")
	private GoodService goodService;

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	public String manageGoods() throws Exception {
		page = page == null ? 1 : page;
		List<Good> list = goodService.getGoodList(good.name, goodType, page,
				PAGESIZE);
		int goodCount = goodService.getTotalNum(good.name, goodType);
		int pageCount = goodCount / PAGESIZE == 0 ? goodCount / PAGESIZE
				: goodCount / PAGESIZE + 1;
		request.setAttribute("goodList", list);
		request.setAttribute("goodCount", goodCount);
		request.setAttribute("pageCount", pageCount);
		return SUCCESS;
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
