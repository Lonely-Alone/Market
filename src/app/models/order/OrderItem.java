package app.models.order;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.models.BaseModel;
import app.models.goods.Good;

@Entity
public class OrderItem extends BaseModel {
	@ManyToOne
	public OrderSum orderSum;
	@ManyToOne
	public Good good;
	public long amount;
	public float soldPrice;

}
