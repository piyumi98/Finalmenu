package my;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DbCon;

/**
 * Servlet implementation class ConfirmBooking
 */
@WebServlet("/ConfirmBooking")
public class ConfirmBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmBooking() {
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
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		 	
		    PrintWriter out=response.getWriter();
		 	String CMD=request.getParameter("cmd");
			String bookingid =request.getParameter("bookingid");
	        String price =request.getParameter("price");
	        String qty =request.getParameter("qty");
	        String total =request.getParameter("total");
	        
	        
	       if(CMD.equals("Confirm Booking")) 
	        {	
	        	
	        	String sql = "update booking set Price=?,Qty=?,Total=? where bookingID ='"+bookingid+"' ";
	        	try {
	            	
	    		
	        			PreparedStatement ps = con.prepareStatement(sql);
	        		
	        			ps.setString(1,	price);
	        			ps.setString(2, qty);
	        			ps.setString(3, total);
	        		
	        		
	        			ps.executeUpdate();
	        			
	        			System.out.print(bookingid);
	        			out.println("<script type=\"text/javascript\">");
	        			out.println("alert('We Received Your Order Successfully..!!');");
	        			out.println("location='CustomerMenu.jsp';");
	        			out.println("</script>");
	    			
	    			
	            	}
	            	catch(Exception e) {
	            		out.println("<script>alert('"+e+"')</script>");
	            	}
		
	}

}
}
