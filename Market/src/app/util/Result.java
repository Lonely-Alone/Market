package app.util;

import com.alibaba.fastjson.JSONObject;

/**
 * 
 *
 * @author
 *
 */
public class Result {
	/**
	 * 返回状态：“true”表示成功；“false”表示失败
	 */
	public String status;
	/**
	 * 返回状态码
	 */
	public int statusCode;
	/**
	 * 出错信息
	 */
	public String msg;
	/**
	 * 结果
	 */
	public Result result;

	public static final JSONObject jsonObj = new JSONObject();

	public static String failed(int statusCode) {
		Result vo = new Result();
		vo.status = "false";
		vo.statusCode = statusCode;
		try {
			return JSONObject.toJSONString(vo);
		} catch (Exception e) {
			return null;
		}
	}

	public static String failed(String msg) {
		Result vo = new Result();
		vo.status = "false";
		vo.msg = msg;
		try {
			return JSONObject.toJSONString(vo);
		} catch (Exception e) {
			return null;
		}
	}

	public static String succeed(Result result) {
		Result vo = new Result();
		vo.status = "true";
		vo.statusCode = InterfaceStatusCode.SUCCEED_CODE;
		vo.result = result;
		try {
			return JSONObject.toJSONString(vo);
		} catch (Exception e) {
			return null;
		}
	}

}
