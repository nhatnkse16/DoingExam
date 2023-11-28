<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Question and Answers</title>
</head>
<body>
    <form action="ListQuestionByIdCourse" method="post">
        <h2>Questions and Answers</h2>

        <c:forEach var="qa" items="${questionAnswers}">
            <div>
                <p>
                    <label>
                        <input type="checkbox" name="selectedQuestions" value="${qa.idQuestion}">
                        Question ID: ${qa.idQuestion}
                    </label>
                </p>
                <p>Question Detail: ${qa.questionDetail}</p>
                <p>Image: ${qa.image}</p>

                <p>Answers:</p>
                <ul>
                    <c:forEach var="answer" items="${qa.answers}">
                        <li>${answer}</li>
                    </c:forEach>
                </ul>

                <hr/>
            </div>
        </c:forEach>

        <input type="submit" value="Submit">
    </form>
</body>
</html>
