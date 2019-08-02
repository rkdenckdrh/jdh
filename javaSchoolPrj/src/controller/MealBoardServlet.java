package controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import boardservice.BoardDeleteService;
import boardservice.BoardListPageService;
import boardservice.BoardListService;
import boardservice.BoardService;
import boardservice.BoardUpdateFormService;
import boardservice.BoardUpdateService;
import boardservice.BoardViewService;
import boardservice.BoardWriteFormService;
import boardservice.BoardWriteService;
import mealBoardService.MealService;
import mealBoardService.MealViewService;
import noticeBoardService.NoticeListService;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("*.meal") 
public class MealBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MealService service=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MealBoardServlet() {
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doProcess(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		doProcess(request,response);
	}
	
	private void doProcess(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String requestURI=request.getRequestURI();
		String contextPath=request.getContextPath();
		String command=requestURI.substring(contextPath.length());
		
		if(command.equals("/mealView.meal")) {
			service=new MealViewService();
		}
		service.execute(request, response);
	}
	

}
