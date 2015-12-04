package app.action;

import app.models.order.OrderSum;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
public class OrderAction extends BaseAction implements ModelDriven<OrderSum> {

	private OrderSum orderSum;

	@Override
	public OrderSum getModel() {
		if (orderSum == null) {
			orderSum = new OrderSum();
		}
		return orderSum;
	}

}
