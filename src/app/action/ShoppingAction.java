package app.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;

import org.apache.commons.lang.StringUtils;

import util.CommonUtils;
import app.models.goods.Cart_Good;
import app.models.goods.Good;
import app.models.member.Member;
import app.service.GoodService;
import app.util.Result;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
public class ShoppingAction extends BaseAction implements ModelDriven<Good> {

	@Resource
	private GoodService goodService;

	public Good good;

	public String goodIds;// 批量删除商品的Ids

	public long num;

	public String addGoodToCart() throws Exception {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		num = num == 0 ? 1 : num;
		Member member = CommonUtils.getCurrentMember();
		Good goods = null;
		if (good.id != null && good.id > 0) {//
			String value = getDataFromCookie("good_" + good.id);
			if (StringUtils.isBlank(value)) {
				goods = goodService.getGood(good.id);
				addCookie("good_" + good.id, num + "");
				if (member != null) {
					goodService.addToCart(goods, num, member);
				}
			}
		}
		return SUCCESS;
	}

	public String goToCart() throws Exception {
		Member member = CommonUtils.getCurrentMember();
		if (member == null) {
			readShoppingCartFromCookie();
		} else {
			readShoppingCartFromDB();
		}
		return SUCCESS;
	}

	public void deleteGoodFromCart() {
		Good goods = goodService.getGood(good.id);
		// goodService.deleteFromCart(goods);
		out.write(Result.succeed(null));
	}

	public void deleteGoodsFromCart() {
		String[] ids = goodIds.split(",");
		// goodService.deleteGoodByIds(ids);
		for (String key : ids) {
			deleteFromCookie(key);
		}
		readShoppingCartFromCookie();

		out.write(Result.succeed(null));
	}

	public void readShoppingCartFromCookie() {
		Cookie cookies[] = request.getCookies();
		Map<Good, Long> map = new HashMap<Good, Long>();
		float totaoPrice = 0.0f;
		long totalNum = 0l;
		if (cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				String key = cookie.getName();
				if (key.contains("good_")) {
					Long goodNum = Long.parseLong(cookie.getValue());
					Good g = goodService.getGood(Long.parseLong(key
							.substring(5)));
					totalNum += goodNum;
					totaoPrice += g.realPrice * goodNum;
					map.put(g, goodNum);
				}
			}
			session.put("myCart", map);
			session.put("totalPrice", totaoPrice);
			session.put("totalNum", totalNum);
		}
	}

	public void readShoppingCartFromDB() {
		Cookie cookies[] = request.getCookies();
		Member member = CommonUtils.getCurrentMember();
		Map<Good, Long> map = new HashMap<Good, Long>();
		List<Cart_Good> list = goodService.fetchByMember(member);
		float totaoPrice = 0.0f;
		long totalNum = 0l;
		for (Cart_Good cg : list) {
			long num = cg.num;
			totalNum += cg.num;
			totaoPrice += cg.good.realPrice * cg.num;
			map.put(cg.good, num);
		}
		session.put("myCart", map);
		session.put("totalPrice", totaoPrice);
		session.put("totalNum", totalNum);
	}

	public void peristShoppingCart() {
		Cookie cookies[] = request.getCookies();
		Member member = CommonUtils.getCurrentMember();
		if (member != null && cookies != null && cookies.length > 0) {
			for (Cookie cookie : cookies) {
				String key = cookie.getName();
				if (key.contains("good_")) {
					Long goodNum = Long.parseLong(cookie.getValue());
					Good g = goodService.getGood(Long.parseLong(key
							.substring(5)));
					goodService.addToCart(g, num, member);// 添加或者修改

				}
			}
			removeAllCookies();
		}

	}

	@Override
	public Good getModel() {
		if (good == null) {
			good = new Good();
		}
		return good;
	}

}
