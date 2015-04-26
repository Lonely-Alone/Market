package app.service;

import java.util.List;

import app.models.goods.Cart_Good;
import app.models.goods.Good;
import app.models.member.Member;

public interface GoodService {

	public Good saveGood(Good good);

	public void saveGood(Good good, String picUrls);

	public Good getGood(long id);

	public List<Good> getGoodList(String name, String type, int page,
			int pageSize);

	public void removeGoods(String goodIds);

	public int getTotalNum(String name, String type);

	public void addToCart(Good good, long num, Member member);

	public void deleteFromCart(Good good, Member member);

	public void deleteGoodByIds(String[] goodIds, Member member);

	public Long getTotalNum(Member member);

	public float getTotalPrice(Member member);

	public void editCart(Good good, long num, Member member);

	public void clearCart(Member member);

	public List<Good> fetchGoodListByCart(Member member);

	public List<Cart_Good> fetchByMember(Member member);//

}
