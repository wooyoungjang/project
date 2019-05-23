package member.service;

import member.dao.MemberDao;
import member.vo.Member;

public class MemberServiceImpl implements MemberService {
	static MemberService service = new MemberServiceImpl();

	public MemberServiceImpl() {}

	public static MemberService getinstance() {
		return service;}

	
	
	public Member login(String email, String pw) {
		return MemberDao.getinstance().login(email, pw);
	}

	public void logout() {

	}
	
	public void memberinsert(Member vo) {
	MemberDao.getinstance().memberinsert(vo);	
	}


	public void delete(String id) {
		MemberDao.getinstance().delete(id);
	}

	@Override
	public void update(Member vo) {
		MemberDao.getinstance().update(vo);
	}

}
