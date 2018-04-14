package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import persistence.*;
import model.Escola;

@WebServlet("/EscolaController")
public class EscolaController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public EscolaController() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.getWriter().append("<html><body>Voc� deve acessar a p�gina <a href=\"./index.jsp\">index.jsp</a></body></html>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String txtId = request.getParameter("txtId");
		String txtNomeEscola = request.getParameter("txtNomeEscola");
		String txtJurado = request.getParameter("txtJurado");
		String txtQuesito = request.getParameter("txtQuesito");
		String txtNota = request.getParameter("txtNota");
		String txtCmd = request.getParameter("cmd");
		System.out.println("O bot�o " + txtCmd + " foi apertado");
		
		IGenericDao gDao = new GenericDao();
		
		SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		@SuppressWarnings("unchecked")
		List<Escola> lista = (List<Escola>)getServletContext().getAttribute("LISTA");
		if (lista == null) {
			lista = new ArrayList<>();
			getServletContext().setAttribute("LISTA", lista);
		}
		String message = null;
		if ("inserir".equals(txtCmd)) {
			Escola es = new Escola();
			es.setId(Long.parseLong(txtId));
			es.setNome_escola(txtNomeEscola);
			es.setJurado(txtJurado);
			es.setQuesito(txtQuesito);
			es.setNota(Float.parseFloat(txtNota));
			try {
				gDao.inserir(es);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			message = String.format("Nota cadastrada", es.toString());
		} else if ("verTotal".equals(txtCmd)) {
			
		} else if ("verQuesito".equals(txtCmd)) {
			
		}
		
		request.getSession().setAttribute("MESSAGE", message);
		
		System.out.print( message );
		System.out.printf("Existem %d elementos na lista\n", lista.size());
		response.sendRedirect("./index.jsp");
	}
}