package app.models.goods;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import app.models.BaseModel;
import app.models.comment.Comment;

@Entity
public class Goods extends BaseModel {

	public long number;// 商品编号
	public String name;
	public String description;//
	public String manufacturer;// 生产厂商
	public float price;
	public long clickCount;//
	public long sellCount;//
	public long buyCount;//

	public GoodsType goodsType;

	@ManyToOne
	public Comment comment;// 评论

	public enum GoodsType {
		book {
			@Override
			public String getName() {
				return "书籍";
			}
		},
		dress {
			@Override
			public String getName() {
				return "服装";
			}
		},
		household {
			@Override
			public String getName() {
				return "家电";
			}
		},
		digital {
			@Override
			public String getName() {
				return "数码";
			}
		},
		food {
			@Override
			public String getName() {
				return "饮食";
			}
		},
		furniture {
			@Override
			public String getName() {
				return "家具";
			}
		};

		public abstract String getName();

		// public String convert(String str) {
		//
		// }

	}

}
