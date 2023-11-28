<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="./css/doingExam.css">
<style type="text/css">
.numqbutton {
	max-width: 100%;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
	text-align: center;
	margin-top: 10px;
}

.box1 {
	padding: 15px;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top"
		style="-webkit-box-shadow: -2px 18px 24px -28px rgba(0, 0, 0, 0.75); -moz-box-shadow: -2px 18px 24px -28px rgba(0, 0, 0, 0.75); box-shadow: -2px 18px 24px -28px rgba(0, 0, 0, 0.75); background: rgba(255, 255, 255, 0.9);">
		<div style="float: left; margin-left: 20px;">
			<img
				src="http://res.cloudinary.com/ajaybali9/image/upload/v1498201450/Alogo_xem5p9.png"
				width="60" height="60" alt="Main logo">
		</div>
		<div class="container-fluid">
			<header role="banner">
				<div class="logo-main">
					<ul class="nav navbar-nav navbar-right"
						style="margin-top: 10px; margin-right: 20px;">
						<li><button class="btn btn-default" disabled=""
								style="float: right; border: none;">Student Name</button></li>
						<li><button class="btn btn-default" id="timer" disabled=""
								style="float: right;">Timer(00:00:00)</button></li>
					</ul>
				</div>
			</header>
		</div>
	</nav>

	<div class="container-fluid tab-container"
		style="margin-top: 120px; margin-bottom: 100px;">
		<div class="row">
			<div class="col-md-9 tab-content" style="" data-tab="1">
				<div class="box1">
					<div class="box2">
						<div>
							<button class="btn btn-default">Q</button>
						</div>
						<div class="container-fluid">
							<p class="background">Loading.....</p>
						</div>
						<div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o1">Option 1</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o2">Option 2</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o3">Option 3</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o4">Option 4</label></label>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-9 tab-content" style="display: none;" data-tab="2">
				<div class="box1">
					<div class="box2">
						<div>
							<button class="btn btn-default">Q</button>
						</div>
						<div class="container-fluid">
							<p class="background">Question 2</p>
						</div>
						<div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o1">Option 1</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o2">Option 2</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o3">Option 3</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o4">Option 4</label></label>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-9 tab-content" style="display: none;" data-tab="3">
				<div class="box1">
					<div class="box2">
						<div>
							<button class="btn btn-default">Q</button>
						</div>
						<div class="container-fluid">
							<p class="background">Loading..... Question 3</p>
						</div>
						<div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o1">Option 1</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o2">Option 2</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o3">Option 3</label></label>
							</div>
							<div class="radio">
								<label> </label> <label><input type="radio"
									name="optradio"><label id="o4">Option 4</label></label>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="box1">
					<div class="box2">
						<div class="row">
							<div class="col-md-4">
								<div>
									<button class="btn btn-default tab-button numqbutton"
										data-tab="1">01</button>
								</div>
							</div>
							<div class="col-md-4">
								<div>
									<button class="btn btn-default tab-button numqbutton"
										data-tab="2">02</button>
								</div>
							</div>
							<div class="col-md-4">
								<div>
									<button class="btn btn-default tab-button numqbutton"
										data-tab="3">03</button>
								</div>
							</div>
							<div class="col-md-4">
								<div>
									<button class="btn btn-default tab-button numqbutton"
										data-tab="4">04</button>
								</div>
							</div>
							<!-- Add more buttons as needed -->
						</div>

						<div class="row" style="margin-top: 20%;">
							<div class="text-center">
								<button class="btn btn-primary" id="prevBtn"
									data-toggle="tooltip" title="Previous"><</button>
								<button class="btn btn-default" id="currentPageBtn"
									data-toggle="tooltip" title="1" disabled
									style="cursor: default;">1</button>
								<button class="btn btn-primary" id="nextBtn"
									data-toggle="tooltip" title="Next">></button>
							</div>
						</div>
					</div>
					<div class="row" style="margin-top: 15%;">
						<div class="text-center">
							<button class="btn btn-primary">Uncheck</button>
							<button class="btn btn-primary">Bookmark</button>
							<button class="btn btn-danger" data-toggle="modal"
								data-target="#teamviewmodal">Submit</button>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>

	<!--modal-->
	<div class="modal fade" id="teamviewmodal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title textfont" style="text-align: center;">
						<strong style="font-size: 25px">Warning</strong>
					</h4>
				</div>
				<div class="modal-body" style="text-align: center;">
					<h5>Do You Really Want to Submit Test?</h5>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Yes</button>
					<button type="button" class="btn btn-primary" data-dismiss="modal">No</button>
				</div>
			</div>

		</div>
	</div>
</body>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$(".tab-button").click(function() {
			var tabNumber = $(this).data("tab");

			// Ẩn tất cả các nội dung tab
			$(".tab-content").hide();

			// Hiển thị nội dung của tab được chọn
			$(".tab-content[data-tab='" + tabNumber + "']").show();
		});
	});
</script>
<script>
	$(document).ready(function() {
		var currentPage = 1;
		var maxPages = 10;

		// Xử lý sự kiện nút Previous
		$("#prevBtn").click(function() {
			if (currentPage > 1) {
				currentPage--;
				updatePage();
			}
		});

		// Xử lý sự kiện nút Next
		$("#nextBtn").click(function() {
			if (currentPage < maxPages) {
				currentPage++;
				updatePage();
			}
		});

		// Xử lý sự kiện khi nhấp vào nút của tab
		$(".tab-button").click(function() {
			var tabNumber = $(this).data("tab");
			currentPage = tabNumber;
			updatePage();
		});

		function updatePage() {
			// Ẩn tất cả các tab content
			$(".tab-content").hide();

			// Hiển thị tab content của trang hiện tại
			$(".tab-content[data-tab='" + currentPage + "']").show();

			// Cập nhật nút trang
			$("#currentPageBtn").text(currentPage);
		}
	});
</script>


</html>