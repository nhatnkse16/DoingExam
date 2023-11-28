
<div
	class="offcanvas offcanvas-start bg-purple01 text-white sidebar-nav"
	tabindex="-1" id="offcanvasExample"
	aria-labelledby="offcanvasExampleLabel">
	<div class="offcanvas-header shadow-sm d-block text-center">
		<div class="offcanvas-title" id="offcanvasExampleLabel">
			<a class="navbar-brand fw-bold" href="index.html">E-Student</a>
		</div>
	</div>
	<div class="offcanvas-body pt-3 p-0">
		<nav class="navbar-dark">
			<ul class="navbar-nav01 ">
				<li class="nav-link bordered px-3 active"><a
					href="adminHome.jsp" class="nav-link px-3 active"> <span
						class="me-2"><i class="bi bi-speedometer2"></i></span> <span>Dashboard</span>
				</a></li>
				<li class="bordered nav-link  px-3"><a
					class="flex justify-between items-center nav-link px-3 cursor-pointer sidebar-link"
					onclick="toggleCollapse('collapseExamples', 'collapseIcon1')">
						<span> <i class="bi bi-people-fill"></i> <span>Course
								Manager</span>
					</span> <i class="bi bi-chevron-down" id="collapseIcon1"></i>
				</a>
					<div class="d-none" id="collapseExamples">
						<ul class="navbar-nav ps-3">
							<li><a href="courseManager.jsp" class="nav-link px-3"> <span><i
										class="bi bi-1-circle"></i></span> <span>Course</span>
							</a></li>
							<li><a href="questionBankManager.jsp" class="nav-link px-3">
									<span><i class="bi bi-2-circle"></i></span> <span>Question
										Bank</span>
							</a></li>
							<li><a href="examManager.jsp" class="nav-link px-3"> <span><i
										class="bi bi-3-circle"></i></span> <span>Exam</span>
							</a></li>
						</ul>
					</div></li>
				<li class="nav-link bordered px-3"><a
					class="nav-link px-3 sidebar-link cursor-pointer"
					onclick="toggleCollapse('collapseExample', 'collapseIcon2')"> <span
						class="me-2"><i class="bi bi-people-fill"></i></span> <span>Account
							Manager</span> <span class="right-icon ms-auto"><i
							class="bi bi-chevron-down" id="icon-collapseExample"></i></span>
				</a>
					<div class="d-none" id="collapseExample">
						<div>
							<ul class="navbar-nav ps-3">
								<li><a href="studentManager.jsp" class="nav-link px-3">
										<span class="me-2"><i class="bi bi-1-circle"></i></span> <span>Teachers</span>
								</a></li>
								<li><a href="teacherManager.jsp" class="nav-link px-3">
										<span class="me-2"><i class="bi bi-2-circle"></i></span> <span>Students</span>
								</a></li>
							</ul>
						</div>
					</div></li>




				<li class="nav-link bordered px-3"><a href="adminProfile.jsp"
					class="nav-link px-3"> <span class="me-2"><i
							class="bi bi-person"></i></span> <span>Profile</span>
				</a></li>
			</ul>
		</nav>
	</div>
</div>
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