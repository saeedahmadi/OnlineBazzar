<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>

<head>
<title>Report Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<!-- <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />
  -->
<script type="text/javascript" src="bootstrap/js/jquery-2.1.3.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

</head>
<body>
	<div class="content-section">
		<div class="container">

			<h2 class="panel-heading">
				<strong>Report Generating Page</strong>
			</h2>


			<div class="row1 scroll-pane">
			
			<label for="selectReportType" class="control-label col-lg-2 col-lg-2">Select Report Type: </label>
				<div class="col col-4">
					<select id="type">
						<option value="Daily">Daily</option>
						<option value="Weekly">Weekly</option>
						<option value="Monthly">Monthly</option>
						<option value="Yearly">Yearly</option>
					</select>
				</div>
				<div class="col col-4">
					<div class="form-group">
						<label for="dateOfReport" class="control-label col-lg-2 col-lg-2">From
							Date: </label>
						<div class="col-lg-3">
							<input id="fromDate" type="date" class="form-control"
								placeholder="From date" />
						</div>
					</div>
				</div>

				<div class="col col-4">
					<div class="form-group">
						<label for="dateOfReport" class="control-label col-lg-2 col-lg-2">To
							Date: </label>
						<div class="col-lg-3">
							<input id="toDate" type="date" class="form-control"
								placeholder="To date" />
						</div>
					</div>
				</div>
			</div>

			<div class="col col-4">
				<div class="form-group">
					<a onclick="reporting();">Generate Report</a>
				</div>
			</div>

		</div>
	</div>

	<script type="text/javascript">
				function reporting() {
				
				var d=jQuery('#fromDate').val();
				var d2=jQuery('#toDate').val();				
					var urlA="<%=request.getContextPath()%>/report/vendor_list_report/pdf?type="+
					jQuery('#type').val()+"&fromdate="+d.toString()+"&todate="+d2.toString();					
					window.location.href = urlA;
		}
	</script>

</body>
</html>
