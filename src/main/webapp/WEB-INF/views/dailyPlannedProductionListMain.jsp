<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DAILY PLANNED PRODUCTION LIST MAIN</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<link
	href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script
	src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>
<script>
	var contextPath = '${pageContext.request.contextPath}' + '/';
</script>
</head>
<body>
	<%@ include file="navbar.jsp"%>
	<br>
	<h4 class="text-center">Logged in As: ${user.name}</h4>
	<h4 class="text-center">Branch: ${user.branch.branch_name}</h4>
	<div class="container">
		<div class="row">
			<div id="dailyPlannedProductionListMain"></div>
		</div>
	</div>

	<jsp:include page="addDailyPlannedProductionForm.jsp" />
	<jsp:include page="editDailyPlannedProductionForm.jsp" />
	<jsp:include page="delDailyPlannedProductionConfirm.jsp" />
	<%@ include file="qkcFooter.jsp"%>
</body>
<script>
	$(document).ready(function() {

		loadDailyPlannedProductionList();
		loadAvailRawMaterial();
		loadAvailEditRawMaterial();

		function loadDailyPlannedProductionList() {
			$.ajax({
				url : contextPath + "daily-planned-production/list",
				method : "GET",
				success : function(result) {

					$("#dailyPlannedProductionListMain").html(result);
					$("#dailyPlannedProductionListTbl").dataTable();
				}
			});
		}

		function loadAvailRawMaterial() {
			$.ajax({
				url : contextPath + "daily-planned-production/availList",
				method : "GET",
				success : function(result) {
					$("#availRawMaterial").html(result);
					$("#availRawMaterialListTbl").dataTable();
				}
			});
		}

		function loadAvailEditRawMaterial() {
			$.ajax({
				url : contextPath + "daily-planned-production/availEditList",
				method : "GET",
				success : function(result) {
					$("#availEditRawMaterial").html(result);
					$("#availEditRawMaterialListTbl").dataTable();
				}
			});
		}

	});
</script>
</html>