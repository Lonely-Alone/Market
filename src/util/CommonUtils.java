package util;

import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import app.models.member.Member;

import com.opensymphony.xwork2.ActionContext;

public class CommonUtils {

	public static Member getCurrentMember() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		Member member = (Member) session.get("member");
		return member;

	}

	public static String formatDate(Date date, String format) {
		if (date == null) {
			return null;
		}
		SimpleDateFormat sFormat = new SimpleDateFormat(format);// 获取时间格式化工具
		return sFormat.format(date);
	}

	public static String formatNumber(Number number, String format) {
		DecimalFormat df = new DecimalFormat(format);
		return df.format(number);
	}

	// 生成一定位数的编号
	public static String serial(Long id) {
		NumberFormat format = NumberFormat.getInstance();
		format.setMinimumIntegerDigits(8);
		return format.format(id).replace(",", "");
	}

}
