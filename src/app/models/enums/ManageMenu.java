package app.models.enums;

public enum ManageMenu {
	账号管理, 店铺管理, 发布商品, 商品管理, 订单管理, 进账流水, 会员管理, 回复管理;

	public String getRenderUrl() {
		String url = "";
		switch (this) {
		case 账号管理:
			url = "AdminController.personCenter";
			break;
		case 店铺管理:
			url = "AdminController.manageShop";
			break;
		case 订单管理:
			url = "AdminController.manageOrderSum";
			break;
		case 发布商品:
			url = "AdminController.publishGood";
			break;
		case 商品管理:
			url = "AdminController.manageGood";
			break;
		case 进账流水:
			url = "AdminController.manageBill";
			break;
		case 会员管理:
			url = "AdminController.manageVIP";
			break;
		case 回复管理:
			url = "AdminController.manageReply";
			break;
		}
		return url;
	}
}