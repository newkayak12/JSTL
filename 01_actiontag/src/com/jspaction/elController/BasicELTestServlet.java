package com.jspaction.elController;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspaction.model.vo.Person;

/**
 * Servlet implementation class BasicELTestServlet
 */
@WebServlet("/basicel")
public class BasicELTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BasicELTestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	
		
		List<Person> lists = Arrays.asList(new Person[] { new Person("김상현",29,"구로구"), new Person("김예진", 26, "서울시 강남구"), new Person("장희웅", 29, "충북 서산")});
		
		Person p = new Person("이진주", 23, "경기도 광주");
		
		
		request.setAttribute("lists", lists);
		request.setAttribute("p", p);
		
		request.setAttribute("name", "승병유");
		request.getSession().setAttribute("name", "유병승");
		getServletContext().setAttribute("email", "prince0324@naver.com");
		request.getRequestDispatcher("/views/datatest.jsp").forward(request, response);
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
