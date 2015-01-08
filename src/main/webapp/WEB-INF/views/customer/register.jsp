<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

	<div class="content-section">
		<div class="container">

			<!-- 	<div class="form-group">Customer Registration</div> -->
			<form:form role="form" method="post" action="users"
				modelAttribute="customer" class="form-horizontal">

				<div class="panel panel-default">
					<div class="panel-heading">Customer Registration</div>
					<div class="panel-body">
						<fieldset>
							<form:errors path="*" cssClass="alert alert-danger" element="div" />
							<div class="form-group">

								<label for="firstName" class="control-label col-lg-2 col-lg-2">First
									Name </label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="firstName" path="firstName" />
									<form:errors path="firstName" />
									<br>
								</div>
							</div>


							<div class="form-group" spellcheck="true">


								<label for="lastName" class="control-label col-lg-2 col-lg-2">Last
									Name </label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="lastName: " path="lastName" />
									<form:errors path="lastName" />
								</div>
							</div>

							<div class="form-group">

								<label for="phoneNumber" class="control-label col-lg-2 col-lg-2">Phone
									Number </label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="phoneNumber" path="phoneNumber" />
									<form:errors path="phoneNumber" />
								</div>
							</div>
							<div class="form-group">

								<label for="dateOfBirth" class="control-label col-lg-2 col-lg-2">Date
									Of Birth: </label>
								<div class="col-lg-3">
									<form:input type="date" class="form-control"
										placeholder="Date Of Birth" path="dob" />
									<form:errors path="dob" />
								</div>
							</div>
							<div class="form-group">


								<label for="email" class="control-label col-lg-2 col-lg-2">Email
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="Email " path="email" />
									<form:errors path="email" />
								</div>
							</div>
							<div class="form-group">

								<label for="street" class="control-label col-lg-2 col-lg-2">Street
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="Street" path="address.street" />
									<form:errors path="address.street" />
								</div>
							</div>

							<div class="form-group">

								<label for="city" class="control-label col-lg-2 col-lg-2">City
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control" placeholder="City"
										path="address.city" />
									<form:errors path="address.city" />

								</div>
							</div>
							<div class="form-group">


								<label for="state" class="control-label col-lg-2 col-lg-2">State
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="State" path="address.state" />
									<form:errors path="address.state" />
								</div>
							</div>

							<div class="form-group">


								<label for="country" class="control-label col-lg-2 col-lg-2">Country
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="Country" path="address.country" />

									<form:errors path="address.country" />
								</div>
							</div>

							<div class="form-group">


								<label for="zip" class="control-label col-lg-2 col-lg-2">Zip
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
									<input type="submit" id="btnSumbit" class="btn btn-primary"
										value="SigunUP" /> Already Registered ?<a href="login">Login
										here 
								</div>
							</div>

						</fieldset>
					</div>
				</div>
			</form:form>
		</div>
	</div>
