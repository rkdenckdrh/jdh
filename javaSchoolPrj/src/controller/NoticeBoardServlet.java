package controller;

import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import noticeBoardService.NoticeInsertFormService;
import noticeBoardService.NoticeInsertService;
import noticeBoardService.NoticeListService;
import noticeBoardService.NoticeService;
import noticeBoardService.NoticeUpdateFormService;
import noticeBoardService.NoticeUpdateService;
import noticeBoardService.NoticeViewService;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("*.notice")
public class NoticeBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NoticeService service = null;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NoticeBoardServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		doProcess(request, response);
	}

	private void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());

		if (command.equals("/noticeList.notice")) {
			service = new NoticeListService();
		} else if (command.equals("/noticeView.notice")) {
			service = new NoticeViewService();
		} else if (command.equals("/noticeInsertForm.notice")) {
			service = new NoticeInsertFormService();
		} else if (command.equals("/noticeInsert.notice")) {
			service = new NoticeInsertService();
		} else if (command.equals("/noticeUpdateForm.notice")) {
			service = new NoticeUpdateFormService();
		} else if (command.equals("/noticeUpdate.notice")) {
			service = new NoticeUpdateService();
		}
		service.execute(request, response);
	}

}
