package com.model;

import java.sql.Date;
import java.sql.Timestamp;

public class Exam {
	private int idExam;
	private String examName;
	private String passWord;
	private String createDate;
	private int numberQuestion;
	private int limitTime;
	private int idUser;
	private int vote;
	private String startTime;
	private String endTime;
	private int idQuestion;

	public Exam() {
		// TODO Auto-generated constructor stub
	}

	public Exam(String examName, String passWord, String createDate, int numberQuestion, 
			 int limitTime, int idUser) {
		this.examName = examName;
		this.passWord = passWord;
		this.createDate = createDate;
		this.numberQuestion = numberQuestion;
		this.limitTime = limitTime;
		this.idUser = idUser;
	}

	public Exam(int idExam, int idQuestion) {
		this.idExam = idExam;
		this.idQuestion = idQuestion;
	}

	public int getIdExam() {
		return idExam;
	}

	public void setIdExam(int idExam) {
		this.idExam = idExam;
	}

	public String getExamName() {
		return examName;
	}

	public void setExamName(String examName) {
		this.examName = examName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public int getNumberQuestion() {
		return numberQuestion;
	}

	public void setNumberQuestion(int numberQuestion) {
		this.numberQuestion = numberQuestion;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public int getLimitTime() {
		return limitTime;
	}

	public void setLimitTime(int limitTime) {
		this.limitTime = limitTime;
	}

	public int getVote() {
		return vote;
	}

	public void setVote(int vote) {
		this.vote = vote;
	}

	@Override
	public String toString() {
		return "Exam [idExam=" + idExam + ", examName=" + examName + ", passWord=" + passWord + ", createDate="
				+ createDate + ", numberQuestion=" + numberQuestion + ", startTime=" + startTime + ", endTime="
				+ endTime + ", limitTime=" + limitTime + ", vote=" + vote + "]";
	}

}
