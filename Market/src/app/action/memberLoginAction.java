package app.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import app.models.member.Member;
import app.models.member.MemberLogin;
import app.service.MemberLoginService;
import app.service.MemberService;
import app.util.Result;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("unchecked")
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
			if (ml.password.equals(memberLogin.password)) {
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

	@Transactional
	public void regist() throws IOException {
		out = response.getWriter();
		response.setContentType("text/html;charset=UTF-8");
		String mail = "^\\s*\\w+(?:\\.{0,1}[\\w-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\\.[a-zA-Z]+\\s*$";
		Member m = new Member();
		if (mail.matches(memberLogin.loginId)) {
			m.email = memberLogin.loginId;
		} else {
			m.username = memberLogin.loginId;
		}
		m.password = memberLogin.password;
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
