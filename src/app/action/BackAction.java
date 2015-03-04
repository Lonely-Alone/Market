package app.action;

import javax.annotation.Resource;

import org.springframework.transaction.annotation.Transactional;

import app.models.goods.Good;
import app.service.GoodService;
import app.util.Result;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
public class BackAction extends BaseAction implements ModelDriven<Good> {

	private Good good;

	@Resource(name = "goodService")
	private GoodService goodService;

	public void setGoodService(GoodService goodService) {
		this.goodService = goodService;
	}

	@Transactional
	public void saveGood() throws Exception {
		out = response.getWriter();
		goodService.saveGood(good);
		out.write(Result.succeed(true, "商品添加成功！"));
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
