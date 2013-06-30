<%@ page import="org.apache.commons.fileupload.DiskFileUpload, org.apache.commons.fileupload.FileItem"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.io.File"%>
<%@ page import="java.sql.*"%>
<%@ include file="Db.jsp" %>

<html>
<head>
<title>Process File Upload</title>
</head>
<body>

<H1>Processing uploaded files...</H1>




<%!
int count=0;
String plainText[]=new String[11];
FileItem fi;
int fileSize;
%>

<%

try
{
	/* Note: Since HTML request is in one multi-part block.  You cannot use request.getParameter() to retrieve other 
		 form parameters.  Instead, fields are processed using FileItem (see below).
	*/

	boolean isMultipart = DiskFileUpload.isMultipartContent(request);
	if (!isMultipart)
	{	out.println("Error.  Expecting multi-part HTML file upload.");
		return;
	}

        DiskFileUpload fu = new DiskFileUpload();
        // If file size exceeds 10 MB, a FileUploadException will be thrown
        fu.setSizeMax(10000000);

	boolean saveToDB = true;

        List fileItems = fu.parseRequest(request);
        Iterator itr = fileItems.iterator();
    
        while(itr.hasNext()) 
	{
        	 fi = (FileItem) itr.next();

          	// Check if not form field so as to only handle the file inputs
          	// else condition handles the submit button input
          	if (!fi.isFormField()) 
		{
			String localName = null;
			// Write-out to a local file using only the file name.
			// Note: You should put into its own directory and make sure about duplicate file names.
			// The file gets saved by default in the directory where the JSP is located.
			String baseName = stripClientPath(fi.getName());
			localName = application.getRealPath("/")+baseName;            		
			fileSize = (int) fi.getSize();

			if (!saveToDB)
			{
            			out.print("<H3>Remote name: "+fi.getName()+" Local name: "+localName+"  Size: "+fileSize+"</H3>");

				File fNew = new File(localName);
            			fi.write(fNew);
			}
			else
			{

				// Now we could either:
				//  1) Store the files on the web server and then store their location in the database (easier)
				//  2) Store the file data in a BLOB in the database and materialize on demand (harder).
				// Doing #1 is easy from above just put files in a known directory and check for duplicate names.

				// How to do #2
				//  1) Create a PreparedStatement that will do the insert.
				//  2) Pass the PreparedStatement a InputStream for the BLOB.
				//  Our table definition: (uses image type instead of BLOB as done on SQL Server)
				// create table pictures (
  				// id int IDENTITY PRIMARY KEY NOT NULL ,
  				// fileName VARCHAR(100),
  				// fileData image );

				// Database connection information
		       	 	

				String stmtSQL = "INSERT INTO INSERT INTO `security_system`.`tbl_register` (`uid`, `email`, `password`, `sex`, `fname`, `lastname`, `Birth_date`, `Identity_type`, `Identity_image`,`Address`, `Security_ques`, `Security_ans`, `mobile`, `ip_address`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement stmt = conn.prepareStatement(stmtSQL);
				
                              out.print(savetoDB(stmt));
                               stmt.close();
                               conn.close();
            			out.println("<H3>Inserted file: "+localName+" size: "+fileSize+" into database</H3>");
			}
          	}
          	else 
    		{
          		plainText[count]=fi.getString();
                		out.println("<H3>Form parameter field ="+fi.getFieldName()+"  "+fi.getString()+"</H3>");
                		count++;
            }
          	
        }
        
       
	out.println("<H2>Done processing all files.</H2>");
}
catch (Exception e)
{	out.println("<H2>Error: "+e+"</H2>");
}
%>
<%!
public int savetoDB(PreparedStatement stmt)
{
	 int i=0;
	try
	{
stmt.setString(1,"");
stmt.setString(2,plainText[0]);
stmt.setString(3,plainText[1]);
stmt.setString(4,plainText[2]);
stmt.setString(5,plainText[3]);
stmt.setString(6,plainText[4]);
stmt.setString(7,plainText[5]);
stmt.setString(8,plainText[6]);

stmt.setBinaryStream(2,fi.getInputStream(), fileSize);
stmt.setString(10,plainText[7]);
stmt.setString(11,plainText[8]);
stmt.setString(12,plainText[9]);
stmt.setString(13,plainText[10]);
stmt.setString(14,"");
i=stmt.executeUpdate();

	}
	catch(Exception  e){}
	
	return i;

}
%>


<%!
private String stripClientPath(String s) 
{	// Strips the client path from a filename and returns only the filename itself
	if (s==null)
		return null;

	String filepath = null;
	String filename = null;

	int pos = s.lastIndexOf('\\');		// Search for last \
	if (pos >= 0)
	{
		filepath = s.substring(0,pos);
		filename = s.substring(pos + 1);
	}
	else
		filename = s;
	return filename;
}

%>