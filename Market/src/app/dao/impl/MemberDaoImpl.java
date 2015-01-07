package app.dao.impl;

import org.springframework.stereotype.Repository;

import app.dao.MemberDao;
import app.models.member.Member;

@Repository("memberDao")
@SuppressWarnings("all")
public class MemberDaoImpl extends DaoImpl implements MemberDao {

	@Override
	public void saveMember(Member m) {
		save(m);
	}

	@Override
	public Member getMember(Long id) {
		return (Member) get(Member.class, id);
	}

}
