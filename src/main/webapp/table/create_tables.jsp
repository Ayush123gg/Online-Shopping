<%@page import="project.ConnectionProvider "%>

<%@page import="java.sql.*"%>

<%

try


{


Connection con=ConnectionProvider.getCon(); 
Statement st=con.createStatement();

String q1="create table users (name varchar(100), email varchar(100) primary key, mobileNumber number)";

System.out.print(q1);

st.execute(q1);


System.out.println("Table created");

con.close();

}

catch (Exception e)
 {

System.out.print(e);}

 %>