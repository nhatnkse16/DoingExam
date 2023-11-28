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
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Bootstrap JS and jQuery -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
				<div style="font-weight: 500;" class="fs-3">Dashboard</div>
			</div>
			<nav class="mt-2 mb-4" style="--bs-breadcrumb-divider: '>';"
				aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
				</ol>
			</nav>

			<div class="dashboard">
				<div class="row">
					<div class="col-md-4">
						<div class="card px-4 border-0 shadow-sm">
							<div class="card-body">
								<div class="fs-5 text-end">Total Students</div>
								<div style="margin-top: -10px;"
									class="fs-3 text-start text-info">
									<i class="bi bi-people-fill"></i>
								</div>
								<div style="margin-top: -40px;" class="fs-5 pt-4 text-end">
									100</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card px-4 border-0 shadow-sm">
							<div class="card-body">
								<div class="fs-5 text-end">New Account Today</div>
								<div style="margin-top: -10px;"
									class="fs-3 text-start text-warning">
									<i class="bi bi-person-plus-fill"></i>
								</div>
								<div style="margin-top: -40px;" class="fs-5 pt-4 text-end">
									10 <i class="bi bi-arrow-up-right" style="display: none;"></i>
									<i class="bi bi-arrow-down-right" style="color: #ff1100;"></i>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="card px-4 border-0 shadow-sm">
							<div class="card-body">
								<div class="fs-5 text-end">Online</div>
								<div style="margin-top: -10px;"
									class="fs-3 text-start text-danger">
									<i class="bi bi-circle-fill" style="color: #5ae92f;"></i>
								</div>
								<div style="margin-top: -40px;" class="fs-5 pt-4 text-end">
									12</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="all-student mt-5">
				<div class="card border-0 shadow-sm">
					<div class="card-body">
						<div class="page-title fs-5 fw-bold mb-4">All Students</div>
						<div class="table-responsive">
							<table class="table table-striped table-bordered"
								style="width: 100%">
								<thead>
									<tr>
										<th>ID</th>
										<th>Image</th>
										<th>Username</th>
										<th>Email</th>
										<th>Gender</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>201901002</td>
										<td><img
											src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"
											alt="" style="width: 50px; height: 50px;"></td>
										<td>Ngkn</td>
										<td>ngkn01@gmail.com</td>
										<td>Male</td>
										<td><span class="status process">Process</span></td>
										<td><a href="#" class="btn btn-sm btn-info"
											data-toggle="modal" data-target="#viewModal"> <i
												class="bi bi-eye"></i>
										</a> <a href="#" class="btn btn-sm btn-warning"
											data-toggle="modal" data-target="#editModal"> <i
												class="bi bi-person-up"></i>
										</a> <a href="#" class="btn btn-sm btn-danger" data-toggle="modal"
											data-target="#deleteModal"> <i class="bi bi-lock-fill"></i>
										</a> <a href="#" class="btn btn-sm btn-danger" data-toggle="modal"
											data-target="#deleteModal" style="display: none;"> <i
												class="bi bi-unlock-fill"></i>
										</a></td>
									</tr>
									<tr>
										<td>201901002</td>
										<td><img
											src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"
											alt="" style="width: 50px; height: 50px;"></td>
										<td>Ngkn</td>
										<td>ngkn01@gmail.com</td>
										<td>Male</td>
										<td><span class="status process">Process</span></td>
										<td><a href="#" class="btn btn-sm btn-info"
											data-toggle="modal" data-target="#viewModal"> <i
												class="bi bi-eye"></i>
										</a> <a href="#" class="btn btn-sm btn-warning"
											data-toggle="modal" data-target="#editModal"> <i
												class="bi bi-person-up"></i>
										</a> <a href="#" class="btn btn-sm btn-danger" data-toggle="modal"
											data-target="#deleteModal"> <i class="bi bi-lock-fill"></i>
										</a> <a href="#" class="btn btn-sm btn-danger" data-toggle="modal"
											data-target="#deleteModal" style="display: none;"> <i
												class="bi bi-unlock-fill"></i>
										</a></td>
									</tr>
									<tr>
										<td>201901002</td>
										<td><img
											src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"
											alt="" style="width: 50px; height: 50px;"></td>
										<td>Ngkn</td>
										<td>ngkn01@gmail.com</td>
										<td>Male</td>
										<td><span class="status process">Process</span></td>
										<td><a href="#" class="btn btn-sm btn-info"
											data-toggle="modal" data-target="#viewModal"> <i
												class="bi bi-eye"></i>
										</a> <a href="#" class="btn btn-sm btn-warning"
											data-toggle="modal" data-target="#editModal"> <i
												class="bi bi-person-up"></i>
										</a> <a href="#" class="btn btn-sm btn-danger" data-toggle="modal"
											data-target="#deleteModal"> <i class="bi bi-lock-fill"></i>
										</a> <a href="#" class="btn btn-sm btn-danger" data-toggle="modal"
											data-target="#deleteModal" style="display: none;"> <i
												class="bi bi-unlock-fill"></i>
										</a></td>
									</tr>
									<tr>
										<td>201901002</td>
										<td><img
											src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"
											alt="" style="width: 50px; height: 50px;"></td>
										<td>Ngkn</td>
										<td>ngkn01@gmail.com</td>
										<td>Male</td>
										<td><span class="status process">Process</span></td>
										<td><a href="#" class="btn btn-sm btn-info"
											data-toggle="modal" data-target="#viewModal"> <i
												class="bi bi-eye"></i>
										</a> <a href="#" class="btn btn-sm btn-warning"
											data-toggle="modal" data-target="#editModal"> <i
												class="bi bi-person-up"></i>
										</a> <a href="#" class="btn btn-sm btn-danger" data-toggle="modal"
											data-target="#deleteModal"> <i class="bi bi-lock-fill"></i>
										</a> <a href="#" class="btn btn-sm btn-danger" data-toggle="modal"
											data-target="#deleteModal" style="display: none;"> <i
												class="bi bi-unlock-fill"></i>
										</a></td>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- Popup Model -->
						<div class="modal fade" id="viewModal">
							<div class="modal-dialog">
								<div class="modal-content">
									<!-- Modal content goes here -->
									<div class="student-information mb-5 mt-5">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
										</div>
										<div class="card-body">
											<!-- <div class="page-title text-center fs-5 fw-bold mb-4">
                                            </div> -->
											<div class="row">
												<div class="col-12">
													<img class="d-block m-auto"
														style="width: 200px; height: 200px; border-radius: 50%;"
														src="https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"
														alt="">
													<h5 class="text-center mt-3">Arafat Hossain</h5>
													<h6 class="text-center text-muted">BSc In CSE</h6>
													<h6 class="text-center">017xxxxxxxx</h6>
													<h6 class="text-center">arafat@gmail.com</h6>
													<!-- <div class="text-center mt-3">
                                                        <a href="#" class="btn btn-warning">Edit</a>
                                                        <a href="#" class="btn btn-danger">Delete</a>
                                                    </div> -->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Edit Modal -->
						<div class="modal fade" id="editModal">
							<div class="modal-dialog">
								<div class="modal-content">
									<!-- Modal content goes here -->
									<div class="modal-header">
										<h4 class="modal-title">UpGrade User</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
									<div class="modal-body">
										<!-- Add content for viewing here -->
										<p>Are you sure you want to Upgrade this User to Teacher?</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">No</button>
										<button type="button" class="btn btn-success">Yes</button>

									</div>
								</div>
							</div>
						</div>

						<!-- Delete Modal -->
						<div class="modal fade" id="deleteModal">
							<div class="modal-dialog">
								<div class="modal-content">
									<!-- Modal content goes here -->
									<div class="modal-header">
										<h4 class="modal-title">Block User</h4>
										<button type="button" class="close" data-dismiss="modal">&times;</button>
									</div>
									<div class="modal-body">
										<!-- Add content for viewing here -->
										<p>Are you sure you want to BLOCK this User?</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-danger"
											data-dismiss="modal">No</button>
										<button type="button" class="btn btn-success">Yes</button>

									</div>
								</div>
							</div>
						</div>
						<!-- Popup Model End -->
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

	<script>
		$(document).ready(function() {
			$('#datatable').DataTable();
		});
	</script>
</body>

</html>