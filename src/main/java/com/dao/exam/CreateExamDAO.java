package com.dao.exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.db.DBConnect;
import com.model.Exam;
import com.model.QuestionAnswer;

public class CreateExamDAO {
	static Connection conn = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;

	/*
	 * Get Course to Create Exam
	 * 
	 */

	public List<QuestionAnswer> getCourse() {
		List<QuestionAnswer> list = new ArrayList<>();
		String query = "Select * from [Course]";
		try {
			conn = new DBConnect().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);

			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new QuestionAnswer(rs.getInt(1), rs.getString(2), rs.getString(3)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/*
	 * Create Exam
	 * 
	 */

	public List<Exam> createExam(String examName, String passWord, String createDate, int numberQuestion,
			 int limitTime, int idUser) {
		List<Exam> list = new ArrayList<>();
		String query = "Insert into Exam([examName],[password], [createDate], [numberQuestion], [limitTime], [idUser])\r\n"
				+ "Values (?,?,?, ?, ?, ?)";
		try {
			conn = new DBConnect().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);

			ps.setString(1, examName);
			ps.setString(2, passWord);
			ps.setString(3, createDate);
			ps.setInt(4, numberQuestion);
			ps.setInt(5, limitTime);
			ps.setInt(6, idUser);

			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Exam(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	/*
	 * Select Banking Question from Course to add for Exam
	 * 
	 */

//	public List<BankQuestion> getQuestionFromCourse(int idCourse) {
//		List<BankQuestion> list = new ArrayList<>();
//		String query = "Select [QuestionBanking].[idQuestion], [QuestionBanking].[questionDetail], [QuestionBanking].[image], [Answer].[answerDetail], [Answer].[isCorrect]\r\n"
//				+ "From [QuestionBanking] \r\n"
//				+ "JOIN [Answer]\r\n"
//				+ "ON [QuestionBanking].[idQuestion] = [Answer].[idQuestion]\r\n"
//				+ "Where [idCourse] = ?";
//		try {
//			conn = new DBConnect().getConnect();// mo ket noi voi sql
//			
//			ps = conn.prepareStatement(query);
//			ps.setInt(1, idCourse);
//			
//			rs = ps.executeQuery();
//
//			while (rs.next()) {
//				list.add(new BankQuestion(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getBoolean(5)));
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return list;
//	}

//	public List<BankQuestion> getQuestions() {
//		List<BankQuestion> questionList = new ArrayList<>();
//		String selectQuestionQuery = "SELECT * FROM QuestionBanking";
//		String selectAnswerQuery = "SELECT * FROM Answer WHERE idQuestion = ?";
//
//		try {
//			conn = new DBConnect().getConnect();
//			ps = conn.prepareStatement(selectQuestionQuery);
//			rs = ps.executeQuery();
//
//			while (rs.next()) {
//				int questionId = rs.getInt("idQuestion");
//				String questionDetail = rs.getString("questionDetail");
//				String imageQuestion = rs.getString("image");
//				int idCourse = rs.getInt("idCourse");
//
//				// Retrieve answers for the current question
//				List<BankQuestion> answers = new ArrayList<>();
//				PreparedStatement answerPs = conn.prepareStatement(selectAnswerQuery);
//				answerPs.setInt(1, questionId);
//				ResultSet answerRs = answerPs.executeQuery();
//				while (answerRs.next()) {
//					String answerDetail = answerRs.getString("answerDetail");
//					boolean isCorrect = answerRs.getBoolean("isCorrect");
//					answers.add(new BankQuestion(answerDetail, isCorrect));
//				}
//				answerRs.close();
//				answerPs.close();
//
//				// Add the question and its answers to the list
//				questionList.add(new BankQuestion(questionDetail, imageQuestion, idCourse, answers, false));
//			}
//
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				if (conn != null) {
//					conn.close();
//				}
//				if (ps != null) {
//					ps.close();
//				}
//				if (rs != null) {
//					rs.close();
//				}
//			} catch (SQLException e) {
//				e.printStackTrace();
//			}
//		}
//
//		return questionList;
//	}

	/*
	 * Add Question From Bank to Exam
	 * 
	 */

	public List<Exam> addQuestionToExam(int idExam, int idQuestion) {
		List<Exam> list = new ArrayList<>();
		String query = "Insert into [QuestionChoice]([idExam], [idQuestion]) Values (?,?)";
		try {
			conn = new DBConnect().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);

			ps.setInt(1, idExam);
			ps.setInt(2, idQuestion);

			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Exam(rs.getInt(1), rs.getInt(2)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void main(String[] args) {
//		try {
//
//			CreateExamDAO dao = new CreateExamDAO();
//			dao.createExam("Test 03", "123", "2023-03-15", 6, "2023-03-15 07:36:12", "2023-12-15 07:36:12", 5, 1);
//			dao.addQuestionToExam(2, 1);
//			System.out.println("success");
//		} catch (Exception e) {
//			System.err.println("error");
//		}

//		CreateExamDAO dao = new CreateExamDAO();
//		List<BankQuestion> list = dao.getQuestionFromCourse(1);
//		for (BankQuestion o : list) {
//			System.out.println(o);
//		}

//		List<BankQuestion> questionList = dao.getQuestions();
//
//		// Display the retrieved questions and details
//		for (BankQuestion question : questionList) {
//			System.out.println("Question: " + question.getQuestionDetail());
//			System.out.println("Image: " + question.getImageQuestion());
//			System.out.println("Course ID: " + question.getIdCourse());
//
//			// Display answers for each question
//			List<BankQuestion> answers = question.getAnswers();
//			for (BankQuestion answer : answers) {
//				System.out.println("Answer: " + answer.getAnswerDetail());
//				System.out.println("Is Correct: " + answer.isCorrect());
//			}
//
//			System.out.println(); // Add a line break between questions
//		}
	}
}
