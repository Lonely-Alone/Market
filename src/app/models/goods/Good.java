package app.models.goods;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

import Listeners.GoodListener;
import app.models.BaseModel;
import app.models.enums.GoodType;

@Entity
@EntityListeners(GoodListener.class)
public class Good extends BaseModel implements Serializable {

	public String name;
	public String chief;// 简单描述
	@Column(length = 2000)
	public String description;//
	public String manufacturer;// 生产厂商
	// 参考价
	public int showPrice;
	// 实际价格
	public int realPrice;

	public long clickCount = 0;//
	public int leftCount;// 库存
	public int soldCount;// 已销售
	public String goodSerial;// 商品编号
	@Enumerated(EnumType.STRING)
	public GoodType goodType;

	public String imgUrl;

}
