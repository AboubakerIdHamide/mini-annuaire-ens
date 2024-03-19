package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<String> searchTypes = new ArrayList<String>() {{
	    add("etudiant");
	    add("departement");
	}};
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchType = request.getParameter("type");
		if(searchTypes.contains(searchType)) {
			request.getRequestDispatcher("pages/html/recherche_" + searchType + ".html").include(request, response);
		}else {
			request.getRequestDispatcher("pages/common/error404.html").include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String searchType = request.getParameter("type");
		if(searchTypes.contains(searchType)) {
			request.getRequestDispatcher("pages/jsp/recherche_" + searchType + ".jsp").include(request, response);
		}else {
			request.getRequestDispatcher("pages/common/error404.html").include(request, response);
		}
	}

}
