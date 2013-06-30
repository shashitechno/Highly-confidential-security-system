<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

 

<%    //Check for Session
   if(session.getAttribute("userid")==null)
{
     response.sendRedirect("index.jsp?err=2");
}
%>
  
      <%@include file="Db.jsp" %>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Dashboard |  Admin</title>
    
    <link rel="stylesheet" type="text/css" href="admin/css/reset.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="admin/css/text.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="admin/css/grid.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="admin/css/layout.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="admin/css/nav.css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" type="text/css" href="admin/css/ie6.css" media="screen" /><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" type="text/css" href="admin/css/ie.css" media="screen" /><![endif]-->
    <!-- BEGIN: load jquery -->
    <script src="admin/js/jquery-1.6.4.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="admin/js/jquery-ui/jquery.ui.core.min.js"></script>
    <script src="admin/js/jquery-ui/jquery.ui.widget.min.js" type="text/javascript"></script>
    <script src="admin/js/jquery-ui/jquery.ui.accordion.min.js" type="text/javascript"></script>
    <script src="admin/js/jquery-ui/jquery.effects.core.min.js" type="text/javascript"></script>
    <script src="admin/js/jquery-ui/jquery.effects.slide.min.js" type="text/javascript"></script>
    <!-- END: load jquery -->
    
  
<body>
    <div class="container_12">
        <div class="grid_12 header-repeat">
            <div id="branding">
                <div class="floatleft">
                   <font color="white"> <h1>Highly Confidencial Security System</h1></font></div>
                <div class="floatright">
                    <div class="floatleft">
                        <img src="admin/img/img-profile.jpg" alt="Profile Pic" /></div>
                    <div class="floatleft marginleft10">
                        <ul class="inline-ul floatleft"> <li>
                        <%
                             
                                  Statement st=conn.createStatement();
                                  String query="select * from tbl_admin_login";
                                  ResultSet rs=st.executeQuery(query);
                                  if(rs.next())
                                  {
                                	 out.print("Hello "+rs.getString("email"));
                             
                                	 %>
                         
                           </li>
                            <li><a href="#">Config</a></li>
                            <li><a href="Logout.jsp">Logout</a></li>
                        </ul>
                        <br />
                        <span class="small grey">
                        
                        
                                  	 <%  out.print("Last Login: "+rs.getString("last_login"));  
                                  }
                        
                        
                        %></span>
                    </div>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
        <div class="grid_12">
            <ul class="nav main">
                <li class="ic-dashboard"><a href="dashboard.html"><span>Dashboard</span></a> </li>
                <li class="ic-form-style"><a href="javascript:"><span>Controls</span></a>
                    <ul>
                        <li><a href="form-controls.html">Forms</a> </li>
                        <li><a href="buttons.html">Buttons</a> </li>
                        <li><a href="form-controls.html">Full Page Example</a> </li>
                        <li><a href="table.html">Page with Sidebar Example</a> </li>
                    </ul>
                </li>
                <li class="ic-typography"><a href="typography.html"><span>Typography</span></a></li>
				<li class="ic-charts"><a href="charts.html"><span>Charts & Graphs</span></a></li>
                <li class="ic-grid-tables"><a href="table.html"><span>Data Table</span></a></li>
                <li class="ic-gallery dd"><a href="javascript:"><span>Image Galleries</span></a>
               		 <ul>
                        <li><a href="image-gallery.html">Pretty Photo</a> </li>
                        <li><a href="gallery-with-filter.html">Gallery with Filter</a> </li>
                    </ul>
                </li>
                <li class="ic-notifications"><a href="notifications.html"><span>Notifications</span></a></li>

            </ul>
        </div>
        <div class="clear">
        </div>
        <div class="grid_2">
            <div class="box sidemenu">
                <div class="block" id="section-menu">
                    <ul class="section menu">
                        <li><a class="menuitem">Your Documents</a>
                            <ul class="submenu">
                                <li><a href="CreateQuiz.jsp">Store A new textual Data</a> </li>
                                <li><a href="EditQuiz.jsp">Edit Existing</a> </li>
                              
                            </ul>
                        </li>
                        <li><a class="menuitem">Menu 2</a>
                            <ul class="submenu">
                                <li><a>Submenu 1</a> </li>
                                <li><a>Submenu 2</a> </li>
                                <li><a>Submenu 3</a> </li>
                                <li><a>Submenu 4</a> </li>
                                <li><a>Submenu 5</a> </li>
                            </ul>
                        </li>
                        <li><a class="menuitem">Menu 3</a>
                            <ul class="submenu">
                                <li><a>Submenu 1</a> </li>
                                <li><a>Submenu 2</a> </li>
                                <li><a>Submenu 3</a> </li>
                                <li><a>Submenu 4</a> </li>
                                <li><a>Submenu 5</a> </li>
                                <li><a>Submenu 1</a> </li>
                                <li><a>Submenu 2</a> </li>
                                <li><a>Submenu 3</a> </li>
                                <li><a>Submenu 4</a> </li>
                                <li><a>Submenu 5</a> </li>
                            </ul>
                        </li>
                        <li><a class="menuitem">Generate Reports</a>
                            <ul class="submenu">
                                <li><a href="report.jsp">Indivisual Report</a> </li>
                                <li><a>All Students Report</a> </li>
                                <li><a>Customized Report</a> </li>
                              
                    
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>    