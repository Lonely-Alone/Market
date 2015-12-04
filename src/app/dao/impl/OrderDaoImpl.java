package app.dao.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import util.CommonUtils;
import app.dao.GoodDao;
import app.dao.OrderDao;
import app.models.goods.Good;
import app.models.member.Member;
import app.models.order.OrderItem;
import app.models.order.OrderSum;

@Repository
@SuppressWarnings("all")
public class OrderDaoImpl extends BaseDaoImpl implements OrderDao {

	@Resource
	public GoodDao goodDao;

	@Override
	public OrderItem createOrderItem(OrderSum orderSum, Good good, int amount,
			float soldPrice) {
		OrderItem item = new OrderItem();
		item.orderSum = orderSum;
		item.good = good;
		item.amount = amount;
		item.soldPrice = soldPrice;
		save(item);
		goodDao.addGood(good, -1 * amount);// 商品数量减一（若订单取消，则数量加一）
		return item;
	}

	@Override
	public OrderSum createOrderSum(Member owner) {
		OrderSum sum = new OrderSum();
		save(sum);
		sum.orderSerial = CommonUtils.serial(sum.id);
		sum.owner = owner;
		save(sum);
		return sum;
	}

	@Override
	public void updateOrderSum(OrderSum sum) {
		save(sum);
	}

	@Override
	public void updatePayMode(String payMode) {

	}

}
