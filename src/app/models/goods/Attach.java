package app.models.goods;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.models.BaseModel;

@Entity
public class Attach extends BaseModel {

	public String url;

	@ManyToOne
	public Good good;

	public Attach() {

	}

	public Attach(Good good, String url) {
		this.good = good;
		this.url = url;

	}

}
