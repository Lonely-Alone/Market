package app.models.goods;

import javax.persistence.Entity;
import javax.persistence.OneToOne;

import app.models.BaseModel;
import app.models.member.Member;

@Entity
public class Cart extends BaseModel {

	@OneToOne
	public Member member;

}
