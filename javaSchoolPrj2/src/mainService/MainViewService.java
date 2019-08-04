package mainService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import dao.NoticeBoardDAO;
import dto.Board;
import dto.NoticeBoard;
import dto.PageMaker;

public class MainViewService implements MainService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NoticeBoardDAO bDao = NoticeBoardDAO.getInstance();
		List<NoticeBoard> boardList = bDao.mainNoticeList();
		request.setAttribute("mainNoticeList", boardList);
		request.getRequestDispatcher("/main/mainView.jsp").forward(request, response);
	}

}
