<!DOCTYPE html>
<html lang="en">
<head>
<title>HOTEL GOD'S LITTLE ACRE</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<%@page import="my.CateringData" %>
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
.vertical-menu {
  width: 200px;
  
}

.vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
}

.vertical-menu a:hover {
  background-color: #ccc;
}

.vertical-menu a.active {
  background-color: #4CAF50;
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

<div class="container">

    



    </div>
   <br/>
    <div class="row">
        
    <div class="col-md-1"></div>
    
<div class="vertical-menu">
  <a href="KitchenMenu.jsp" >Kitchen Menu</a>
  <a href="Catering.jsp"class="active">Catering & Event Menu</a>
  <a href="KitchenMenu.jsp" >Room Service Menu</a>
</div>

<div class="col-md-1"></div>
    <div class="col-md-5 formBackground" >
 
 	<form action="Catering" method="get" ><br>
		 	 <input class="search" type="text" name="search" required="required" placeholder="Enter Menu Number " style="display: inline;">
		 	 <input class="button" type="submit" name="cmd" value="Search">
		 </form>
       
        <form action="Catering" method="post" >
        <br/>
        		<%String MenuNo="";%>
        		<%String Food1="";%>
        		<%String Food2="";%>
        		<%String Food3="";%>
        		<%String Food4="";%>
        		<%String Food5="";%>
        		<%String Drinks="";%>
        		<%String Dessert1="";%>
        		<%String Dessert2="";%>
        		<%Float Price=null;%>
        		
        		
        		<%
        		CateringData vdata = (CateringData)request.getAttribute("object"); 
        		if(vdata != null){
        		MenuNo=vdata.getMenuNo();
        		Food1=vdata.getFood1();
        		Food2=vdata.getFood2();
        		Food3=vdata.getFood3();
        		Food4=vdata.getFood4();
        		Food5=vdata.getFood5();
        		Drinks=vdata.getDrinks();
        		Dessert1=vdata.getDessert1();
        		Dessert2=vdata.getDessert2();
        		Price=vdata.getPrice();
        	}
        %>
        	
        		
        
        <label id = "str5" >MENU NO</label><input class="form-control" type="text" name="menuno" value='<%=MenuNo%>' required="required" style="display: inline;" ><br></br> 
        <label id = "str5" >FOOD 1</label><input class="form-control" type="text" name="food1" value='<%=Food1%>' required="required"><br></br>
        <label id = "str5" >FOOD 2</label><input class="form-control" type="text" name="food2" value='<%=Food2%>' required="required"><br></br>
        <label id = "str5" >FOOD 3</label><input class="form-control" type="text" name="food3" value='<%=Food3%>' required="required"><br></br>
        <label id = "str5" >FOOD 4</label><input class="form-control" type="text" name="food4" value='<%=Food4%>' required="required"><br></br>
        <label id = "str5" >FOOD 5</label><input class="form-control" type="text" name="food5" value='<%=Food5%>' required="required"><br></br>
        <label id = "str5" >DRINKS</label><input class="form-control" type="text" name="drinks" value='<%=Drinks%>' required="required"><br></br>
        <label id = "str5" >DESSERT 1</label><input class="form-control" type="text" name="dessert1" value='<%=Dessert1%>' required="required"><br></br>
        <label id = "str5" >DESSERT 2</label><input class="form-control" type="text" name="dessert2" value='<%=Dessert2%>' required="required"><br></br>
        <label id = "str5" >PRICE</label><input class="form-control" type="number" name="price"value='<%=Price%>' required="required"><br></br>
       	
       
        
       
        
        
        <input class="button" type="submit" name="cmd" value="ADD">
        <input class="button" type="submit" name="cmd" value="UPDATE" onclick="return confirm('Are you sure you want to Update')">       
        <input class="button" type="submit" name="cmd" value="DELETE" onclick="return confirm('Are you sure you want to Delete')">      
                
                
                
                
                
                
                
                
                       
          </form>


    </div>
</div>



<br><br><br><br><br> <br><br> <br><br> <br><br> <br> <br>
<footer>
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
