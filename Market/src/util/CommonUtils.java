package util;

import java.util.Map;

import app.models.member.Member;

import com.opensymphony.xwork2.ActionContext;

public class CommonUtils {

	public static Member getCurrentMember() {
		Map session = ActionContext.getContext().getSession();
		Member member = (Member) session.get("member");
		return member;

	}

}
