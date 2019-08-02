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

public class NoticeInsertService implements NoticeService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		NoticeBoard board = new NoticeBoard();
		String saveFolder = "/upload";
		int maxSize = 5 * 1024 * 1024;
		ServletContext context = request.getServletContext();
		String realFolder = context.getRealPath(saveFolder);
		System.out.println("realFolder : " + realFolder);
		MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());

		board.setNotice_id(multi.getParameter("member_id"));
		board.setNotice_title(multi.getParameter("title"));
		board.setNotice_content(multi.getParameter("content"));
//		Enumeration<String> files = multi.getFileNames();
//		while (files.hasMoreElements()) {
//			String file = files.nextElement();
//			multi.getFilesystemName(file);
//		} //밑에 한줄이랑 같은거

		board.setNotice_filename(multi.getFilesystemName((String) multi.getFileNames().nextElement()));
		NoticeBoardDAO bDao = NoticeBoardDAO.getInstance();
		bDao.noticeInsert(board);
		response.sendRedirect("noticeList.notice");
	}

}
