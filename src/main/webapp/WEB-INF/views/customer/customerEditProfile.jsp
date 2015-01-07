<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>

<head>
<title>Edit</title>
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
				<strong>Customer Registration</strong>
			</h2>


			<!-- 	<div class="form-group">Customer Registration</div> -->
			<form:form role="form" method="post" action="editProfile"
				modelAttribute="currentCustomer" class="form-horizontal">
				<fieldset>
					<form:errors path="*" cssClass="alert alert-danger" element="div" />
					<div class="form-group">

						<div class="col-lg-3">
							<form:input type="hidden" class="form-control" path="id" />
							<form:errors path="id" />
							<br>
						</div>
					</div>
					
					<div class="form-group">

						<label for="firstName" class="control-label col-lg-2 col-lg-2">First Name
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="firstName" />
							<form:errors path="firstName" />
							<br>
						</div>
					</div>


					<div class="form-group" spellcheck="true">


						<label for="lastName" class="control-label col-lg-2 col-lg-2">Last Name
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="lastName" />
							<form:errors path="lastName" />
						</div>
					</div>

					<div class="form-group">

						<label for="phoneNumber" class="control-label col-lg-2 col-lg-2">Phone Number
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="phoneNumber" />
							<form:errors path="phoneNumber" />
						</div>
					</div>
					<div class="form-group">

						<label for="dateOfBirth" class="control-label col-lg-2 col-lg-2">Date
							Of Birth: </label>
						<div class="col-lg-3">
							<form:input type="date" class="form-control" path="dob" />
							<form:errors path="dob" />
						</div>
					</div>
					<div class="form-group">


						<label for="email" class="control-label col-lg-2 col-lg-2">Email
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="email" />
							<form:errors path="email" />
						</div>
					</div>
					<div class="form-group">

						<label for="street" class="control-label col-lg-2 col-lg-2">Street
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="address.street" />
							<form:errors path="address.street" />
						</div>
					</div>

					<div class="form-group">

						<label for="city" class="control-label col-lg-2 col-lg-2">City
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="address.city" />
							<form:errors path="address.city" />

						</div>
					</div>
					<div class="form-group">


						<label for="state" class="control-label col-lg-2 col-lg-2">State
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="address.state" />
							<form:errors path="address.state" />
						</div>
					</div>

					<div class="form-group">


						<label for="country" class="control-label col-lg-2 col-lg-2">Country
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="address.country" />

							<form:errors path="address.country" />
						</div>
					</div>

					<div class="form-group">


						<label for="zip" class="control-label col-lg-2 col-lg-2">Zip
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="address.zip" />

							<form:errors path="address.zip" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<input type="submit" id="btnSumbit" class="btn btn-primary"
								value="Save changes" />
						</div>
					</div>
				</fieldset>
			</form:form>
		</div>
	</div>

</body>
</html>