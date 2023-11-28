<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Admin Dashbaord</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/dataTables.bootstrap5.min.css">
</head>

<body>
    <!-- navbar -->
    <nav class="navbar navbar-expand-lg navbar-light shadow-sm bg-light">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample"
                aria-controls="offcanvasExample">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand fw-bold" href="index.html">E-Student</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto me-md-4 mb-2 mb-lg-0">
                    <li class="nav-item dropdown d-flex text-light">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                            aria-expanded="false">
                            <i class="fa-regular fa-user"></i> Admin
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
                <div style="font-weight: 500;" class="fs-3">All Student</div>
            </div>
            <nav class="mt-2 mb-4" style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">All Student</li>
                </ol>
            </nav>
            <div class="all-student mt-5">
                <div class="card border-0 shadow-sm">
                    <div class="card-body">
                        <div class="page-title fs-5 fw-bold mb-4">
                            All Students
                        </div>
                        <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Phone</th>
                                    <th>Department</th>
                                    <th>Program</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>201901002</td>
                                    <td>Arafat</td>
                                    <td>017xxxxxxxx</td>
                                    <td>CSE</td>
                                    <td>BSc</td>
                                    <td>
                                        <a href="show-student.html" class="btn btn-sm btn-info">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-warning">
                                            <i class="bi bi-pencil-square"></i>
                                        </a>
                                        <a href="#" class="btn btn-sm btn-danger">
                                            <i class="bi bi-trash-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
        $(document).ready(function () {
            $('#datatable').DataTable();
        });
    </script>
</body>

</html>