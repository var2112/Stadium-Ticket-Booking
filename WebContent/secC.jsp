<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.0/jspdf.umd.min.js" integrity="sha512-5yTVoG0jFRsDhgYEoKrZCj5Bazxqa0VnETLN7k0SazQcARBsbgrSb6um+YpzWKNKV2kjb8bhna4fDfOk3YPr4Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link rel="stylesheet" href="css/secAA.css">
<script src="js/pdf.js"></script>
</head>
<body>
<div><section class="container">
<a href="sectionC.jsp"><h1>Book Another Ticket</h1></a>
</div>

<center>
      <div class="jumbotron jumbotron-fluid">
        <div class="container">
          <h1 class="display-1" style="font-family: Bebas Neue;"><b>Congratulations!!!!!</b></h1>
          <p class="lead"><b>Your Ticket has been booked</b></p>
        </div>
      </div>
      </center>
<% 


 String name = request.getParameter("name");
        String email = request.getParameter("email");
        String zip = request.getParameter("zip");
        String state = request.getParameter("state");
        String seatNum = request.getParameter("seatNum");

        try{

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/StadiumBooking?characterEncoding=latin1", "root", "root");
            String s = "insert into sectionC(name, email, zip, state, seatNum,bookTime) values(?,?,?,?,?,?)";
            
            

            PreparedStatement ps = con.prepareStatement(s);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, zip);
            ps.setString(4, state);
            ps.setString(5, seatNum);
            ps.setTimestamp(6, new java.sql.Timestamp(new java.util.Date().getTime()));
            
            ps.execute();
            
			Statement st = con.createStatement();
			/*ResultSet rs = st.executeQuery("select name,seatNum from sectionA where name = ?");
			ps.setString(1, "name"); */
			ResultSet rs = st.executeQuery("select name,seatNum from sectionC  order by bookTime DESC limit 1");
			while(rs.next()){

					out.println("<article class='card fl-left' style=' position: relative; left: 320px; top:80px; height:167px;'  id='ticket'>");
	                out.println("<section class='date'>");
	                out.println("<time datetime='23th feb'style='position: absolute; top: 80px;''>");
	                out.println("<span>" + rs.getString(2) + "</span><span>Seat No.</span>");
	                out.println("</time>");
	                out.println("</section>");
	                out.println("<section class='card-cont'>");
	                out.println("<small>CHE VS MANU</small>");
	                out.println("<h3>" + rs.getString(1) + "</h3>");
	                out.println("<div class='even-date'>");
	                out.println("<i class='fa fa-calendar'><time><span>wednesday 15 February 2022</span><span>08:55pm to 12:00 am</span>");
	                out.println("</time></div>");
	                out.println("<div class='even-info'><i class='fa fa-map-marker'></i></div>");
					out.println("<img src='img/tikk.png' style='position: relative; left: 280px; bottom: 123px;''>");
	                //out.println("<a href='' style='background-color: blue;' id='download'>Booked</a>");
	                out.println("</section></article>");

        }
        }
        

        catch(Exception e){
        	
        	//response.sendRedirect("sectionA.jsp");
            out.println("<script> window.alert('This Seat is already booked') </script>");
            out.println("<script> window.location='sectionC.jsp' </script>");
            
        }

    %>
    


 
 


    

</body>
</html>