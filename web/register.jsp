<title>REGISTER</title>

<style>

.transbox {
	
    opacity: 0.8;
        height: 450px;
        width: 500px;
        text-align: center;
}

h2 {
      font-size: 30px;
      text-transform: uppercase;
      color: #cc0052;
      font-weight: 600;
      margin-bottom: 30px;
  }
  h3 {
	  font-size: 25px;
    color: #cc0052;
}
  h4 {
      font-size: 22px;
      line-height: 1.375em;
      color: #4d0017;
      font-weight: 400;
      margin-bottom: 30px;
  } 
 h5 {
      font-size: 17px;
      line-height: 1.375em;
      color: #800028;
      font-weight: 400;
      margin-bottom: 30px;
  }   

textarea:focus, input:focus, input[type]:focus, .uneditable-input:focus {   
    outline: none !important;
    border-color: #cc0052;
    box-shadow: 0 0 15px #719ECE;
}
input[type=text], select {
    width: 40%;
    padding: 5px 5px;
    margin: 8px 0;
    display: inline-block;
    border: 2px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=password], select {
    width: 40%;
    padding: 5px 5px;
    margin: 8px 0;
    display: inline-block;
    border: 2px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

 
input[type=submit] {
    width: 15%;
    background-color: #ff0066;
    font-size: 20;
    color: white;
    padding: 5px 5px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 25px;
}
</style>

<body background="res1/book-wallpaper-6.jpg"></body><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="home.jsp"><font size="5" color="white">HOME</font></a>
     &nbsp;&nbsp;&nbsp;&nbsp;
     <a href="#"><font size="5" color="white">VIEW BOOKS</font></a>
     &nbsp;&nbsp;&nbsp;&nbsp;
     <a href="#"><font size="5" color="white">ABOUT US</font></a>
     &nbsp;&nbsp;&nbsp;&nbsp;
     <a href="login.jsp"><font size="5" color="white">LOGIN</font></a>
<center>
    <br>
    <br><br>
    
<div class="transbox">
    <br>
    <form action="reg.jsp" method="POST">  
    <font size="7" color="red">REGISTER<font>
    <marquee><font size="4">Enter details to create new account..</font></marquee>
          <br><br>
      <input type="text" name="lid" size="20" placeholder="Enter UserId" />
      <br>
	<input type="password" name="pass" size="20" placeholder="Enter Password"/>
        <br>
        <input type="password" name="cpass" size="20" placeholder="Confirm Password"/>
        <br>
        <input name="btn_login" type="submit" value="Signup"/>
        <br>
        
        <font size="4" color="red">${requestScope.msg}</font>
      </form>
</div>
    </center>
</body>