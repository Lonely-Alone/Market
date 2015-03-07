package Listeners;

import javax.persistence.PostPersist;

import util.CommonUtils;
import app.models.goods.Good;

public class GoodListener {
	@PostPersist
	public static void postPersist(Good good) {
		System.err.println("postPersist:" + good.goodSerial);
		good.goodSerial = CommonUtils.serial(good.id);
		System.err.println("商品编号：" + good.goodSerial);
	}

}
