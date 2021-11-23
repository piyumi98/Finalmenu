<!DOCTYPE html>
<html lang="en">
<head>
<title>HOTEL GOD'S LITTLE ACRE</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
<br> <br><br> <br>

   
  <div class="container_24">
    <div class="indent-bot-2 boxes-bg">
    
      <article class="grid_6">
        <div class="box-1">
          <div class="inner" style="height: 230px;"><br>
            <h3>Catering & Event Menu</h3>
            
            <div class="btn-container">
              <div class="button-box"> <a href="Catering.jsp" class="button">Click Here</a> </div>
            </div>
          </div>
        </div>
      </article>
     
  
      <article class="grid_6">
        <div class="box-1">
          <div class="inner"><br>
            <h3>Room Service Menu</h3>
            
            
            <div class="btn-container">
              <div class="button-box"> <a href="#" class="button">Click Here</a> </div>
            </div>
          </div>
        </div>
      </article>
      
    
       </div>
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
