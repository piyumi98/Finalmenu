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
    


<div class="col-md-1"></div>
    <div class="col-md-5 formBackground2" >
 
        <form action="CustomerMenu" method="post" >
        <br/>
        		
        <label id = "str5" >TYPE</label><br>
        <select name="type" class="form-control">
		<option value="Catering">Catering</option>
		<option value="Event">Event</option>
		</select>
		<br></br> 
        <label id = "str5" >NAME</label><input class="form-control" type="text" name="name" required="required" style="display: inline;" ><br></br> 
        <label id = "str5" >CONTACT NUMBER</label><input class="form-control" type="number" name="phone"  required="required"><br></br>
        <label id = "str5" >EMAIL</label><input class="form-control" type="email" name="email"  required="required"><br></br>
        <label id = "str5" >ADDRESS</label><input class="form-control" type="text" name="address"  required="required"><br></br>
        <label id = "str5" >DATE</label><input class="form-control" type="date" name="date"  required="required"><br></br>
        <label id = "str5" >TIME</label><input class="form-control" type="time" name="time" min="08:00" max="21:00"  required="required"><br></br>
      
       
        
       
        
        
        <input class="button" type="submit" name="cmd" value="Submit">

                
                
                
                
                
                
                
                       
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
