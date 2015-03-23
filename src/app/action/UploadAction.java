package app.action;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

@SuppressWarnings("serial")
public class UploadAction extends BaseAction {

	private File image; // 上传的文件
	private String imageFileName; // 文件名称
	private String imageContentType; // 文件类型
	public String target;

	public void upload() throws Exception {
		String realpath = ServletActionContext.getServletContext().getRealPath(
				"/images");
		out = response.getWriter();
		// String realpath = "E:/Users/lil/git/Market/WebContent/images";
		File savefile = null;
		if (image != null) {
			savefile = new File(new File(realpath), imageFileName);
			if (!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			FileUtils.copyFile(image, savefile);
			String path = savefile.getPath().replaceAll("\\\\", "/")
					.substring(realpath.length() - 6);
			out.println("<script>parent.iFrameCallBack('" + path + "|" + target
					+ "')</script>");

		}
	}

	public File getImage() {
		return image;
	}

	public void setImage(File image) {
		this.image = image;
	}

	public String getImageFileName() {
		return imageFileName;
	}

	public void setImageFileName(String imageFileName) {
		this.imageFileName = imageFileName;
	}

	public String getImageContentType() {
		return imageContentType;
	}

	public void setImageContentType(String imageContentType) {
		this.imageContentType = imageContentType;
	}

}
