package app.dao;

import app.models.goods.Good;
import app.models.member.Member;
import app.models.order.OrderItem;
import app.models.order.OrderSum;

public interface OrderDao {

	public OrderItem createOrderItem(OrderSum orderSum, Good good, int amount,
			float soldPrice);

	public OrderSum createOrderSum(Member owner);

	public void updateOrderSum(OrderSum sum);

	public void updatePayMode(String payMode);

}
