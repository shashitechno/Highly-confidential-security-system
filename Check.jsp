<%@page import="org.jasypt.util.text.BasicTextEncryptor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="Db.jsp" %>
<%@page import="javax.servlet.http.Cookie"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
public String Encrypte(String myEncryptionPassword,String myText)
{
	BasicTextEncryptor textEncryptor = new BasicTextEncryptor();
	textEncryptor.setPassword(myEncryptionPassword);
	
	String myEncryptedText = textEncryptor.encrypt(myText);
	return myEncryptedText;
}

%>
<%
boolean flag=false;
String email=request.getParameter("username");

String pass=request.getParameter("password");

Statement st=conn.createStatement();
String query="select * from tbl_register where email='"+email+"'";
ResultSet rs=st.executeQuery(query);

while(rs.next())
{
if((rs.getString("email").equals(email)) & (rs.getString("password").equals(pass)))
{
	flag=true;
	break;
}
}
if(flag)
{
    Cookie cookie = new Cookie("userid",Encrypte("Shashi",pass));             // create Cookie
	cookie.setMaxAge(60 * 60);                               
	response.addCookie(cookie);	 
	session.setAttribute("userid",Encrypte("Shashi",pass+email));      // Create The Session
	response.sendRedirect("3dAuthetication.jsp#cube");
}
else
{
	      response.sendRedirect("index.jsp?err=1");                   //error redirect
}

%>