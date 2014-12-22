package app.action;

@SuppressWarnings("serial")
public class ApplicationAction extends BaseAction {

	public void index() throws Exception {
		if (session.get("member") != null) {
			response.sendRedirect("/views/application/main.jsp");
		} else {
			response.sendRedirect("/views/application/Login.jsp");
		}
		out.flush();
		out.close();
		return;
	}

}
