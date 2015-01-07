package app.models.goods;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.models.BaseModel;

@Entity
public class Cart_Goods extends BaseModel {

	@ManyToOne
	public Cart cart;

	@ManyToOne
	public Goods goods;

	public long num;

}
