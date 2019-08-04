package noticeBoardService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeBoardDAO;
import dto.NoticeBoard;

public class NoticeUpdateFormService implements NoticeService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int page = Integer.parseInt(request.getParameter("page"));
		int bno = Integer.parseInt(request.getParameter("bno"));
		NoticeBoardDAO bDao = NoticeBoardDAO.getInstance();
		NoticeBoard board = bDao.getBoard(bno);
		request.setAttribute("noticeBoardUpdate", board);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/notice_yard/noticeBoard/noticeUpdate.jsp").forward(request, response);
	}

}
