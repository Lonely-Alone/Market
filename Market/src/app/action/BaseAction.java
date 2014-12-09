package app.action;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionContext;

public class BaseAction implements SessionAware {

	public HttpServletResponse response = ServletActionContext.getResponse();
	public HttpServletRequest request = ServletActionContext.getRequest();
	public Map session = ActionContext.getContext().getSession();
	public PrintWriter out;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}

}
