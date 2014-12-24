package app.action;

import javax.annotation.Resource;

import app.models.goods.Book;
import app.service.GoodsService;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class ApplicationAction extends BaseAction implements ModelDriven<Book> {

	private Book book;

	@Resource
	private GoodsService goodsService;

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public void index() throws Exception {
		if (session.get("member") != null) {
			response.sendRedirect("/views/application/main.jsp");
		} else {
			response.sendRedirect("/views/application/Login.jsp");
		}
		out.flush();
		out.close();
		return;
	}

	public String addGoods() throws Exception {
		request.setCharacterEncoding("UTF-8");
		System.err.println(book.name);
		goodsService.saveGoods(book);
		return null;
	}

	@Override
	public Book getModel() {
		if (book == null) {
			book = new Book();
		}
		return book;
	}

}
