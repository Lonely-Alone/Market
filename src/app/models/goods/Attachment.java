package app.models.goods;

import javax.persistence.ManyToOne;

import app.models.BaseModel;

//@Entity
public class Attachment extends BaseModel {

	public String url;

	@ManyToOne
	public Good good;

	public Attachment(Good good, String url) {
		this.good = good;
		this.url = url;

	}

}
