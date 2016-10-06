package servletforcommon;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.IUserDao;
import dao.impl.UserDaoImpl;
import domain.UserInfo;

public class LoginServlet extends HttpServlet {

	private IUserDao userDao = new UserDaoImpl();
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	
	@SuppressWarnings("unused")
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//储存当前user对象的属性值。
		UserInfo user = userDao.login(username, password);
		//System.out.print(user);
		String usertype = user.getType().toString();
		
		if(user==null){
			request.getRequestDispatcher("/Login.jsp").forward(request, response);
		}
		else{
			if(usertype.compareTo("student")==0)
			{
			    request.getSession().setAttribute("user", user);
			    request.getRequestDispatcher("/student/index.jsp").forward(request, response);
			}
			else if(usertype.compareTo("teacher")==0){
				request.getSession().setAttribute("user", user);
			    request.getRequestDispatcher("/teacher/index.jsp").forward(request, response);
			}else{}
		}
	}

}
