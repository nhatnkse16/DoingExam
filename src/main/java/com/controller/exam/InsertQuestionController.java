package com.controller.exam;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.exam.QuestionBankingDAO;
import com.model.QuestionAnswer;

/**
 * Servlet implementation class InsertQuestionController
 */
@WebServlet("/InsertQuestionController")
public class InsertQuestionController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String questionDetail = request.getParameter("questionDetail");
		String[] answers = request.getParameterValues("answers");

		// Create an instance of QuestionBanking with the question data
		QuestionAnswer question = new QuestionAnswer(questionDetail, "Question Image", 1, 1); 																							

		// Create an instance of CombinedDAO
		QuestionBankingDAO dao = new QuestionBankingDAO();
		int questionId = dao.insertQuestionAndAnswers(question, answers);

	}

}
