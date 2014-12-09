package app.dao.impl;

import org.springframework.stereotype.Repository;

import app.dao.MemberDao;
import app.models.member.Member;

@Repository("memberDao")
@SuppressWarnings("unchecked")
public class MemberDaoImpl extends BaseDaoImpl implements MemberDao {

	@Override
	public void saveMember(Member m) {
		save(m);
	}

}
