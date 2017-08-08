<link rel="stylesheet" href="res/Site.css"/>
<body background='res1/books1-wide.jpg'>
    <br><br>
    <font size='6' color='white' align="right"><a href='admin.jsp'>HOME</a></font>
    <br>
<center>
    <h1 class="green">ADD BOOK FORM</h1>
</center>
<hr>
<br><br>
<center>
<form action="insertbook.jsp">
    <fieldset style="width: 200px;">
        <legend>BOOK DETAILS HERE</legend>
        <pre><font size="4">
BOOK NAME : <input type="text" name="name" required="true" placeholder="Enter book name"/>

BOOK TYPE : <select name="type" required>
                <option value="">--SELECT TYPE--</option>
                <option value="Physics">Physics</option>
                <option value="Chemistry">Chemistry</option>
                <option value="Maths">Mathematics</option>
                <option value="Fiction Novel">Fictional Novel</option>
                <option value="Non-Fiction Novel">Non-Fictional Novel</option>
                <option value="Magazine">Magazine</option>
                <option value="K.Story">Kid's Story Book</option>
                <option value="K.Science">Kid's Science Book</option>
                <option value="K.English">Kid's English Book</option>
</select>
            
PUBLISHER : <input type="text" name="publisher" required="true" placeholder="Enter publisher"/>

WRITER    : <input type="text" name="writer" required="true" placeholder="Enter writer"/>

PRICE     : <input type="text" name="price" required="true" placeholder="Enter price"/>

QUANTITY  : <input type="text" name="qty" required="true" placeholder="Enter quantity"/>
            
<input type="submit" value="ADD BOOK"/>
            </font>
        </pre>
    </fieldset>
    <span class="success">${m.name} : ${requestScope.msg}</span>
</form>
    
</center>
</body>