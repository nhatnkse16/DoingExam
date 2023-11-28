package com.dao.exam;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.db.DBConnect;
import com.model.Exam;

public class GetExamDAO {
	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	/* Get Exam */

	public List<Exam> getAllExam() {
		List<Exam> list = new ArrayList<>();
		String query = "";
		try {
			conn = new DBConnect().getConnect();// mo ket noi voi sql
			ps = conn.prepareStatement(query);

			rs = ps.executeQuery();

			while (rs.next()) {
				list.add(new Exam());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public static void main(String[] args) {
		try {

			CreateExamDAO dao = new CreateExamDAO();
			System.out.println("success");
		} catch (Exception e) {
			System.err.println("error");
		}
	}
}
