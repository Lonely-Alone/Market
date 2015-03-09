package app.dao.impl;

import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;

import app.dao.AttachDao;
import app.models.goods.Attach;
import app.models.goods.Good;

@Repository("attachmentDao")
@SuppressWarnings("all")
public class AttachDaoImpl extends BaseDaoImpl implements AttachDao {

	@Override
	public void updateGoodPictures(Good good, String picUrls) {
		for (Attach a : getPictuesByGood(good)) {
			a.isDeleted = true;
			save(a);

		}
		for (String url : picUrls.split(",")) {
			if (StringUtils.isNotBlank(url)) {
				Attach attach = new Attach(good, url);
				save(attach);
			}
		}
	}

	@Override
	public List<Attach> getPictuesByGood(Good good) {
		return fetch(
				"select a from Attach a where a.isDeleted = false and a.good.id = ?",
				good.id);
	}

}
