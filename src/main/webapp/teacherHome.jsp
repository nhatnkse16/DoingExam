<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head lang="en">
<title>CodeHS</title>

<!-- CodeHS Icons -->
<link rel="icon" type="image/png"
	href=https://static2.codehs.com/img/logo.png>
<link href='//fonts.googleapis.com/css?family=Roboto:400,700'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" type="text/css"
	href="https://static.codehs.com/gulp/91c1ceffbe7a779c5ba950b8bc4102f8cb2a099e/compressed.css">


<link rel="stylesheet" type="text/css"
	href="https://static.codehs.com/lib/jquery-ui/jquery-ui-1.8.18.custom.css">
<link rel="stylesheet" type="text/css"
	href="https://static.codehs.com/lib/video-js/video-js.min.css">

<!-- Less Files For All -->
<link rel="stylesheet" type="text/css"
	href="https://static.codehs.com/gulp/91c1ceffbe7a779c5ba950b8bc4102f8cb2a099e/imports.css">

</head>

<body class="bg-sky-blue">

	<div id="user-page">

		<div id="wrapper">




			<div id="userpage-content" class="clearfix">


				<div class="clear"></div>


				<div id="resume-div">
					<hr>
					<a href="createExam.jsp"> <img
						src="https://static.codehs.com/img/icons/greyplay.png" /> Create
						Exam
					</a> <span class="lesson-key right" rel="tooltip"
						title="Lesson not started"></span> <span class="lesson-key right"
						rel="tooltip" title="Lesson started"></span> <span
						class="lesson-key right" rel="tooltip" title="Lesson completed"></span>
					<hr>
				</div>

				<div
					style="color: #555555; font-weight: 200; margin-top: 50px; margin-bottom: 25px; margin-left: 45px; font-size: 18px; line-height: 18px;">
					Search: <input style="display: inline-block; width: 600px;"
						type="text" id="filter-items"
						placeholder="Search for an Activity or Lesson">
				</div>

				<div id="course-sec">
					<!-- import modules html -->




					<div class="module-sec clearfix">
						<div class="wrap col-xs-12">
							<a href="#" class="module-toggler curr-module">
								<div class="module-icon">
									<img
										src="https://s3-us-west-2.amazonaws.com/codehsuploads/1d243b05c4876401b479a35c1075c99d" />
								</div>
								<div class="module-info">
									<div class="module-info-row">
										<div class="module-title">Programming With Karel</div>
										<div class="right lesson-count">
											<img src="https://static.codehs.com/img/icons/four_dot.png">15
											Lessons
										</div>
									</div>
									<div>
										<div class="progressbar">
											<div class="bg-red" style="width: 100%"></div>
										</div>
										<div class="right module-toggle minimized module-closed">
											<img src="https://static.codehs.com/img/blank.png" /> <span>View
												Lessons</span>
										</div>
									</div>
								</div>
							</a>
							<div class="lessons-sec module-expand">

								<div class="lesson-sec">
									<div class="lesson-header ">
										<div class="lesson-header-text">
											<a class="lesson-link" href="/editor/19289/385656/1/1"><span
												class="lesson-status passed">1</span></a> <span
												class="lesson-title">Introduction to Programming With
												Karel</span>
										</div>
										<div class="right lesson-toggle minimized">
											<img src="https://static.codehs.com/img/blank.png" />
										</div>
										<div id="lesson-items" class="right">

											<a href="/editor/1/385656/1/1" rel="tooltip"
												title=" Introduction to Programming With Karel "
												class="video module-item passed not-reviewed"> <span
												class="icon icon-facetime-video"></span>
											</a> <a href="/editor/346/385656/1/1" rel="tooltip"
												title=" Quiz: Karel Commands "
												class="quiz module-item passed not-reviewed"> <span
												class="icon icon-check"></span>
											</a> <a href="/editor/2/385656/1/1" rel="tooltip"
												title=" Our First Karel Program "
												class="example module-item passed not-reviewed"> <span
												class="icon icon-file-alt"></span>
											</a> <a href="/editor/3/385656/1/1" rel="tooltip"
												title=" Your First Karel Program "
												class="exercise module-item passed not-reviewed"> <span
												class="icon icon-pencil"></span>
											</a> <a href="/editor/4/385656/1/1" rel="tooltip"
												title=" Short Stack "
												class="exercise module-item passed not-reviewed"> <span
												class="icon icon-pencil"></span>
											</a>

										</div>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/1/385656/1/1"
											class="lesson-item video passed"> <span
											class="icon icon-facetime-video"></span> <span
											class="item-type">Video</span> <span class="item-title">1.1.1
												Introduction to Programming With Karel</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/346/385656/1/1"
											class="lesson-item quiz passed"> <span
											class="icon icon-check"></span> <span class="item-type">Quiz</span>
											<span class="item-title">1.1.2 Quiz: Karel Commands</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/2/385656/1/1"
											class="lesson-item example passed"> <span
											class="icon icon-file-alt"></span> <span class="item-type">Example</span>
											<span class="item-title">1.1.3 Our First Karel Program</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/3/385656/1/1"
											class="lesson-item exercise passed"> <span
											class="icon icon-pencil"></span> <span class="item-type">Exercise</span>
											<span class="item-title">1.1.4 Your First Karel
												Program</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/4/385656/1/1"
											class="lesson-item exercise passed"> <span
											class="icon icon-pencil"></span> <span class="item-type">Exercise</span>
											<span class="item-title">1.1.5 Short Stack</span>
										</a>
									</div>

								</div>

								<div class="lesson-sec">
									<div class="lesson-header curr-lesson">
										<div class="lesson-header-text">
											<a class="lesson-link" href="/editor/19291/385656/1/1"><span
												class="lesson-status not-started">2</span></a> <span
												class="lesson-title">Karel Can&#39;t Turn Right</span>
										</div>
										<div class="right lesson-toggle minimized">
											<img src="https://static.codehs.com/img/blank.png" />
										</div>
										<div id="lesson-items" class="right">

											<a href="/editor/9/385656/1/1" rel="tooltip"
												title=" Karel Can&#39;t Turn Right "
												class="video module-item not-started not-reviewed"> <span
												class="icon icon-facetime-video"></span>
											</a> <a href="/editor/85220/385656/1/1" rel="tooltip"
												title=" Karel Can&#39;t Turn Right Quiz "
												class="quiz module-item not-started not-reviewed"> <span
												class="icon icon-check"></span>
											</a> <a href="/editor/10/385656/1/1" rel="tooltip"
												title=" Tower and Turn Right "
												class="example module-item not-started not-reviewed"> <span
												class="icon icon-file-alt"></span>
											</a> <a href="/editor/11/385656/1/1" rel="tooltip"
												title=" Slide Karel "
												class="exercise module-item not-started not-reviewed"> <span
												class="icon icon-pencil"></span>
											</a> <a href="/editor/12/385656/1/1" rel="tooltip"
												title=" Fireman Karel "
												class="exercise module-item not-started not-reviewed"> <span
												class="icon icon-pencil"></span>
											</a>

										</div>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/9/385656/1/1"
											class="lesson-item video not-started"> <span
											class="icon icon-facetime-video"></span> <span
											class="item-type">Video</span> <span class="item-title">1.3.1
												Karel Can&#39;t Turn Right</span>
										</a>
									</div>

								</div>
							</div>
						</div>
						<div class="module-info-right">
							<div class="percent-box center bg-red">
								14%<br> <span>Completed</span><span>Completed</span>
							</div>
							<a href="createNewExam.html" class="btn btn-main-silver">Resume</a>
						</div>
					</div>

					<div class="module-sec clearfix">
						<div class="wrap col-xs-12">
							<a href="#" class="module-toggler ">
								<div class="module-icon">
									<img
										src="https://s3-us-west-2.amazonaws.com/codehsuploads/d083942cc806e8f8395fbfdc44be3cd9" />
								</div>
								<div class="module-info">
									<div class="module-info-row">
										<div class="module-title">JavaScript Control Structures</div>
										<div class="right lesson-count">
											<img src="https://static.codehs.com/img/icons/four_dot.png">10
											Lessons
										</div>
									</div>
									<div>
										<div class="progressbar">
											<div class="bg-indigo" style="width: 100%"></div>
										</div>
										<div class="right module-toggle minimized module-closed">
											<img src="https://static.codehs.com/img/blank.png" /> <span>View
												Lessons</span>
										</div>
									</div>
								</div>
							</a>
							<div class="lessons-sec module-expand">

								<div class="lesson-sec">
									<div class="lesson-header ">
										<div class="lesson-header-text">
											<a class="lesson-link" href="/editor/19332/385656/1410/1"><span
												class="lesson-status started">1</span></a> <span
												class="lesson-title">Comparison Operators</span>
										</div>
										<div class="right lesson-toggle minimized">
											<img src="https://static.codehs.com/img/blank.png" />
										</div>
										<div id="lesson-items" class="right">

											<a href="/editor/97/385656/1410/1" rel="tooltip"
												title=" Comparison Operators "
												class="video module-item passed not-reviewed"> <span
												class="icon icon-facetime-video"></span>
											</a> <a href="/editor/85716/385656/1410/1" rel="tooltip"
												title=" Comparison Operators Quiz "
												class="quiz module-item passed not-reviewed"> <span
												class="icon icon-check"></span>
											</a> <a href="/editor/112246/385656/1410/1" rel="tooltip"
												title=" Voting Age "
												class="example module-item passed not-reviewed"> <span
												class="icon icon-file-alt"></span>
											</a> <a href="/editor/99/385656/1410/1" rel="tooltip"
												title=" Grade Range "
												class="example module-item passed not-reviewed"> <span
												class="icon icon-file-alt"></span>
											</a> <a href="/editor/100/385656/1410/1" rel="tooltip"
												title=" Rolling Dice "
												class="exercise module-item not-started not-reviewed"> <span
												class="icon icon-pencil"></span>
											</a> <a href="/editor/101/385656/1410/1" rel="tooltip"
												title=" All Star "
												class="exercise module-item not-started not-reviewed"> <span
												class="icon icon-pencil"></span>
											</a>

										</div>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/97/385656/1410/1"
											class="lesson-item video passed"> <span
											class="icon icon-facetime-video"></span> <span
											class="item-type">Video</span> <span class="item-title">4.3.1
												Comparison Operators</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/85716/385656/1410/1"
											class="lesson-item quiz passed"> <span
											class="icon icon-check"></span> <span class="item-type">Quiz</span>
											<span class="item-title">4.3.2 Comparison Operators
												Quiz</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/112246/385656/1410/1"
											class="lesson-item example passed"> <span
											class="icon icon-file-alt"></span> <span class="item-type">Example</span>
											<span class="item-title">4.3.3 Voting Age</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/99/385656/1410/1"
											class="lesson-item example passed"> <span
											class="icon icon-file-alt"></span> <span class="item-type">Example</span>
											<span class="item-title">4.3.4 Grade Range</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/100/385656/1410/1"
											class="lesson-item exercise not-started"> <span
											class="icon icon-pencil"></span> <span class="item-type">Exercise</span>
											<span class="item-title">4.3.5 Rolling Dice</span>
										</a>
									</div>

									<div class="lesson-item-wrapper">
										<a href="/editor/101/385656/1410/1"
											class="lesson-item exercise not-started"> <span
											class="icon icon-pencil"></span> <span class="item-type">Exercise</span>
											<span class="item-title">4.3.6 All Star</span>
										</a>
									</div>

								</div>

							</div>
						</div>
						<div class="module-info-right">
							<div class="percent-box center percent-25 bg-indigo">
								100%<br> <span>Completed</span><span>Completed</span>
							</div>
							<a href="createNewExam.html" class="btn btn-main-silver">Resume</a>
						</div>
					</div>
					<hr>


					<!-- Only show up when looking at PD courses -->

					<div class="clear"></div>

				</div>
			</div>
		</div>


		<script type="text/javascript">
			window.pageSpecific = {
				"isOwnPage" : true,
				"pageUser" : 385656,
				"mainCourse" : {
					"id" : 1,
					"title" : "Introduction to Computer Science (Golden)"
				},
				"isWrongCourse" : false,
				"currentCourse" : {
					"id" : 1,
					"title" : "Introduction to Computer Science (Golden)"
				}
			} || {};
			window.pageTriggers = [ "userpage:setup", "SiteActivity:setup" ]
					|| {};
		</script>

		<script type="text/javascript"
			src="https://static.codehs.com/gulp/91c1ceffbe7a779c5ba950b8bc4102f8cb2a099e/core.js"></script>


		<script type="text/javascript"
			src="https://static.codehs.com/gulp/91c1ceffbe7a779c5ba950b8bc4102f8cb2a099e/user.js"></script>
</body>

</html>