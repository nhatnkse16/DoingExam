<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Simple Admin Dashbaord</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/dataTables.bootstrap5.min.css">
</head>

<body>
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbar-light shadow-sm bg-light">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample"
				aria-controls="offcanvasExample">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a class="navbar-brand fw-bold" href="index.html">E-Student</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto me-md-4 mb-2 mb-lg-0">
					<li class="nav-item dropdown d-flex text-light"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> <i
							class="fa-regular fa-user"></i> Admin
					</a>
						<ul class="dropdown-menu border-0 bg-light ms-auto">
							<li><a class="dropdown-item" href="#">Edit Profile</a></li>
							<li><a class="dropdown-item" href="#">Logout</a></li>
						</ul>
				</ul>
				</li>
			</div>
		</div>
	</nav>
	<!-- navbar end -->

	<!-- sidebar -->
	<%@ include file="adminSidebarIncludes.jsp"%>
	<!-- sidebar end -->

	<!-- main content -->
	<main class="mt-3 p-2">
		<div class="container">
			<div class="page-title">
				<div style="font-weight: 500;" class="fs-3">Profile</div>
			</div>
			<nav class="mt-2 mb-4" style="--bs-breadcrumb-divider: '>';"
				aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Profile</li>
				</ol>
			</nav>

			<div class="profile">
				<div class="card border-0 shadow-sm">
					<div class="card-body">
						<div class="page-title fs-5 fw-bold mb-4">Admin Profile</div>
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item" role="presentation">
								<button class="nav-link active" id="profile-tab"
									data-bs-toggle="tab" data-bs-target="#profile-tab-pane"
									type="button" role="tab" aria-controls="profile-tab-pane"
									aria-selected="false">Profile</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="editpro-tab" data-bs-toggle="tab"
									data-bs-target="#editpro-tab-pane" type="button" role="tab"
									aria-controls="editpro-tab-pane" aria-selected="false">Edit
									Profile</button>
							</li>
							<li class="nav-item" role="presentation">
								<button class="nav-link" id="changepsw-tab" data-bs-toggle="tab"
									data-bs-target="#changepsw-tab-pane" type="button" role="tab"
									aria-controls="changepsw-tab-pane" aria-selected="false">Change
									Password</button>
							</li>
						</ul>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="profile-tab-pane"
								role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
								<div class="mt-4 px-4">
									<div class="row text-start">
										<div class="col-md-4">
											<img class="d-block m-auto"
												style="width: 150px; height: 150px; border-radius: 50%;"
												src="https://www.pngarts.com/files/6/User-Avatar-in-Suit-PNG.png"
												alt="">
											<h4 class="text-center mt-4">Arafat Hossain</h4>
											<h6 class="text-center">Admin</h6>
										</div>
										<div class="col-md-8">
											<ul class="profile-details">
												<li class="text-muted">Name :</li>
												<li class="ms-3 fix-w">Arafat Hossain</li>
											</ul>
											<ul class="profile-details">
												<li class="text-muted">Phone :</li>
												<li class="ms-3 fix-w">017xxxxxxxx</li>
											</ul>
											<ul class="profile-details">
												<li class="text-muted">Email :</li>
												<li class="ms-3 fix-w">arafat@gmail.com</li>
											</ul>
											<ul class="profile-details">
												<li class="text-muted">Role :</li>
												<li class="ms-3 fix-w">Admin</li>
											</ul>
											<ul class="profile-details">
												<li class="text-muted">Registered :</li>
												<li class="ms-3 fix-w">12-12-12</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="editpro-tab-pane" role="tabpanel"
								aria-labelledby="editpro-tab" tabindex="0">
								<div class="mt-4 px-4">
									<div class="row">
										<div class="col-12 col-md-8 m-auto">
											<form action="">
												<div class="mb-3 row">
													<label for="user_name" class="col-sm-2 col-form-label">Name</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															value="Arafat Hossain" name="user_name" id="user_name">
													</div>
												</div>
												<div class="mb-3 row">
													<label for="user_phone" class="col-sm-2 col-form-label">Phone</label>
													<div class="col-sm-10">
														<input type="tel" class="form-control" value="017xxxxxxxx"
															name="user_phone" id="user_phone">
													</div>
												</div>
												<div class="mb-3 row">
													<label for="user_email" class="col-sm-2 col-form-label">Email</label>
													<div class="col-sm-10">
														<input type="text" class="form-control"
															value="arafat@gmail.com" name="user_email"
															id="user_email">
													</div>
												</div>
												<div class="row">
													<div class="col-12 text-center">
														<div class="mb-3">
															<button type="submit" class="btn btn-primary">Update
																Profile</button>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="changepsw-tab-pane"
								role="tabpanel" aria-labelledby="changepsw-tab" tabindex="0">
								<div class="mt-4 px-4">
									<div class="row">
										<div class="col-12 col-md-8 m-auto">
											<form action="">
												<div class="mb-3 row">
													<label for="o_psw" class="col-sm-4 col-form-label">Old
														Password</label>
													<div class="col-sm-8">
														<input type="password" class="form-control" name="o_psw"
															id="o_psw">
													</div>
												</div>
												<div class="mb-3 row">
													<label for="n_psw" class="col-sm-4 col-form-label">New
														Password</label>
													<div class="col-sm-8">
														<input type="password" class="form-control" name="n_psw"
															id="n_psw">
													</div>
												</div>
												<div class="mb-3 row">
													<label for="r_psw" class="col-sm-4 col-form-label">Repeat
														Password</label>
													<div class="col-sm-8">
														<input type="password" class="form-control" name="r_psw"
															id="r_psw">
													</div>
												</div>
												<div class="row">
													<div class="col-12 text-center">
														<div class="mb-3">
															<button type="submit" class="btn btn-primary">Change
																Password</button>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- main content end-->

	<script src="js/jquery-3.5.1.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap5.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>

</body>

</html>