package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;

@WebServlet("/NoteEditServletv")
public class NoteEditServletv extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		
		try
		{
			Integer noteid=Integer.parseInt(request.getParameter("noteid"));
			String Title=request.getParameter("title");
			String Content=request.getParameter("content");
			
			PostDAO dao=new PostDAO(DBConnect.getConn());
			boolean f=dao.PostUpdate(noteid, Title, Content);
			
			if(f)
			{
				System.out.println("Data Update  Sucessfulyy");
				HttpSession session=request.getSession();
				session.setAttribute("updateMsg","Notes Update Sucessfuly");
				response.sendRedirect("shownotes.jsp");
				
			}
			else {
				System.out.println("Data Not Updated");
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
