package app.models.goods;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;

import app.models.BaseModel;
import app.models.comment.Comment;
import app.models.enums.GoodsType;

@Entity
public class Good extends BaseModel {

	public long number;// 商品编号
	public String name;
	public String description;//
	public String manufacturer;// 生产厂商
	public float price;
	public long clickCount;//
	public long sellCount;//
	public long buyCount;//

	@Enumerated(EnumType.STRING)
	public GoodsType goodsType;

	@ManyToOne
	public Comment comment;// 评论

	// public enum GoodsType {
	// book {
	// @Override
	// public String getName() {
	// return "书籍";
	// }
	// },
	// dress {
	// @Override
	// public String getName() {
	// return "服装";
	// }
	// },
	// household {
	// @Override
	// public String getName() {
	// return "家电";
	// }
	// },
	// digital {
	// @Override
	// public String getName() {
	// return "数码";
	// }
	// },
	// food {
	// @Override
	// public String getName() {
	// return "饮食";
	// }
	// },
	// furniture {
	// @Override
	// public String getName() {
	// return "家具";
	// }
	// },
	// others {
	// @Override
	// public String getName() {
	// return "其他";
	// }
	// };
	//
	// public abstract String getName();
	//
	// public static GoodsType convert2Enum(String str) {
	// if (str.equals("book")) {
	// return GoodsType.book;
	// } else if (str.equals("household")) {
	// return GoodsType.household;
	// } else if (str.equals("dress")) {
	// return GoodsType.dress;
	// } else if (str.equals("digital")) {
	// return GoodsType.digital;
	// } else if (str.equals("food")) {
	// return GoodsType.food;
	// } else if (str.equals("furniture")) {
	// return GoodsType.furniture;
	// } else {
	// return GoodsType.others;
	// }
	//
	// }
	// }

}
