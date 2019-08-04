package noticeBoardService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeBoardDAO;

public class NoticeDeleteService implements NoticeService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int notice_no = Integer.parseInt(request.getParameter("notice_no"));
		String page = request.getParameter("page");
		NoticeBoardDAO bDao = NoticeBoardDAO.getInstance();
		bDao.boardDelete(notice_no);
		response.sendRedirect("noticeList.notice?page=" + page);
	}

}
