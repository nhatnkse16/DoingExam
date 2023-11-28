<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Tailwindcss Course</title>


<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:wght@400;500;600;700&display=swap"
	rel="stylesheet">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
	defer></script>

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
<style>
body {
	font-family: 'IBM Plex Mono', sans-serif;
}

[x-cloak] {
	display: none;
}

.tick {
	background: repeating-linear-gradient(to right, #eee, #eee 1px, #fff 1px, #fff 5%);
}
</style>
<body>

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


	<main class="mt-3 p-2">
		<div class="flex-auto ">
			<div class="flex flex-col">
				<div class="page-title">
					<div style="font-weight: 500;" class="fs-3">Course Manager</div>
				</div>
				<nav class="mt-2 mb-4" style="--bs-breadcrumb-divider: '>';"
					aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a>Exam </a></li>
						<li class="breadcrumb-item active" aria-current="page"><a>View
								Score</a></li>
					</ol>
				</nav>
				<div class="bg-blue-50 min-h-screen">
					<div
						class=" mt-8 grid lg:grid-cols-20 sm:grid-cols-2 p-4 w-full gap-10 ">
						<!--Grid starts here-->

						<div
							class="flex items-center justify-between p-5 bg-white rounded shadow-sm">
							<div>
								<div class="text-lg text-gray-700 ">thí sinh tham gia</div>
								<div class="flex items-center pt-1">
									<div class="text-3xl font-medium text-gray-600 ">1000</div>
								</div>
							</div>
							<div class="text-pink-500">
								<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10"
									viewBox="0 0 20 20" fill="currentColor">
                  <path
										d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z" />
                </svg>
							</div>

						</div>
						<div
							class="flex items-center justify-between p-5 bg-white rounded shadow-sm">
							<div>
								<div class="text-lg text-gray-700 ">số điểm trung bình</div>
								<div class="flex items-center pt-1">
									<div class="text-3xl font-medium text-gray-600 ">7.5</div>
								</div>
							</div>
							<div class="text-pink-500">
								<svg xmlns="http://www.w3.org/2000/svg" class="h-10 w-10"
									viewBox="0 0 20 20" fill="currentColor">
                    <path fill-rule="evenodd"
										d="M10 18a8 8 0 100-16 8 8 0 000 16zm3.707-8.707l-3-3a1 1 0 00-1.414 1.414L10.586 9H7a1 1 0 100 2h3.586l-1.293 1.293a1 1 0 101.414 1.414l3-3a1 1 0 000-1.414z"
										clip-rule="evenodd" />
                  </svg>
							</div>
						</div>
						<!-- Grid ends here..-->

					</div>



					<div class=" mt-6 grid  lg:grid-cols-2  md:grid-cols-3 p-4 gap-3">

						<div x-data="app()" x-cloak class="px-4">
							<div class="max-w-lg mx-auto py-10">
								<div class="shadow p-6 rounded-lg bg-white">
									<div class="md:flex md:justify-between md:items-center">
										<div>
											<h2 class="text-xl text-gray-800 font-bold leading-tight">Kiểm
												tra 1 tiết</h2>
											<p class="mb-2 text-gray-600 text-sm">thống kê điểm</p>
										</div>

										<!-- Legends -->
										<div class="mb-4">
											<div class="flex items-center">
												<div class="w-2 h-2 bg-blue-600 mr-2 rounded-full"></div>
												<div class="text-sm text-gray-700">Số lượng học sinh</div>
											</div>
										</div>
									</div>


									<div class="line my-8 relative">
										<!-- Tooltip -->
										<template x-if="tooltipOpen == true">
											<div x-ref="tooltipContainer"
												class="p-0 m-0 z-10 shadow-lg rounded-lg absolute h-auto block"
												:style="`bottom: ${tooltipY}px; left: ${tooltipX}px`">
												<div class="shadow-xs rounded-lg bg-white p-2">
													<div class="flex items-center justify-between text-sm">
														<div>Số lượng học sinh:</div>
														<div class="font-bold ml-2">
															<span x-html="tooltipContent"></span>
														</div>
													</div>
												</div>
											</div>
										</template>

										<!-- Bar Chart -->
										<div class="flex -mx-2 items-end mb-2">
											<template x-for="data in chartData">

												<div class="px-2 w-1/6">
													<div :style="`height: ${data}px`"
														class="transition ease-in duration-200 bg-blue-600 hover:bg-blue-400 relative"
														@mouseenter="showTooltip($event); tooltipOpen = true"
														@mouseleave="hideTooltip($event)">
														<div x-text="data"
															class="text-center absolute top-0 left-0 right-0 -mt-6 text-gray-800 text-sm"></div>
													</div>
												</div>

											</template>
										</div>

										<!-- Labels -->
										<div class="border-t border-gray-400 mx-auto"
											:style="`height: 1px; width: ${ 100 - 1/chartData.length*100 + 3}%`"></div>
										<div class="flex -mx-2 items-end">
											<template x-for="data in labels">
												<div class="px-2 w-1/6">
													<div class="bg-red-600 relative">
														<div
															class="text-center absolute top-0 left-0 right-0 h-2 -mt-px bg-gray-400 mx-auto"
															style="width: 1px"></div>
														<div x-text="data"
															class="text-center absolute top-0 left-0 right-0 mt-3 text-gray-700 text-sm"></div>
													</div>
												</div>
											</template>
										</div>

									</div>
								</div>
							</div>
						</div>

						<div class="shadow-lg rounded-lg overflow-hidden">
							<div class="py-3 px-5 bg-gray-50">Pie chart</div>
							<canvas class="p-1 ml-40 mr-40" id="chartPie"></canvas>
						</div>






					</div>
					<!--Table-->
					<div class="p-4 font-bold text-gray-600">Clients</div>
					<div class="grid  lg:grid-cols-1  md:grid-cols-1 p-4 gap-3">
						<div
							class="col-span-2 flex flex-auto items-center justify-between  p-5 bg-white rounded shadow-sm">
							<table class="min-w-full divide-y divide-gray-200 table-auto">
								<thead class="bg-gray-50">
									<tr>
										<th scope="col"
											class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
											Name</th>
										<th scope="col"
											class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
											Title</th>
										<th scope="col"
											class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
											Status</th>
										<th scope="col"
											class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
											Role</th>
										<th scope="col" class="relative px-6 py-3"><span
											class="sr-only">Edit</span></th>
									</tr>
								</thead>
								<tbody class="bg-white divide-y divide-gray-200">
									<tr>
										<td class="px-6 py-4 whitespace-nowrap">
											<div class="flex items-center">
												<div class="flex-shrink-0 h-10 w-10">
													<img class="h-10 w-10 rounded-full"
														src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=4&w=256&h=256&q=60"
														alt="">
												</div>
												<div class="ml-4">
													<div class="text-sm font-medium text-gray-900">Jane
														Cooper</div>
													<div class="text-sm text-gray-500">
														jane.cooper@example.com</div>
												</div>
											</div>
										</td>

										<td class="px-6 py-4 whitespace-nowrap"><span
											class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
												Active </span></td>
										<td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
											Admin</td>
										<td
											class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
											<a href="#" class="text-indigo-600 hover:text-indigo-900">Edit</a>
										</td>
									</tr>
									<tr>
										<td class="px-6 py-4 whitespace-nowrap">
											<div class="flex items-center">
												<div class="flex-shrink-0 h-10 w-10">
													<img class="h-10 w-10 rounded-full"
														src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=4&w=256&h=256&q=60"
														alt="">
												</div>
												<div class="ml-4">
													<div class="text-sm font-medium text-gray-900">Jane
														Cooper</div>
													<div class="text-sm text-gray-500">
														jane.cooper@example.com</div>
												</div>
											</div>
										</td>

										<td class="px-6 py-4 whitespace-nowrap"><span
											class="px-2 inline-flex text-xs leading-5 font-semibold rounded-full bg-green-100 text-green-800">
												Active </span></td>
										<td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">
											Admin</td>
										<td
											class="px-6 py-4 whitespace-nowrap text-right text-sm font-medium">
											<a href="#" class="text-indigo-600 hover:text-indigo-900">Edit</a>
										</td>
									</tr>

									<!-- More people... -->
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>

	<!-- Required chart.js -->
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

	<!-- Chart line -->

	<script>
    function app() {
      return {
        chartData: [112, 10, 225, 134, 80, 50, 100, 200,300],
        labels: ['1-2', '2-3', '3-4', '4-5', '5-6', '6-7', '7-8', '8-9', '9-10'],

        tooltipContent: '',
        tooltipOpen: false,
        tooltipX: 0,
        tooltipY: 0,
        showTooltip(e) {
          console.log(e);
          this.tooltipContent = e.target.textContent
          this.tooltipX = e.target.offsetLeft - e.target.clientWidth;
          this.tooltipY = e.target.clientHeight + e.target.clientWidth;
        },
        hideTooltip(e) {
          this.tooltipContent = '';
          this.tooltipOpen = false;
          this.tooltipX = 0;
          this.tooltipY = 0;
        }
      }
    }
  </script>

	<script>
    const dataPie = {
      labels: ["JavaScript", "Python", "Ruby","html"],
      datasets: [
        {
          label: "My First Dataset",
          data: [300, 50, 100, 200],
          backgroundColor: [
            "rgb(133, 105, 241)",
            "rgb(164, 101, 241)",
            "rgb(101, 143, 241)",
            "rgb(255, 17, 63)",
          ],
          hoverOffset: 4,
        },
      ],
    };
  
    const configPie = {
      type: "pie",
      data: dataPie,
      options: {},
    };
  
    var chartBar = new Chart(document.getElementById("chartPie"), configPie);
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