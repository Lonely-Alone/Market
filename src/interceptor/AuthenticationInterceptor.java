package interceptor;

import java.util.Map;

import app.models.member.Member;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

@SuppressWarnings("serial")
public class AuthenticationInterceptor implements Interceptor {

	@Override
	public void destroy() {

	}

	@Override
	public void init() {

	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		Map session = actionInvocation.getInvocationContext().getSession();

		Member member = (Member) session.get("member");

		if (member == null) {

			return Action.INPUT;

		} else {
			return actionInvocation.invoke();

		}
	}

}
