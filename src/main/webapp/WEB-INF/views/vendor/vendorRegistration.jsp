<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<html>

<head>
<title>Vendor Registration</title>
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
		              
			<h2 class="panel-heading"><strong>Vendor Registration</strong></h2>
				
			
<!-- 	<div class="form-group">Customer Registration</div> -->
	<form:form role="form" method="post" action="vendor"
		modelAttribute="vendor" class="form-horizontal">
		<fieldset>
			<form:errors path="*" cssClass="alert alert-danger" element="div" />
			
			<div class="form-group">
				<label for="name" class="control-label col-lg-2 col-lg-2">Vendor Name:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="name" path="name" />
					<form:errors path="name" />
					<br>
				</div>
			</div>
			
			<div class="form-group">

				<label for="phoneNumber" class="control-label col-lg-2 col-lg-2">phoneNumber:
				</label>
				<div class="col-lg-3">
					<form:input type="number" class="form-control"
						placeholder="phoneNumber" path="phoneNumber" />
					<form:errors path="phoneNumber" />
				</div>
			</div>	
			
			
			<div class="form-group">
				<label for="name" class="control-label col-lg-2 col-lg-2">Owner Name:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="name" path="bankAccount.ownerName" />
					<form:errors path="bankAccount.ownerName" />
					<br>
				</div>
			</div>	
			
			
			<div class="form-group">
				<label for="name" class="control-label col-lg-2 col-lg-2">Account Name:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="name" path="bankAccount.accountNumber" />
					<form:errors path="bankAccount.accountNumber" />
					<br>
				</div>
			</div>
			
			
			
				
				
			
			
			
			
	<div class="form-group">
	<label for="name" class="control-label col-lg-2 col-lg-2">Type:
				</label>			
			
			
          <div class="col-lg-3">
          
          <select name="number" id="course" style="width:158px;">
                 <option value="none">Select Type</option>
                    <option >1</option>
                    <option >2</option>
          </select>
					<form:input type="text" class="form-control" placeholder="name" path="bankAccount.type" />
					<form:errors path="bankAccount.type" />
					<br>
				</div>
          
          </div>		
			
			<div class="form-group">
				<label for="username" class="control-label col-lg-2 col-lg-2">User Name:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="username" path="webUser.username"/>
				</div>
				<div class="col-sm-3">
					<form:errors path="webUser.username" cssClass="error" />
				</div>
			</div>
			
			
			
			<div class="form-group">			
				<label for="email" class="control-label col-lg-2 col-lg-2">Email:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="Email "
						path="email" />
					<form:errors path="email" />
				</div>
			</div>
			
			<div class="form-group">
				<label for="password" class="control-label col-lg-2 col-lg-2">Password:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="password" path="webUser.password" />
					<form:errors path="webUser.password" />
					<br>
				</div>
			</div>
			
			
			<div class="form-group">
				<label for="street" class="control-label col-lg-2 col-lg-2">Street:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="Street"
						path="address.street" />
					<form:errors path="address.street" />
				</div>
			</div>

			<div class="form-group">
				<label for="city" class="control-label col-lg-2 col-lg-2">City:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="City"
						path="address.city" />
					<form:errors path="address.city" />
				</div>
			</div>
			
			<div class="form-group">
				<label for="state" class="control-label col-lg-2 col-lg-2">State:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="State"
						path="address.state" />
					<form:errors path="address.state" />
				</div>
			</div>

			<div class="form-group">
				<label for="country" class="control-label col-lg-2 col-lg-2">Country:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="Country"
						path="address.country" />

					<form:errors path="address.country" />
				</div>
			</div>
			

			<div class="form-group">
				<label for="zip" class="control-label col-lg-2 col-lg-2">Zip:
				</label>
				<div class="col-lg-3">
					<form:input type="text" class="form-control" placeholder="zip"
						path="address.zip" />
					<form:errors path="address.zip" />
				</div>
			</div>		
			
			
			<%-- <div class="form-group">
			<div class="col-lg-6">
				<form:errors path="username" />
				<label for="username">User Name: </label>
				<form:input type="text" class="form-control" placeholder="User Name"
					path="username" />
			</div>
		</div> --%>		
			
				<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<input type="submit" id="btnSumbit" class="btn btn-primary" value="SigunUP"/>
						</div>
						Already Registered ?  <a href="#" >Login here</a>
					</div>
			
		</fieldset>
	</form:form>
	</div>
	</div>

</body>
</html>