package my;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DbCon;

/**
 * Servlet implementation class CustomerMenu
 */
@WebServlet("/CustomerMenu")
public class CustomerMenu extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerMenu() {
        //super();
        // TODO Auto-generated constructor stub
    	con=new DbCon().getDbCon();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String PRESS=request.getParameter("cmd");
		PrintWriter out=response.getWriter();
		
		String Name =request.getParameter("name");
        String Phone =request.getParameter("phone");
       	String Email =request.getParameter("email");
       	String Address=request.getParameter("address");
        String Date=request.getParameter("date");
        String Time=request.getParameter("time");
        
	
	if(PRESS.equals("Submit")) 
    {
    	String sql = "insert into booking(Name,Phone,Email,Address,Date,Time) values(?,?,?,?,?,?)";
    	
    	try {
    	
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, Name);
		ps.setString(2, Phone);
		ps.setString(3, Email);
		ps.setString(4, Address);
		ps.setString(5, Date);
		ps.setString(6, Time);
	
	
		ps.executeUpdate();
		
		HttpSession session = request.getSession();
		session .setAttribute("Name", Name);
		
		RequestDispatcher rd = request.getRequestDispatcher("MenuList.jsp");
		rd.include(request, response);
		
    	}
    	catch(Exception e) {
    		
    	}
    }
	}

}
