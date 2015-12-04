package app.service;

import app.models.goods.Good;
import app.models.member.Member;
import app.models.order.OrderItem;
import app.models.order.OrderSum;

public interface OrderService {
	public OrderItem saveOrderItem(OrderSum orderSum, Good good, int amount,
			float soldPrice);

	public OrderSum saveOrderSum(Member owner);

	public void updateOrderSum(OrderSum sum);

}
