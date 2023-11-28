package com.model;

public class Answer {
	private int idAnswer;
	private String answerDetail;
	private int idQuestion;
	private boolean isCorrect;

	// Constructors, getters, and setters

	// Example constructor
	public Answer(String answerDetail, int idQuestion, boolean isCorrect) {
		this.answerDetail = answerDetail;
		this.idQuestion = idQuestion;
		this.isCorrect = isCorrect;
	}

	public int getIdAnswer() {
		return idAnswer;
	}

	public void setIdAnswer(int idAnswer) {
		this.idAnswer = idAnswer;
	}

	public String getAnswerDetail() {
		return answerDetail;
	}

	public void setAnswerDetail(String answerDetail) {
		this.answerDetail = answerDetail;
	}

	public int getIdQuestion() {
		return idQuestion;
	}

	public void setIdQuestion(int idQuestion) {
		this.idQuestion = idQuestion;
	}

	public boolean isCorrect() {
		return isCorrect;
	}

	public void setCorrect(boolean isCorrect) {
		this.isCorrect = isCorrect;
	}

}
