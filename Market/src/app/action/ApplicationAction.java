package app.action;

import javax.annotation.Resource;

import util.MD5Util;
import app.models.member.MemberLogin;
import app.service.MemberLoginService;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class ApplicationAction extends BaseAction implements
		ModelDriven<MemberLogin> {

	private MemberLogin memberLogin;

	@Resource
	private MemberLoginService memberLoginService;

	private static final String[] menus = { "账号管理", "发布商品", "管理商品", "订单管理",
			"进账流水" };

	public String login() {
		MemberLogin ml = memberLoginService.findByLoginId(memberLogin.loginId);
		if (ml != null) {
			if (ml.password.equals(MD5Util.MD5(memberLogin.password))) {

				request.setAttribute("menus", menus);
				return SUCCESS;
			}
		}
		return ERROR;
	}

	@Override
	public MemberLogin getModel() {
		if (memberLogin == null) {
			memberLogin = new MemberLogin();
		}
		return memberLogin;
	}

}
