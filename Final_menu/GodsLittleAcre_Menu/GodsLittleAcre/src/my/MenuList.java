package my;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DbCon;

/**
 * Servlet implementation class MenuList
 */
@WebServlet("/MenuList")
public class MenuList extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MenuList() {
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
	    String STK=request.getParameter("stk");
				try {
				
			if(STK.equals("Click here To Get Menu Details")) {
					String sql2="select * from catering ";
					PreparedStatement ps = con.prepareStatement(sql2);
					
					ResultSet rs = ps.executeQuery();
					
					List<MenuListData> Std=new ArrayList<MenuListData>();
					
					while(rs.next())
					{
						MenuListData Stdata=new MenuListData();
						
						Stdata.setMenuNo(rs.getString(1));
						Stdata.setFood1(rs.getString(2));
						Stdata.setFood2(rs.getString(3));
						Stdata.setFood3(rs.getString(4));
						Stdata.setFood4(rs.getString(5));
						Stdata.setFood5(rs.getString(6));
						Stdata.setDrinks(rs.getString(7));
						Stdata.setDessert1(rs.getString(8));
						Stdata.setDessert2(rs.getString(9));
						Stdata.setPrice(rs.getString(10));
						
						Std.add(Stdata);
					}
					
					request.setAttribute("menuDetails", Std);
					
					RequestDispatcher rd = request.getRequestDispatcher("MenuList.jsp");
					rd.include(request, response);
				}
		
				}
			

				catch (SQLException ex) {
			        //
			    } 
        
        
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		 
			
			    String cmd=request.getParameter("cmd");
			    Float qty=Float.parseFloat(request.getParameter("qty"));
			    String Menuno=request.getParameter("menuno");
			    Float Price = null;
			    Float Total= null;
			    String BookingID = null;
			    String username = (String)request.getSession().getAttribute("Name");
			    
			    if(cmd.equals("Calculate")) {
			    	
			  
					String sql ="select Price from catering where MenuNo ='"+Menuno+"'";
			    	
			    	try {
			    	
					PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
					
					while(rs.next()) {
						Price = rs.getFloat("Price");
						
						
					}
					
					String sql2 ="select bookingID from booking where Name ='"+username+"'";
			    	
			    	
			    	
					PreparedStatement ps1 = con.prepareStatement(sql2);
					ResultSet rs1 = ps1.executeQuery();
					
					while(rs1.next()) {
						
						BookingID = rs1.getString("bookingID");
						
						
					}	
				
					Total = Price*qty;
					
					String tot = Float.toString(Total);
					String qtys = Float.toString(qty);
					String prices = Float.toString(Price);
					
					request.setAttribute("BookingID", BookingID);
					request.setAttribute("tot", tot);
					request.setAttribute("qty", qtys);
					request.setAttribute("Price", prices);
					
					RequestDispatcher dis = request.getRequestDispatcher("ConfirmBooking.jsp");
					dis.forward(request, response);
					
			    	}
			    	catch (SQLException ex) {
				        //
				    } 
			    	
			    	
			    }
			}
	
	
					
	}


