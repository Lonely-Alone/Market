package app.models.goods;

import javax.persistence.Entity;
import javax.persistence.Lob;

import app.models.BaseModel;

@Entity
public class Commity extends BaseModel {

	public String name;
	public String chief;// 简单描述
	public String goodType;
	@Lob
	public String descr;// 详细描述
	public String previewURL;// 预览图，1:1
	public String imageURL;// 主图， 3:1
	public String band;// 品牌

	public int leftCount;// 库存
	public int soldCount;// 已销售
	// 参考价（单位：分，避免浮点运算）
	public int showPrice;
	// 实际价格（单位：分，避免浮点运算）
	public int realPrice;

	public boolean isNew = true;// 是否新品

	public Commity() {
	}

}
