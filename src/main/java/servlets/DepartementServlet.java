package servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import classes.Departement;
import models.DepartementModel;

/**
 * Servlet implementation class DepartementServlet
 */
@WebServlet("/departement")
public class DepartementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<String> pageTypes = new ArrayList<String>() {{
	    add("list");
	    add("add");
	}};
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DepartementServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageType = request.getParameter("type");
		if(pageTypes.contains(pageType)) {
			request.getRequestDispatcher("pages/jsp/departement_" + pageType + ".jsp").include(request, response);
		}else {
			request.getRequestDispatcher("pages/common/error404.html").include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Departement newDepartement = new Departement();
			newDepartement.setNom(request.getParameter("nom"));
			
			int res = DepartementModel.save(newDepartement);
			HttpSession session = request.getSession();
			
			if(res > 0) {
				session.setAttribute("msg_type", "success");
				session.setAttribute("msg_content", "Departement inserer avec succes");
			}else {
				session.setAttribute("msg_type", "error");
				session.setAttribute("msg_content", "Error lors l'insertion de departement");
			}
			request.getRequestDispatcher("pages/common/alert.jsp").include(request, response);	
		} catch (Exception e) {
			request.getRequestDispatcher("pages/common/error404.html").include(request, response);
        }
	}

}
