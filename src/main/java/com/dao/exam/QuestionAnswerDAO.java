package com.dao.exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.db.DBConnect;
import com.model.QuestionAnswer;

public class QuestionAnswerDAO {
	private Connection conn = null;

	/*
	 * Select Banking Question from Course to add for Exam
	 * 
	 */

	public List<QuestionAnswer> getQuestionsAndAnswersByCourseId(int idCourse, int idUser) {

		this.conn = new DBConnect().getConnect();
		List<QuestionAnswer> questionAnswers = new ArrayList<>();
		String selectSQL = "  SELECT q.idQuestion, q.questionDetail, q.image, a.answerDetail \r\n"
				+ "				FROM dbo.QuestionBanking q\r\n"
				+ "				LEFT JOIN dbo.Answer a ON q.idQuestion = a.idQuestion \r\n"
				+ "				WHERE q.idCourse = ? AND q.idUser= ?";

		try (PreparedStatement statement = conn.prepareStatement(selectSQL)) {
			statement.setInt(1, idCourse);
			statement.setInt(2, idUser);

			try (ResultSet resultSet = statement.executeQuery()) {
				int currentQuestionId = 0;
				QuestionAnswer currentQuestionAnswer = null;

				while (resultSet.next()) {
					int questionId = resultSet.getInt("idQuestion");

					if (questionId != currentQuestionId) {
						// New question, create a new QuestionAnswer instance
						currentQuestionAnswer = new QuestionAnswer();
						currentQuestionAnswer.setIdQuestion(questionId);
						currentQuestionAnswer.setQuestionDetail(resultSet.getString("questionDetail"));
						currentQuestionAnswer.setImage(resultSet.getString("image"));
						currentQuestionAnswer.setAnswers(new ArrayList<>());

						questionAnswers.add(currentQuestionAnswer);
						currentQuestionId = questionId;
					}

					// Add answer detail to the current question
					if (currentQuestionAnswer != null) {
						currentQuestionAnswer.getAnswers().add(resultSet.getString("answerDetail"));
					}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace(); // Handle the exception according to your application's needs
		}

		return questionAnswers;
	}

	public static void main(String[] args) {
		// Replace '1' with the actual idCourse you want to test
		int idCourseToTest = 1;

		QuestionAnswerDAO questionAnswerDAO = new QuestionAnswerDAO();
		List<QuestionAnswer> questionAnswers = questionAnswerDAO.getQuestionsAndAnswersByCourseId(idCourseToTest,idCourseToTest);

		// Print the retrieved questions and answers
		for (QuestionAnswer qa : questionAnswers) {
			System.out.println("Question ID: " + qa.getIdQuestion());
			System.out.println("Question Detail: " + qa.getQuestionDetail());
			System.out.println("Image: " + qa.getImage());

			System.out.println("Answers:");
			for (String answer : qa.getAnswers()) {
				System.out.println(answer);
			}

			System.out.println("------------");
		}
	}
}
