package app.models.enums;

public enum GoodType {
	书籍, 服饰, 家电, 数码, 饮食, 其他;

	public static GoodType converToEnum(String num) {
		switch (num) {
		case "1":
			return GoodType.书籍;
		case "2":
			return GoodType.服饰;
		case "3":
			return GoodType.家电;
		case "4":
			return GoodType.数码;
		case "5":
			return GoodType.饮食;
		default:
			return GoodType.其他;

		}

	}

}
