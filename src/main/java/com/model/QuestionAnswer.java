package com.model;

import java.util.List;

public class QuestionAnswer {
	private int idQuestion;
	private String questionDetail;
	private String image;
	private int idCourse;
	private int idUser;
	private List<String> answers; 
	private String courseName;
	private String imageCourse;

	public QuestionAnswer() {
		// TODO Auto-generated constructor stub
	}

	public QuestionAnswer(int idQuestion, String questionDetail, String image, List<String> answers) {
		super();
		this.idQuestion = idQuestion;
		this.questionDetail = questionDetail;
		this.image = image;
		this.answers = answers;
	}
	

	public QuestionAnswer(String questionDetail, String image, int idCourse, int idUser) {
		super();
		this.questionDetail = questionDetail;
		this.image = image;
		this.idCourse = idCourse;
		this.idUser = idUser;
	}

	public QuestionAnswer(int idCourse, String courseName, String imageCourse) {
		super();
		this.idCourse = idCourse;
		this.courseName = courseName;
		this.imageCourse = imageCourse;
	}

	public QuestionAnswer(String courseName, String imageCourse) {
		super();
		this.courseName = courseName;
		this.imageCourse = imageCourse;
	}

	public int getIdQuestion() {
		return idQuestion;
	}

	public void setIdQuestion(int idQuestion) {
		this.idQuestion = idQuestion;
	}

	public String getQuestionDetail() {
		return questionDetail;
	}

	public void setQuestionDetail(String questionDetail) {
		this.questionDetail = questionDetail;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public List<String> getAnswers() {
		return answers;
	}

	public void setAnswers(List<String> answers) {
		this.answers = answers;
	}

	public int getIdCourse() {
		return idCourse;
	}

	public void setIdCourse(int idCourse) {
		this.idCourse = idCourse;
	}

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getImageCourse() {
		return imageCourse;
	}

	public void setImageCourse(String imageCourse) {
		this.imageCourse = imageCourse;
	}
	
}
