package com.dao.exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.db.DBConnect;
import com.model.QuestionAnswer;

public class QuestionBankingDAO {

	static Connection conn = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;

	/*
	 * Add Course
	 * 
	 */

	public List<QuestionAnswer> addCourse(String courseName, String image) {
		List<QuestionAnswer> list = new ArrayList<>();
		String query = "Insert Into Course([courseName], [image]) Values (?, ?)";
		try {
			conn = new DBConnect().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);

			ps.setString(1, courseName);
			ps.setString(2, image);

			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new QuestionAnswer(rs.getString(1), rs.getString(2)));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}


	/*
	 * Add Question to bank
	 */

	public int insertQuestionAndAnswers(QuestionAnswer question, String[] answers) {
		this.conn = new DBConnect().getConnect();
		String insertQuestionSQL = "INSERT INTO dbo.QuestionBanking (questionDetail, image, idCourse, idUser) VALUES (?, ?, ?, ?)";
		String insertAnswerSQL = "INSERT INTO dbo.Answer (answerDetail, idQuestion, isCorrect) VALUES (?, ?, ?)";

		int questionId = -1; // Initialize with an invalid value

		try {
			conn.setAutoCommit(false); // Start the transaction

			// Insert into QuestionBanking
			try (PreparedStatement qs = conn.prepareStatement(insertQuestionSQL,
					Statement.RETURN_GENERATED_KEYS)) {
				qs.setString(1, question.getQuestionDetail());
				qs.setString(2, question.getImage());
				qs.setInt(3, question.getIdCourse());
				qs.setInt(4, question.getIdUser());

				int affectedRows = qs.executeUpdate();

				if (affectedRows > 0) {
					// Retrieve the generated questionID
					try (ResultSet generatedKeys = qs.getGeneratedKeys()) {
						if (generatedKeys.next()) {
							questionId = generatedKeys.getInt(1);
							question.setIdQuestion(questionId); // Set the generated question ID in the QuestionBanking
																// object
						} else {
							throw new SQLException("Creating question failed, no ID obtained.");
						}
					}
				} else {
					throw new SQLException("Creating question failed, no rows affected.");
				}
			}

			// Insert into Answer for each answer
			try (PreparedStatement as = conn.prepareStatement(insertAnswerSQL)) {
				for (String answer : answers) {
					as.setString(1, answer);
					as.setInt(2, questionId);
					as.setBoolean(3, false); // Adjust as needed

					as.addBatch(); // Add the statement to the batch
				}

				// Execute the batch
				as.executeBatch();
			}

			conn.commit(); // Both inserts successful, commit the transaction
		} catch (SQLException e) {
			try {
				conn.rollback(); // Rollback the transaction if an exception occurs
			} catch (SQLException rollbackException) {
				rollbackException.printStackTrace();
			}

			e.printStackTrace(); // Handle the exception according to your application's needs
		} finally {
			try {
				conn.setAutoCommit(true); // Reset auto-commit mode
			} catch (SQLException e) {
				e.printStackTrace(); // Handle the exception according to your application's needs
			}
		}

		return questionId;
	}
	
	/*
	 * Add Question to bank by Excel
	 */

//	public static String readFile(String excelFilePath, int collectionId) {
//	String query = "INSERT INTO BankQuestion (Detail, AnswerA, AnswerB, AnswerC, AnswerD, TrueAnswer)\n"
//			+ "VALUES (?, ?, ?, ?, ?, ?);"
//			+ "insert into CollectionConnect (CollectionID, BankQuestionID) values (?, SCOPE_IDENTITY());";
//	String errorRows = "";
//	try (FileInputStream fis = new FileInputStream(excelFilePath); Workbook workbook = new XSSFWorkbook(fis)) {
//		Sheet sheet = workbook.getSheetAt(0); // Lấy sheet đầu tiên
//
//		for (Row row : sheet) {
//			String detail = null;
//			String answerA = null;
//			String answerB = null;
//			String answerC = null;
//			String answerD = null;
//			String trueAnswer = null;
//
//			boolean isEmptyCell = false;
//			boolean isValidColumnF = true;
//
//			for (int i = 0; i <= 5; i++) { // Duyệt từ cột A đến F
//				Cell cell = row.getCell(i);
//				if (cell == null || cell.getCellType() == CellType.BLANK) {
//					errorRows = "Row ";
//					isEmptyCell = true;
//				}
//
//				if (i == 5) { // Kiểm tra cột F
//					String value = cell.getStringCellValue();
//					if (!value.toUpperCase().equals("A") && !value.toUpperCase().equals("B")
//							&& !value.toUpperCase().equals("C") && !value.toUpperCase().equals("D")) {
//						errorRows = "Row ";
//						isValidColumnF = false;
//					}
//				}
//			}
//
//			if (isEmptyCell || !isValidColumnF) {
//				continue; // Chuyển sang hàng tiếp theo nếu có ô trống hoặc cột F không hợp lệ
//			}
//
//			// Nếu hàng hợp lệ, đọc và xử lý dữ liệu ở đây
//			for (Cell cell : row) {
//				if (cell == null || cell.getCellType() == CellType.BLANK) {
//					System.out.print("BLANK\t");
//				} else if (cell.getCellType() == CellType.NUMERIC) {
//					System.out.print(cell.getNumericCellValue() + "\t");
//				} else if (cell.getCellType() == CellType.STRING) {
//					System.out.print(cell.getStringCellValue() + "\t");
//				} else {
//					// Handle other cell types if needed
//					System.out.print("OTHER\t");
//				}
//			}
//			try {
//				ps.setString(1, row.getCell(0).getStringCellValue());
//				ps.setString(2, row.getCell(1).getStringCellValue());
//				ps.setString(3, row.getCell(2).getStringCellValue());
//				ps.setString(4, row.getCell(3).getStringCellValue());
//				ps.setString(5, row.getCell(4).getStringCellValue());
//				ps.setString(6, row.getCell(5).getStringCellValue());
//				ps.setInt(7, collectionId);
//
//				ps.executeUpdate();
//			} catch (Exception e) {
//				System.err.println(e.getMessage());
//			}
//
//			System.out.println();
//		}
//	} catch (IOException e) {
//		e.printStackTrace();
//	}
//	if (errorRows != null) {
//		return errorRows;
//	}
//	return "";
//}
}
