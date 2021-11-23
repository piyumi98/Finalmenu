<!DOCTYPE html>
<html lang="en">
<head>
<title>HOTEL GOD'S LITTLE ACRE</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<%@page import="my.MenuListData" %>
<%@page import="java.util.ArrayList" %>
<script src="js/jquery-1.7.1.min.js"></script>





<script>
$(function(){
	function equalHeight(group) {
		var tallest = 0;
		group.each(function() {
			var thisHeight = $(this).height();
			if(thisHeight > tallest) {
				tallest = thisHeight;
			}
		});
		group.height(tallest);
	}	
	equalHeight($(".box-1 .inner"));
})
</script>
<style>
#menuTable {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 150%;
}

#menuTable td, #menuTable th {
  border: 1px solid #ddd;
  padding: 8px;
}

#menuTable tr:nth-child(even){background-color: #f2f2f2;}

#menuTable tr:hover {background-color: #ddd;}

#menuTable th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #e6a340;
  color: white;
}


</style>

</head>
<body id="page1">
<!-- Header -->
<header>
  <div class="inner">
    <a href="index.jsp"><img src="images/Screenshot%20(476).png" alt=""></a>
    <div class="fright">
      <div class="header-meta">
        <div>
          <h1 class="text-secondary">HOTEL GOD'S LITTLE ACRE</h1>
        </div>
    </div>
    <div class="clear"></div>
  </div>
  </div>
</header>


<%
String username = (String)request.getSession().getAttribute("Name");
String tot = (String)request.getAttribute("tot");
String qty = (String)request.getAttribute("qty");
String price = (String)request.getAttribute("Price");
String bid = (String)request.getAttribute("BookingID");
%>
<div class="container">

     <ul class="sf-menu">
 			<li style="float:right"><a  class="active"  href="#"></a></li>
            <li ><a  class="active"  href="MenuList.jsp">Welcome    <%=username%></a></li>
  			
        
        </ul>



    </div>
   <br/>
<div class="container">

    



    </div>
   <br/>
    <div class="row">
        
    <div class="col-md-1"></div>
    


<div class="col-md-1"></div>
    <div class="col-md-5 " >
 
        <form action="ConfirmBooking" method="post" >
        <br/>
        		
         
		<label id = "str5" >BOOKING ID</label><input class="form-control" type="text" name="bookingid"  value='<%=bid%>' required="required"  ><br>
        <label id = "str5" >TOTAL CHARGE PER PLATE</label><input class="form-control" type="text" name="price"  value='<%=price%>' required="required"><br>
        <label id = "str5" >NUMBER OF PLATES</label><input class="form-control" type="number" name="qty"  value='<%=qty%>'  required="required" ><br>
        <label id = "str5" >TOTAL COST</label><input class="form-control" type="number" name="total"  value='<%=tot%>'  required="required"><br>
 
       
  <input class="button" type="submit" name="cmd" value="Confirm Booking"  onclick="return confirm('Are you sure you want to confirm')">

                
                
                
                
                
                
                
                       
          </form>


    </div>
</div>


    




<br><br><br>
<footer>

 <br><br> <br> <br><br><br> <br><br> <br><br> <br> <br>
 
         <p align="center">
Last updated: <%= new java.util.Date() %>
</p>
         <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-md-3 item">
                        <h3>JOIN WITH US AND&nbsp;ENJOY YOUR FREEDOM&nbsp;</h3>
                        <ul>
                            <li><a href="#"></a></li>
                            <li></li>
                        </ul>
                    </div>
                </div>
                <p class="copyright">HOTEL GOD'S LITTLE ACRE</p>
            </div>
      </footer>
</body>
</html>
