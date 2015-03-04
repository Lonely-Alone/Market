package app.action;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import util.MD5Util;
import app.models.member.Member;
import app.models.member.MemberLogin;
import app.service.MemberLoginService;
import app.service.MemberService;
import app.util.Result;

import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("all")
public class memberLoginAction extends BaseAction implements
		ModelDriven<MemberLogin> {

	private MemberLogin memberLogin;

	@Resource(name = "memberLoginService")
	private MemberLoginService memberLoginService;
	@Resource(name = "memberService")
	private MemberService memberService;

	public String login() throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		String msg = "";
		MemberLogin ml = memberLoginService.findByLoginId(memberLogin.loginId);
		if (ml != null) {
			if (ml.password.equals(MD5Util.MD5(memberLogin.password))) {
				session.put("member", ml.member);
				out.write(Result.succeed(null));
				return null;
			} else {
				msg = "密码不正确！";
			}

		} else {
			msg = "该用户不存在！";
		}
		out.write(Result.failed(msg));
		// out.flush();
		// out.close();
		return null;

	}

	public void logout() throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		if (session.get("member") != null) {
			session.remove("member");
		}
		response.sendRedirect("/Market");

	}

	public void checkLoginId() throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		out = response.getWriter();
		MemberLogin ml = memberLoginService.findByLoginId(memberLogin.loginId);
		if (ml == null) {
			out.write(Result.succeed(null));
		} else {
			out.write(Result.failed("该用户名已存在！"));
		}

	}

	public void editPersonalInfo() throws IOException {
		response.sendRedirect("/Market");
	}

	public void regist() throws IOException {
		out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		String mail = "^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$";
		Pattern pattern = Pattern.compile(mail);
		Matcher matcher = pattern.matcher("dffdfdf@qq.com");
		boolean isMail = matcher.matches();
		Member m = new Member();
		if (isMail) {
			m.email = memberLogin.loginId;
		} else {
			m.username = memberLogin.loginId;
		}
		m.password = MD5Util.MD5(memberLogin.password);
		memberService.save(m);
		// memberLoginService.addLogin(m);
		out.write(Result.succeed(null));
	}

	public MemberLoginService getMemberLoginService() {
		return memberLoginService;
	}

	public void setMemberLoginService(MemberLoginService memberLoginService) {
		this.memberLoginService = memberLoginService;
	}

	public MemberService getMemberService() {
		return memberService;
	}

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}

	@Override
	public MemberLogin getModel() {
		if (memberLogin == null) {
			memberLogin = new MemberLogin();
		}
		return memberLogin;
	}

}
