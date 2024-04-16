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

import classes.Etudiant;
import models.EtudiantModel;

/**
 * Servlet implementation class EtudiantServlet
 */
@WebServlet("/etudiant")
public class EtudiantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<String> pageTypes = new ArrayList<String>() {{
	    add("list");
	    add("add");
	}};
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EtudiantServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageType = request.getParameter("type");
		if(pageTypes.contains(pageType)) {
			request.getRequestDispatcher("pages/jsp/etudiant_" + pageType + ".jsp").include(request, response);
		}else {
			request.getRequestDispatcher("pages/common/error404.html").include(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			Etudiant newEtudiant = new Etudiant();
			newEtudiant.setCNE(Integer.parseInt(request.getParameter("cne")));
			newEtudiant.setNom(request.getParameter("nom"));
			newEtudiant.setPrenom(request.getParameter("prenom"));
			newEtudiant.setTelephone(request.getParameter("telephone"));
			newEtudiant.setDepartement(Integer.parseInt(request.getParameter("departement")));
			newEtudiant.setFiliere(Integer.parseInt(request.getParameter("filiere")));
			
			int res = EtudiantModel.save(newEtudiant);
			
			if(res > 0) {
				session.setAttribute("msg_type", "success");
				session.setAttribute("msg_content", "Etudiant inserer avec succes");
			}else {
				session.setAttribute("msg_type", "error");
				session.setAttribute("msg_content", "Error lors l'insertion d'etudiant");
			}
		} catch (Exception e) {
			session.setAttribute("msg_type", "error");
			session.setAttribute("msg_content", "Valeur Invalide (" + e.getLocalizedMessage() + ")");
        }
		request.getRequestDispatcher("pages/common/alert.jsp").include(request, response);
	}

}
