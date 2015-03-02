package app.service;



import app.models.member.Member;
import app.models.member.MemberLogin;



public interface MemberLoginService {
	
	public MemberLogin findByLoginId(String loginId);
	
	public void addLogin(Member m);
	









}
