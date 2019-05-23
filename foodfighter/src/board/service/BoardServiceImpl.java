package board.service;

import java.util.List;

import board.dao.BoardDao;
import board.vo.BoardVo;
import member.service.MemberService;
import member.service.MemberServiceImpl;

public class BoardServiceImpl implements BoardService{
	static BoardService service = new BoardServiceImpl();

	public BoardServiceImpl() {}

	public static BoardService getinstance() {
		return service;}
	
	
	@Override
	public List<BoardVo> select() {
		// TODO Auto-generated method stub
		return BoardDao.getinstance().select();
	}


	@Override
	public void delete(int boardidx) {
		BoardDao.getinstance().delete(boardidx);
		
	}

	@Override
	public  BoardVo get(int boardIdx) {
		// TODO Auto-generated method stub
		return BoardDao.getinstance().get(boardIdx);
	}

	@Override
	public BoardVo write(BoardVo vo) {
		return BoardDao.getinstance().write(vo);
		
	}

	@Override
	public void modify(BoardVo vo) {
	BoardDao.getinstance().modify(vo);
		
	}

	
}
