<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Insert Data</title>
<script>
	function addAnswerField() {
		var container = document.getElementById("answerContainer");
		var input = document.createElement("input");
		input.type = "text";
		input.name = "answers";
		input.required = true;
		container.appendChild(input);
		container.appendChild(document.createElement("br"));
	}
</script>
</head>
<body>
	<form action="InsertQuestionController" method="post">
		<label>Question Detail:</label> <input type="text"
			name="questionDetail" required><br>

		<!-- Container to hold answer input fields -->
		<div id="answerContainer">
		 <input type="text" name="answers" required><br>

		 <input type="text" name="answers" required><br>

			<!-- Add more input fields for additional answers -->
		</div>

		<!-- Add button to dynamically add answer fields -->
		<input type="button" value="Add" onclick="addAnswerField()"> <input
			type="submit" value="Submit">
	</form>
</body>
</html>
