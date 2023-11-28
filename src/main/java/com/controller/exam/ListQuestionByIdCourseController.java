package com.controller.exam;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.exam.QuestionAnswerDAO;
import com.model.QuestionAnswer;

/**
 * Servlet implementation class ListQuestionByIdCourseController
 */
@WebServlet("/ListQuestionByIdCourse")
public class ListQuestionByIdCourseController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Replace '1' with the actual idCourse you want to retrieve
		int idCourse = 1;
		int idUserAdd = 1;

		QuestionAnswerDAO questionAnswerDAO = new QuestionAnswerDAO();
		List<QuestionAnswer> questionAnswers = questionAnswerDAO.getQuestionsAndAnswersByCourseId(idCourse, idUserAdd);
		
		for (QuestionAnswer o : questionAnswers) {
			System.out.println(o);
		}

		// Set the list of questionAnswers as a request attribute
		request.setAttribute("questionAnswers", questionAnswers);

		// Forward the request to the JSP page
		RequestDispatcher dispatcher = request.getRequestDispatcher("ListQuestionByIdCourse.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        String[] selectedQuestionIds = request.getParameterValues("selectedQuestions");

        if (selectedQuestionIds != null) {
            QuestionAnswerDAO questionAnswerDAO = new QuestionAnswerDAO();

            for (String questionId : selectedQuestionIds) {
                // Process each selected question ID (e.g., insert into the database)
                int idQuestion = Integer.parseInt(questionId);
//                questionAnswerDAO.insertSelectedQuestion(idQuestion);
                System.out.println(idQuestion);
            }
        }

       response.sendRedirect("ListQuestionByIdCourse");
    }
}
