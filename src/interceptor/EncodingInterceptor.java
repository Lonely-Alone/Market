package interceptor;

import java.io.UnsupportedEncodingException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class EncodingInterceptor extends AbstractInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
		ActionContext actionContext = arg0.getInvocationContext();
		HttpServletResponse respone = (HttpServletResponse) actionContext
				.get(StrutsStatics.HTTP_RESPONSE);
		respone.setContentType("text/html;charset=UTF-8 ");
		HttpServletRequest request = (HttpServletRequest) actionContext
				.get(StrutsStatics.HTTP_REQUEST);
		System.out.println("Encoding Intercept...");
		/**
		 * 此方法体对GET 和 POST方法均可
		 */
		if (request.getMethod().compareToIgnoreCase("post") >= 0) {
			try {
				request.setCharacterEncoding("GBK");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {

			Iterator iter = request.getParameterMap().values().iterator();
			while (iter.hasNext()) {
				String[] parames = (String[]) iter.next();
				for (int i = 0; i < parames.length; i++) {
					try {
						parames[i] = new String(
								parames[i].getBytes("iso8859-1"), "GBK");// 此处GBK与页面编码一样
					} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					}
				}
			}
		}
		return arg0.invoke();
	}
}
