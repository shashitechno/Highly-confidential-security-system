


<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6 lt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7 lt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8 lt8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->

    <head>
        <meta charset="UTF-8" />
        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Highly Confidencial Security System-Login panel</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="admin/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="admin/css/style_login.css" />
		<link rel="stylesheet" type="text/css" href="admin/css/animate-custom.css" />
		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    </head>
    <body>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
              
                    </a>
                </span>
                <div class="clr"></div>
            </div><!--/ Codrops top bar -->
            <header>
                <h1>Welcome Guest! Please Login <span>to Start Using!</span></h1>
				<nav class="codrops-demos">
					
				</nav>
				 <%
                        if(request.getParameter("err")!=null && request.getParameter("err").equals("1"))
                        {
                        	out.print("<h1><font color=red>Email Or password Is Wrong! Please try Again!</font></h1>");
                        }
				 
                        else if(request.getParameter("sucess")!=null && request.getParameter("sucess").equals("1"))
                        {
                        	out.print("<h2><font color=red>Welcome you're Registered! Please Login :)</font></h2>");
                        }
                        else if(request.getParameter("err")!=null && request.getParameter("err").equals("2"))
                       {
                 	       out.print("<h2><font color=red>Somthing gone worng! Please try Again!</font></h2>");
                       }
                        %>
            </header>
            <section>				
                <div id="container_demo" >
                  
                    <div id="wrapper">
                   
                        <div id="login" class="animate form">
                            <form  action="Check.jsp" autocomplete="off"> 
                                <h1>Log in</h1> 
                                <p> 
                                    <label for="username" class="uname" data-icon="u" > Your email or username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
                                    <label for="password" class="youpasswd" data-icon="p"> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button"> 
                                    <input type="submit" value="Login" /> 
								</p>
                                <p class="change_link">
									Not a member yet ?
									<a href="register.jsp" class="to_register">Ask Admin for a Account!</a>
								</p>
                            </form>
                        </div>

                        
    </body>
</html>