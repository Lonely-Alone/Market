package app.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import app.dao.OrderDao;
import app.models.goods.Good;
import app.models.member.Member;
import app.models.order.OrderItem;
import app.models.order.OrderSum;
import app.service.OrderService;

@Service
public class OrderServiceImpl implements OrderService {

	@Resource
	private OrderDao orderDao;

	@Override
	public OrderItem saveOrderItem(OrderSum orderSum, Good good, int amount,
			float soldPrice) {
		return orderDao.createOrderItem(orderSum, good, amount, soldPrice);
	}

	@Override
	public OrderSum saveOrderSum(Member owner) {
		return orderDao.createOrderSum(owner);
	}

	@Override
	public void updateOrderSum(OrderSum sum) {
		orderDao.updateOrderSum(sum);
	}

}
