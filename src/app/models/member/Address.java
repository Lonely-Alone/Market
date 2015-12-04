package app.models.member;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.models.BaseModel;

@Entity
public class Address extends BaseModel {

	@ManyToOne
	public Member owner;

	public String name;
	public String province;
	public String city;
	public String address;
	public String cellPhone;

	public boolean isDefault = false;

}
