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
 		
      
     
  %>
<div class="container">

     <ul class="sf-menu">
 			<li style="float:right"><a  class="active"  href="#"></a></li>
            <li ><a  class="active"  href="MenuList.jsp">Welcome    <%=username%></a></li>
  			
        
        </ul>



    </div>
   <br/>
   
   <div class="row">      
    <div class="col-md-1"></div>
    



    <form action="MenuList" method="get">
    <div class="container">
    <input class="button" type="submit" name="stk" value="Click here To Get Menu Details">
    
    </div>
   <% 
		ArrayList<MenuListData> std = (ArrayList<MenuListData>) request.getAttribute("menuDetails");
	if(std != null)
	{%>
	<br></br>
	
	<table class="table" id="menuTable">
	  <tr>
	    <th>MENU NO</th>
	    <th>FOOD 1</th>
	    <th>FOOD 2</th>
	    <th>FOOD 3</th>
	    <th>FOOD 4</th>
	    <th>FOOD 5</th>
	    <th>DRINKS</th>
	    <th>DESSERT 1</th>
	    <th>DESSERT 2</th>
	    <th>PRICE</th>
	  </tr>
	
	<%
		for(MenuListData item : std)
		{
	%>
		<tr>
			<td><%=item.getMenuNo() %></td>
			<td><%=item.getFood1() %></td>
			<td><%=item.getFood2() %></td>
			<td><%=item.getFood3()%></td>
			<td><%=item.getFood4()%></td>
			<td><%=item.getFood5()%></td>
			<td><%=item.getDrinks()%></td>
			<td><%=item.getDessert1()%></td>
			<td><%=item.getDessert2()%></td>
			<td><%=item.getPrice()%></td>
		</tr>
	<%
		}
	}
	%>
</table>

</form>

</div>

<br><br><br>
<footer>
<form role="form" action="MenuList" method="post" >
			
		
			<div class="row">
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
                        <input type="number" name="menuno" class="form-control input-lg"  tabindex="1" required="required" placeholder="Enter Menu Number">
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-6">
					<div class="form-group">
						<input type="number"  name="qty"class="form-control input-lg"  tabindex="2" required="required" placeholder="Enter Number Of Plates">
					</div>
				</div>
			</div>
			
			
			<input class="button" type="submit" name="cmd" value="Calculate">
		

</form>
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
