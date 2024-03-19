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

import classes.Filiere;
import models.FiliereModel;

/**
 * Servlet implementation class FiliereServlet
 */
@WebServlet("/filiere")
public class FiliereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<String> pageTypes = new ArrayList<String>() {{
	    add("list");
	    add("add");
	}};
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FiliereServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageType = request.getParameter("type");
		if(pageTypes.contains(pageType)) {
			request.getRequestDispatcher("pages/jsp/filiere_" + pageType + ".jsp").include(request, response);
		}else {
			request.getRequestDispatcher("pages/common/error404.html").include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Filiere newFiliere = new Filiere();
			newFiliere.setNom(request.getParameter("nom"));
			newFiliere.setDepartement(Integer.parseInt(request.getParameter("departement")));
			
			int res = FiliereModel.save(newFiliere);
			HttpSession session = request.getSession();
			
			if(res > 0) {
				session.setAttribute("msg_type", "success");
				session.setAttribute("msg_content", "Filiere inserer avec succes");
			}else {
				session.setAttribute("msg_type", "error");
				session.setAttribute("msg_content", "Error lors l'insertion de filiere");
			}
			request.getRequestDispatcher("pages/common/alert.jsp").include(request, response);	
		} catch (Exception e) {
			request.getRequestDispatcher("pages/common/error404.html").include(request, response);
        }
	}

}
