package noticeBoardService;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.NoticeBoardDAO;
import dto.NoticeBoard;

public class NoticeUpdateService implements NoticeService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int notice_no = Integer.parseInt(request.getParameter("notice_no"));
		String page = request.getParameter("page");
		NoticeBoard board = new NoticeBoard();
		String saveFolder = "/upload";
		int maxSize = 5 * 1024 * 1024;
		ServletContext context = request.getServletContext();
		String realFolder = context.getRealPath(saveFolder);
		System.out.println("realFolder : " + realFolder);
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());

		board.setNotice_no(Integer.parseInt(multi.getParameter("bno")));
		board.setNotice_title(multi.getParameter("title"));
		board.setNotice_content(multi.getParameter("content"));
		String filename = multi.getFilesystemName("filename");
		if (filename == null) {
			board.setNotice_filename(multi.getParameter("nonMakeImg"));
		} else {
			board.setNotice_filename(multi.getFilesystemName((String) multi.getFileNames().nextElement()));
		}
//		String page = multi.getParameter("page");
		NoticeBoardDAO bDao = NoticeBoardDAO.getInstance();
		NoticeBoard noticeBoard = bDao.getBoard(notice_no);
		bDao.boardUpdate(board);
		request.setAttribute("noticeBoardView", noticeBoard);
		request.setAttribute("page", page);
		response.sendRedirect("noticeView.notice?notice_no=" + notice_no + "&page=" + page);
	}

}
