package com.controller.exam;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.exam.CreateExamDAO;

/**
 * Servlet implementation class CreateExamController
 */
@WebServlet("/CreateExam")
public class CreateExamController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String examName = request.getParameter("examname");
		String password = request.getParameter("password");
		String noq = request.getParameter("noq");
		String limittime = request.getParameter("time");		

		int noqInt = Integer.parseInt(noq);
		int timeInt = Integer.parseInt(limittime);
		
		CreateExamDAO dao = new CreateExamDAO();
		Date date = Date.valueOf(LocalDate.now());
		String datesql = date.toString();
		dao.createExam(examName, password, datesql, noqInt, timeInt, 1);
		
		response.sendRedirect("createExam.jsp");
	}

}
