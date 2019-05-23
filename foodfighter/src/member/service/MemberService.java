package member.service;

import member.vo.Member;



public interface MemberService {

    Member login(String email,String pw); 
    void logout();
    void memberinsert(Member vo); 
    void update(Member vo);
	void delete(String id);



}





