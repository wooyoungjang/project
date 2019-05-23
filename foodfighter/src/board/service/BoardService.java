package board.service;

import java.util.ArrayList;
import java.util.List;

import board.vo.BoardVo;

public interface BoardService {
	List<BoardVo> select();

	void delete(int boardidx);
	
	void modify(BoardVo vo);
	
	public BoardVo get(int boardIdx);

	public BoardVo write(BoardVo vo);
}
