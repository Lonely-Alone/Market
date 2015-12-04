package app.models.order;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import app.models.BaseModel;
import app.models.enums.OrderStatus;
import app.models.member.Member;

/**
 * 某个用户的购物车对象，作为OrderItem的FK
 */
@Entity
public class OrderSum extends BaseModel {

	public enum PayMode {
		货到付款, 在线支付
	}

	public enum DeliverMode {
		普通快递, 到点自提
	}

	@ManyToOne
	public Member owner;

	public String orderSerial;// 订单号
	public String transId;// 交易号（微信支付后生成，用于发货、查询等接口传参）

	public String chief;// 订单描述、名称
	@Enumerated(EnumType.STRING)
	public PayMode payMode = PayMode.在线支付;// 付款方式
	@Enumerated(EnumType.STRING)
	public DeliverMode deliverMode;// 配送方式
	@Temporal(TemporalType.TIMESTAMP)
	public Date paidTime;// 付款时间
	@Temporal(TemporalType.TIMESTAMP)
	public Date deliveredTime;// 发货日期
	@Temporal(TemporalType.TIMESTAMP)
	public Date receivedTime;// 收货日期
	@Enumerated(EnumType.STRING)
	public OrderStatus status = OrderStatus.NOT_SUB;

	public long points;// 使用的积分
	public float sumPrice;// 订单总价
	public int totalCount;

}
