package app.service;

import java.util.List;

import app.models.goods.Attach;
import app.models.goods.Good;

public interface AttachService {

	public void updateGoodPictures(Good good, String picUrls);

	public List<Attach> getPictuesByGood(Good good);

}
