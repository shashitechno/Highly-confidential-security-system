

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.DiskFileUpload;


/**
 * Servlet implementation class DoUploads
 */
@SuppressWarnings("deprecation")
@WebServlet("/DoUploads")
public class DoUploads extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	String stmtSQL;
	Config db;
	int fileSize;
	String sql="INSERT INTO `security_system`.`tbl_register` (`uid`, `email`, `password`, `fname`, `lastname`, `Birth_date`, `mobile`,`sex`, `Identity_type`,`Identity_image`,  `Security_ques`, `Security_ans`,`Address`, `ip_address`) VALUES (?, ?,?, ?, ?, ?,?, ?, ?,?, ?,?, ?,?)";
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoUploads() {
    	  super();
    	
       this.stmtSQL=sql;
       
       Config db=new Config();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		
		{
			
		
		PrintWriter out;
		out=response.getWriter();
		
		FileItem fi;
		int count=0;
		
		try
		{
			boolean isMultipart = DiskFileUpload.isMultipartContent(request);
		
			if(isMultipart)
			{
			
			   DiskFileUpload fu = new DiskFileUpload();
	           // If file size exceeds 10 MB, a FileUploadException will be thrown
	           fu.setSizeMax(10000000);
	           boolean saveToDB = true;
	           List fileItems = fu.parseRequest(request);
	           Iterator itr = fileItems.iterator();
	           
	           Connection conn=new Config().connect();
	           PreparedStatement stmt = conn.prepareStatement(stmtSQL);
	          
	           while(itr.hasNext()) 
	       	{
	        	   count++;
	        	
	               	 fi = (FileItem) itr.next();
	               	 
	               	 if(fi.isFormField())
	               	 {
	               		 stmt.setString(count, fi.getString());
	               		
	               	     
	               	 }
	               	 else
	               	 {
	               		String localName = null;
	        			// Write-out to a local file using only the file name.
	        			// Note: You should put into its own directory and make sure about duplicate file names.
	        			// The file gets saved by default in the directory where the JSP is located.
	        			String baseName = stripClientPath(fi.getName());
	        	//		localName = application.getRealPath("/")+baseName;            		
	        			fileSize = (int) fi.getSize();

	               		 
	               		 stmt.setBinaryStream(count,fi.getInputStream(),fileSize);
	               	 }
	               	

		}
	          int i= stmt.executeUpdate();
	         if(i==1)
	         {
	        	 response.sendRedirect("index.jsp?sucess=1");
	         }
	         else
	         {
	        	 response.sendRedirect("index.jsp?sucess=1");
	         }
		
		// TODO Auto-generated method stub
	      }
		}
		catch(Exception e){   out.print(e);}
		
		}
		
   
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

  }

