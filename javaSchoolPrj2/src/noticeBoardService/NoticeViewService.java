package noticeBoardService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeBoardDAO;
import dto.NoticeBoard;

public class NoticeViewService implements NoticeService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int notice_no = Integer.parseInt(request.getParameter("notice_no"));
		String page = request.getParameter("page");
		NoticeBoardDAO bDao = NoticeBoardDAO.getInstance();
		NoticeBoard noticeBoard = bDao.getBoard(notice_no);
		if (noticeBoard != null) {
			bDao.read_count_update(notice_no);
		}
		request.setAttribute("noticeBoardView", noticeBoard);
		request.setAttribute("page", page);
		request.getRequestDispatcher("/notice_yard/noticeBoard/noticeView.jsp").forward(request, response);
	}

}
