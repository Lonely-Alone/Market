package app.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import app.dao.AttachDao;
import app.models.goods.Attach;
import app.models.goods.Good;
import app.service.AttachService;

@Service
@Transactional
public class AttachServiceImpl implements AttachService {

	@Resource(name = "attachmentDao")
	private AttachDao attachmentDao;

	@Override
	public void updateGoodPictures(Good good, String picUrls) {
		attachmentDao.updateGoodPictures(good, picUrls);
	}

	@Override
	public List<Attach> getPictuesByGood(Good good) {
		return attachmentDao.getPictuesByGood(good);
	}

}
