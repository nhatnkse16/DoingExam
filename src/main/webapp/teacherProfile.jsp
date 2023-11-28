<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Profile</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="./assets/css/useProfile.css">
<style>
/* Additional styles for a more professional look */
.profile-card {
	border: 1px solid #ccc;
	background-color: #f8f9fa;
	border-radius: 10px;
	padding: 20px;
	margin-bottom: 20px;
}

.nav-link {
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 5px;
	background-color: #fff;
	color: #000;
	padding: 10px;
}

.nav-link.active {
	background-color: #007bff;
	color: #fff;
}
</style>
</head>

<body>
	<div class="container-xl px-4 mt-4">
		<hr class="mt-0 mb-4">
		<div class="row">
			<div class="col-xl-4">
				<!-- Profile picture card -->
				<div class="card mb-4 mb-xl-0 profile-card">
					<div class="card-header">Profile Picture</div>
					<div class="card-body text-center">
						<!-- Profile picture image -->
						<img class="img-account-profile rounded-circle mb-2"
							src="http://bootdey.com/img/Content/avatar/avatar1.png" alt="">
						<!-- Profile picture help block -->
						<div class="small font-italic text-muted mb-4">JPG or PNG no
							larger than 5 MB</div>
						<!-- Profile picture upload button -->
						<button class="btn btn-primary" type="button">Upload new
							image</button>
					</div>
				</div>

				<!-- Tab bar -->
				<nav class="nav flex-column mt-4">
					<a class="nav-link active" data-bs-toggle="pill"
						href="teacherProfile.jsp">Account Details</a> <a class="nav-link"
						data-bs-toggle="pill" href="createExam.jsp">Create Exam</a>
					<a class="nav-link" data-bs-toggle="pill" href="#other-tab-1">Other
						Tab 1</a> <a class="nav-link" data-bs-toggle="pill"
						href="#other-tab-2">Other Tab 2</a>
					<!-- Add more tabs as needed -->
				</nav>
			</div>

			<div class="col-xl-8">
				<!-- Tab content -->
				<div class="tab-content">
					<!-- Account details card -->
					<div class="tab-pane fade show active" id="account-details">
						<div class="card mb-4">
							<div class="card-header">Account Details</div>
							<div class="card-body">

								<form>
									<!-- Form Group (username)-->
									<div class="mb-3">
										<label class="small mb-1" for="inputUsername">Username
											(how your name will appear to other users on the site)</label> <input
											class="form-control" id="inputUsername" type="text"
											placeholder="Enter your username" value="username">
									</div>
									<!-- Form Row-->
									<div class="row gx-3 mb-3">
										<!-- Form Group (first name)-->
										<div class="col-md-6">
											<label class="small mb-1" for="inputFirstName">First
												name</label> <input class="form-control" id="inputFirstName"
												type="text" placeholder="Enter your first name"
												value="Valerie">
										</div>
										<!-- Form Group (last name)-->
										<div class="col-md-6">
											<label class="small mb-1" for="inputLastName">Last
												name</label> <input class="form-control" id="inputLastName"
												type="text" placeholder="Enter your last name" value="Luna">
										</div>
									</div>
									<!-- Form Row        -->
									<div class="row gx-3 mb-3">
										<!-- Form Group (organization name)-->
										<div class="col-md-6">
											<label class="small mb-1" for="inputOrgName">Organization
												name</label> <input class="form-control" id="inputOrgName"
												type="text" placeholder="Enter your organization name"
												value="Start Bootstrap">
										</div>
										<!-- Form Group (location)-->
										<div class="col-md-6">
											<label class="small mb-1" for="inputLocation">Location</label>
											<input class="form-control" id="inputLocation" type="text"
												placeholder="Enter your location" value="San Francisco, CA">
										</div>
									</div>
									<!-- Form Group (email address)-->
									<div class="mb-3">
										<label class="small mb-1" for="inputEmailAddress">Email
											address</label> <input class="form-control" id="inputEmailAddress"
											type="email" placeholder="Enter your email address"
											value="name@example.com">
									</div>
									<!-- Form Row-->
									<div class="row gx-3 mb-3">
										<!-- Form Group (phone number)-->
										<div class="col-md-6">
											<label class="small mb-1" for="inputPhone">Phone
												number</label> <input class="form-control" id="inputPhone"
												type="tel" placeholder="Enter your phone number"
												value="555-123-4567">
										</div>
										<!-- Form Group (birthday)-->
										<div class="col-md-6">
											<label class="small mb-1" for="inputBirthday">Birthday</label>
											<input class="form-control" id="inputBirthday" type="text"
												name="birthday" placeholder="Enter your birthday"
												value="06/10/1988">
										</div>
									</div>
									<!-- Save changes button-->
									<button class="btn btn-primary" type="button">Save
										changes</button>
								</form>
							</div>
						</div>

						<!-- Change password card -->
						<div class="card mb-4">
							<div class="card-header">Change Password</div>
							<div class="card-body">
								<form>
									<!-- Form Group (current password)-->
									<div class="mb-3">
										<label class="small mb-1" for="currentPassword">Current
											Password</label> <input class="form-control" id="currentPassword"
											type="password" placeholder="Enter current password">
									</div>
									<!-- Form Group (new password)-->
									<div class="mb-3">
										<label class="small mb-1" for="newPassword">New
											Password</label> <input class="form-control" id="newPassword"
											type="password" placeholder="Enter new password">
									</div>
									<!-- Form Group (confirm password)-->
									<div class="mb-3">
										<label class="small mb-1" for="confirmPassword">Confirm
											Password</label> <input class="form-control" id="confirmPassword"
											type="password" placeholder="Confirm new password">
									</div>
									<button class="btn btn-primary" type="button">Save</button>
								</form>
							</div>
						</div>
					</div>

					<!-- Other tabs -->
					<div class="tab-pane fade" id="other-tab-1">
						<!-- Content for other tab 1 -->
						<!-- ... -->
					</div>

					<div class="tab-pane fade" id="other-tab-2">
						<!-- Content for other tab 2 -->
						<!-- ... -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-rI7EQM+xJjT0Xyz0LF81R2UmIYC8pRdjxpk6WV9vm9xP9eY7yO0NqXrkkcECps8"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.slim.min.js"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-rI7EQM+xJjT0Xyz0LF81R2UmIYC8pRdjxpk6WV9vm9xP9eY7yO0NqXrkkcECps8"
		crossorigin="anonymous"></script>

</body>

</html>