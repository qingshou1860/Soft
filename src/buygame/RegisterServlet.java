package buygame;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public RegisterServlet() {
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Userinfo user = new Userinfo();
		user.setAdds(request.getParameter("adds"));
		user.setCell(Integer.parseInt(request.getParameter("cell")));
		user.setDateBirth(request.getParameter("passWord"));
		user.setEmail(request.getParameter("email"));
		user.setGender(request.getParameter("gender"));
		user.setLoginName(request.getParameter("loginName"));
		user.setNation(request.getParameter("nation"));
		user.setPassWord(request.getParameter("passWord"));
		user.setUserName(request.getParameter("userName"));
		
		RegisterManager manager = new RegisterManager();
		manager.add(user);
		
		String info = "¹§Ï²Äú×¢²á³É¹¦£¡";
		request.setAttribute("info", info);
		request.setAttribute("user", user);
		
		RequestDispatcher dis = request.getRequestDispatcher("/register.jsp");
		dis.forward(request, response);
	}

}
