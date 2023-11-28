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
<script src="js/jquery-3.5.1.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap5.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


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
				<div style="font-weight: 500;" class="fs-3">Course Manager</div>
			</div>
			<nav class="mt-2 mb-4" style="--bs-breadcrumb-divider: '>';"
				aria-label="breadcrumb">
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">Course</a></li>
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
												<label for="pg_code" class="form-label">include your
													image</label> <input class="form-control" placeholder="B-123"
													type="text" id="pg_code" name="pg_code">
											</div>

											<div class="col-12 mt-4">
												<div class="mb-3 px-2">
													<button type="submit"
														class="bg-green-500 hover:bg-green-600 text-white font-bold py-2 px-4 rounded">
														Submit</button>
													<button type="reset"
														class="bg-yellow-500 hover:bg-yellow-600 text-white font-bold py-2 px-4 rounded">
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
				<div = class="col-md-7 ">
					<div class="all-student mt-5">
						<div class="card border-0 shadow-sm">
							<div class="card-body">
								<div class="page-title fs-5 fw-bold mb-4">All Programs</div>

								</table>


								<div class=" flex rounded-lg mb-5 shadow-lg ">
									<!-- Purple section on the left -->
									<div class="w-1/3">
										<!-- Assuming you have a placeholder image URL; replace with your actual image URL -->
										<img src="https://placehold.co/300x150"
											alt="Course Image Description"
											class="w-full h-full object-cover">
									</div>

									<!-- White section on the right -->
									<div
										class="p-6 flex flex-col  rounded-r-lg justify-between w-full bg-slate-400">
										<div class="flex items-center justify-between">
											<div>
												<p class="text-xs font-semibold text-gray-800">COURSE</p>
												<div class="w-1/2  rounded-full h-1 my-1">
													<div class="bg-indigo-600 h-1 rounded-full"
														style="width: 66.67%;"></div>
												</div>
												<h3 class="text-xl font-bold text-gray-900">JavaScript
													Fundamentals</h3>
											</div>
											<!-- Progress bar aligned to the right of chapter title -->

										</div>

										<div class="flex justify-end mt-4">
											<div class="flex space-x-2">
												<button
													class="bg-yellow-400 w-20 h-10 rounded-md flex items-center justify-center shadow-lg">
													<i class="fas fa-pencil-alt text-white text-xl"></i>
												</button>

											</div>
										</div>
									</div>
								</div>



								<div class=" flex rounded-lg mb-5 shadow-lg ">
									<!-- Purple section on the left -->
									<div class="w-1/3">
										<!-- Assuming you have a placeholder image URL; replace with your actual image URL -->
										<img src="https://placehold.co/300x150"
											alt="Course Image Description"
											class="w-full h-full object-cover">
									</div>

									<!-- White section on the right -->
									<div
										class="p-6 flex flex-col  rounded-r-lg justify-between w-full bg-slate-400">
										<div class="flex items-center justify-between">
											<div>
												<p class="text-xs font-semibold text-gray-800">COURSE</p>
												<div class="w-1/2  rounded-full h-1 my-1">
													<div class="bg-indigo-600 h-1 rounded-full"
														style="width: 66.67%;"></div>
												</div>
												<h3 class="text-xl font-bold text-gray-900">JavaScript
													Fundamentals</h3>
											</div>
											<!-- Progress bar aligned to the right of chapter title -->

										</div>

										<div class="flex justify-end mt-4">
											<div class="flex space-x-2">
												<button
													class="bg-yellow-400 w-20 h-10 rounded-md flex items-center justify-center shadow-lg">
													<i class="fas fa-pencil-alt text-white text-xl"></i>
												</button>

											</div>
										</div>
									</div>
								</div>



								<div class=" flex rounded-lg mb-5 shadow-lg ">
									<!-- Purple section on the left -->
									<div class="w-1/3">
										<!-- Assuming you have a placeholder image URL; replace with your actual image URL -->
										<img src="https://placehold.co/300x150"
											alt="Course Image Description"
											class="w-full h-full object-cover">
									</div>

									<!-- White section on the right -->
									<div
										class="p-6 flex flex-col  rounded-r-lg justify-between w-full bg-slate-400">
										<div class="flex items-center justify-between">
											<div>
												<p class="text-xs font-semibold text-gray-800">COURSE</p>
												<div class="w-1/2  rounded-full h-1 my-1">
													<div class="bg-indigo-600 h-1 rounded-full"
														style="width: 66.67%;"></div>
												</div>
												<h3 class="text-xl font-bold text-gray-900">JavaScript
													Fundamentals</h3>
											</div>
											<!-- Progress bar aligned to the right of chapter title -->

										</div>

										<div class="flex justify-end mt-4">
											<div class="flex space-x-2">
												<button
													class="bg-yellow-400 w-20 h-10 rounded-md flex items-center justify-center shadow-lg">
													<i class="fas fa-pencil-alt text-white text-xl"></i>
												</button>

											</div>
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
	<script src="https://cdn.tailwindcss.com"></script>

	<script>
		$(document).ready(function() {
			$('#datatable').DataTable();
		});
	</script>
	<script>
		function toggleCollapse(targetId, iconId) {
			var element = document.getElementById(targetId);
			var icon = document.getElementById(iconId);

			if (element.classList.contains('d-none')) {
				element.classList.remove('d-none');
				icon.classList.replace('bi-chevron-down', 'bi-chevron-up');
			} else {
				element.classList.add('d-none');
				icon.classList.replace('bi-chevron-up', 'bi-chevron-down');
			}
		}
	</script>

</body>

</html>