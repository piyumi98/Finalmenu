package my;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DbCon;
import my.CateringData;

/**
 * Servlet implementation class Catering
 */
@WebServlet("/Catering")
public class Catering extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;   
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Catering() {
        //super();
        // TODO Auto-generated constructor stub
    	con=new DbCon().getDbCon();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String  SerachName =request.getParameter("search");
		PrintWriter out=response.getWriter();
		
		String sql ="select * from catering where MenuNo ='"+SerachName+"'";
    	
    	try {
    	
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		CateringData data=new CateringData();
		
		while(rs.next()) {
			data.setMenuNo(rs.getString("MenuNo"));
			data.setFood1(rs.getString("Food1"));
			data.setFood2(rs.getString("Food2"));
			data.setFood3(rs.getString("Food3"));
			data.setFood4(rs.getString("Food4"));
			data.setFood5(rs.getString("Food5"));
			data.setDrinks(rs.getString("Drinks"));
			data.setDessert1(rs.getString("Dessert1"));
			data.setDessert2(rs.getString("Dessert2"));
			data.setPrice(rs.getFloat("Price"));
		}
		
		request.setAttribute("object", data);
		
		
		RequestDispatcher dis = request.getRequestDispatcher("Catering.jsp");
		dis.forward(request, response);
		
    	}
    	catch(Exception e) {
    		out.println(e);
    	}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
  String CMD=request.getParameter("cmd");
		
		String MenuNo =request.getParameter("menuno");
        String Food1 =request.getParameter("food1");
        String Food2 =request.getParameter("food2");
        String Food3 =request.getParameter("food3");
       	String Food4=request.getParameter("food4");
        String Food5=request.getParameter("food5");
       	String Drinks=request.getParameter("drinks"); 
        String Dessert1=request.getParameter("dessert1"); 
        String Dessert2=request.getParameter("dessert2");
        Float Price=Float.parseFloat(request.getParameter("price"));
        
        PrintWriter out=response.getWriter();
        
        if(CMD.equals("ADD")) 
        {
        	String sql = "insert into catering (MenuNo,Food1,Food2,Food3,Food4,Food5,Drinks,Dessert1,Dessert2,Price) values(?,?,?,?,?,?,?,?,?,?)";
        	
        	try {
        	
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,	MenuNo);
			ps.setString(2, Food1);
			ps.setString(3, Food2);
			ps.setString(4, Food3);
			ps.setString(5, Food4);
			ps.setString(6, Food5);
			ps.setString(7, Drinks);
			ps.setString(8, Dessert1);
			ps.setString(9, Dessert2);
			ps.setFloat(10, Price);
		
			ps.executeUpdate();
			
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Menu Successfully Added..!!');");
			out.println("location='Catering.jsp';");
			out.println("</script>");
			
        	}
        	catch(Exception e) {
        		out.println("<script>alert('"+e+"')</script>");
        	}
        }
        else if(CMD.equals("UPDATE")) 
        {	
        	String  menuno =request.getParameter("menuno");
        	String sql = "update catering set Food1=?,Food2=?,Food3=?,Food4=?,Food5=?,Drinks=?,Dessert1=?,Dessert2=?,Price=? where MenuNo ='"+menuno+"' ";
        	try {
            	
    		
        			PreparedStatement ps = con.prepareStatement(sql);
        		
        		
        			ps.setString(1, Food1);
        			ps.setString(2, Food2);
        			ps.setString(3, Food3);
        			ps.setString(4, Food4);
        			ps.setString(5, Food5);
        			ps.setString(6, Drinks);
        			ps.setString(7, Dessert1);
        			ps.setString(8, Dessert2);
        			ps.setFloat(9, Price);
        		
        			ps.executeUpdate();
        			
        			out.println("<script type=\"text/javascript\">");
        			out.println("alert('Menu Successfully Updated..!!');");
        			out.println("location='Catering.jsp';");
        			out.println("</script>");
    			
    			
            	}
            	catch(Exception e) {
            		out.println("<script>alert('"+e+"')</script>");
            	}
        }
        else {
        	String  menuno =request.getParameter("menuno");
        	String sql = "delete from catering where MenuNo='"+menuno+"'";
        	try {
        		
        		PreparedStatement ps = con.prepareStatement(sql);
        		ps.execute();
        		
        		out.println("<script type=\"text/javascript\">");
    			out.println("alert('Menu Successfully Deleted..!!');");
    			out.println("location='Catering.jsp';");
    			out.println("</script>");
        	}
        	catch(Exception e) {
        		out.println("<script>alert('"+e+"')</script>");
        	}
        }
	}

}
