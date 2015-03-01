package app.models.goods;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.models.BaseModel;

@Entity
public class Attachment extends BaseModel {

	public String url;

	@ManyToOne
	public Good good;

}
