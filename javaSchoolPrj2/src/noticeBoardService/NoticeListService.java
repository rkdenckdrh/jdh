package noticeBoardService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NoticeBoardDAO;
import dto.NoticeBoard;
import dto.PageMaker;

public class NoticeListService implements NoticeService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String spage = request.getParameter("page");
		if (spage == null) {
			spage = "1";
		}
		int page = Integer.parseInt(spage);
		NoticeBoardDAO bDao = NoticeBoardDAO.getInstance();
		int totalCount = bDao.getTotalCount();
		PageMaker pageMaker = new PageMaker(page, totalCount);
		List<NoticeBoard> boardList = bDao.getBoardPage(pageMaker.getStart(), pageMaker.getPageSize());
		request.setAttribute("noticeBoardList", boardList);
		request.setAttribute("pageMaker", pageMaker);
		request.getRequestDispatcher("/notice_yard/noticeBoard/noticeList.jsp").forward(request, response);
	}

}
