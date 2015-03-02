package app.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import app.dao.Dao;
import app.dao.MemberLoginDao;
import app.models.member.Member;
import app.models.member.MemberLogin;
import app.service.MemberLoginService;

@Service("memberLoginService")
public class MemberLoginServiceImpl implements MemberLoginService {

	@Resource
	private MemberLoginDao memberLoginDao;

	@Override
	public MemberLogin findByLoginId(String loginId) {
		return memberLoginDao.findByLoginId(loginId);
	}

	@Override
	public void addLogin(Member m) {
		memberLoginDao.addLogin(m);
	}

}
