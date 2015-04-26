package app.action;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("all")
public class BaseAction extends ActionSupport implements SessionAware,
		ServletRequestAware, ServletResponseAware {

	public HttpServletResponse response;
	public HttpServletRequest request;
	public Map session;
	public PrintWriter out;
	public static final int PAGESIZE = 10;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;

	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;

	}

	public String getDataFromCookie(String key) {
		Cookie cookies[] = request.getCookies();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(key)) {
				return cookie.getValue();
			}
		}
		return null;
	}

	public void deleteFromCookie(String key) {
		Cookie cookies[] = ServletActionContext.getRequest().getCookies();
		HttpServletResponse response = ServletActionContext.getResponse();
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals(key)) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}

	public void addCookie(String name, String value) {
		Cookie cookie = new Cookie(name.trim(), value.trim());
		cookie.setMaxAge(2 * 60 * 60 * 1000);// 设置为2个钟
		ServletActionContext.getResponse().addCookie(cookie);
	}

	public void updateCookie(String key, String newValue) {
		// 修改没有效果 待查询
		Cookie cookies[] = ServletActionContext.getRequest().getCookies();
		if (cookies != null && cookies.length > 0) {
			for (Cookie c : cookies) {
				if (c.getName().contains("good_" + key)) {
					c.setValue(newValue);
					ServletActionContext.getResponse().addCookie(c);
				}
			}
		}
	}

	public void removeAllCookies() {
		Cookie cookies[] = ServletActionContext.getRequest().getCookies();
		if (cookies == null || cookies.length < 0) {
			// 没有cookie
			System.out.println("there is no any cookie ..");
		} else {
			System.out.println("开始删除cookies..");
			for (Cookie c : cookies) {
				if (c.getName().contains("good_")) {
					c.setMaxAge(0);// 设置为0
					ServletActionContext.getResponse().addCookie(c);
				}
			}
		}
	}

}
