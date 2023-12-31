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
				<div style="font-weight: 500;" class="fs-3">Programs</div>
			</div>
			<nav class="mt-2 mb-4" style="--bs-breadcrumb-divider: '>';"
				aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page"><a
						href="viewExamScore.jsp">View Score</a></li>
				</ol>
			</nav>
			<div class="row">
				<div class="col-md-5">
					<div class="add-dept mt-5">
						<div class="card border-0 shadow-sm">
							<div class="card-body">
								<div class="page-title fs-5 fw-bold mb-4">Add Programs</div>
								<form action="" method="post">
									<div class="row">
										<div class="col-md-12">
											<div class="mb-3 px-2">
												<label for="pg_name" class="form-label">Name</label> <input
													class="form-control" placeholder="BSc" type="text"
													id="pg_name" name="pg_name">
											</div>
											<div class="mb-3 px-2">
												<label for="pg_code" class="form-label">Code</label> <input
													class="form-control" placeholder="B-123" type="text"
													id="pg_code" name="pg_code">
											</div>
											<div class="mb-3 px-2">
												<label for="pg_image" class="form-label">Image</label> <input
													class="form-control" type="file" id="pg_image"
													name="pg_image">
											</div>

											<div class="col-12 mt-md-4">
												<div class="mb-3 px-2">
													<button type="submit" class="btn btn-success">
														Submit</button>
													<button type="reset" class="btn btn-warning">
														Reset</button>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-7">
					<div class="all-student mt-5">
						<div class="card border-0 shadow-sm">
							<div class="card-body">
								<div class="page-title fs-5 fw-bold mb-4">All Programs</div>
								<table id="datatable" class="table table-striped table-bordered"
									style="width: 100%">
									<thead>
										<tr>
											<th>SL</th>
											<th>Name</th>
											<th>Code</th>
											<th>Image</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>BSc</td>
											<td>1220</td>
											<td>Image</td>
											<td><a href="#" class="btn btn-sm btn-warning"> <i
													class="bi bi-pencil-square"></i>
											</a> <a href="#" class="btn btn-sm btn-danger"> <i
													class="bi bi-trash-fill"></i>
											</a></td>
										</tr>
										<tr>
											<td>2</td>
											<td>BSc</td>
											<td>1220</td>
											<td>Image</td>
											<td><a href="#" class="btn btn-sm btn-warning"> <i
													class="bi bi-pencil-square"></i>
											</a> <a href="#" class="btn btn-sm btn-danger"> <i
													class="bi bi-trash-fill"></i>
											</a></td>
										</tr>
										<tr>
											<td>3</td>
											<td>BSc</td>
											<td>1220</td>
											<td>Image</td>
											<td><a href="#" class="btn btn-sm btn-warning"> <i
													class="bi bi-pencil-square"></i>
											</a> <a href="#" class="btn btn-sm btn-danger"> <i
													class="bi bi-trash-fill"></i>
											</a></td>
										</tr>
										<tr>
											<td>4</td>
											<td>BSc</td>
											<td>1220</td>
											<td>Image</td>
											<td><a href="#" class="btn btn-sm btn-warning"> <i
													class="bi bi-pencil-square"></i>
											</a> <a href="#" class="btn btn-sm btn-danger"> <i
													class="bi bi-trash-fill"></i>
											</a></td>
										</tr>
										<tr>
											<td>5</td>
											<td>BSc</td>
											<td>1220</td>
											<td>Image</td>
											<td><a href="#" class="btn btn-sm btn-warning"> <i
													class="bi bi-pencil-square"></i>
											</a> <a href="#" class="btn btn-sm btn-danger"> <i
													class="bi bi-trash-fill"></i>
											</a></td>
										</tr>
									</tbody>
								</table>
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

	<script>
		$(document).ready(function() {
			$('#datatable').DataTable();
		});
	</script>
</body>

</html>