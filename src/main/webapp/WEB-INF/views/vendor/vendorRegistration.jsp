<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<link href="<c:url value="/resources/css/bootstrap.css"/>" 
	rel='stylesheet' type='text/css' />

	<div class="content-section">
		<div class="container">

			<h2 class="panel-heading">
				<strong>Vendor Registration</strong>
			</h2>


			<form:form role="form" method="post"
				action="/onlinebazzar/compeleteVendorRegistration" modelAttribute="vendor"
				class="form-horizontal">
				<fieldset>
					<form:errors path="*" cssClass="alert alert-danger" element="div" />

					<div class="form-group">
						<label for="name" class="control-label col-lg-2 col-lg-2">Vendor
							Name: </label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" placeholder="name"
								path="name" />
							<form:errors path="name" />
							<br>
						</div>
					</div>

					<div class="form-group">

						<label for="phoneNumber" class="control-label col-lg-2 col-lg-2">Phone Number:
						</label>
						<div class="col-lg-3">
							<form:input type="number" class="form-control"
								placeholder="phoneNumber" path="phoneNumber" />
							<form:errors path="phoneNumber" />
						</div>
					</div>


					<div class="form-group">
						<label for="name" class="control-label col-lg-2 col-lg-2">Owner
							Name: </label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" placeholder="name"
								path="bankAccount.ownerName" />
							<form:errors path="bankAccount.ownerName" />
							<br>
						</div>
					</div>


					<div class="form-group">
						<label for="name" class="control-label col-lg-2 col-lg-2">Account
							Number: </label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" placeholder="name"
								path="bankAccount.accountNumber" />
							<form:errors path="bankAccount.accountNumber" />
							<br>
						</div>
					</div>






					<div class="form-group">
						<label for="name" class="control-label col-lg-2 col-lg-2">Type:
						</label>


						<div class="col-lg-3">

							<form:select path="bankAccount.type">
								<form:option value="-" label="Account Type" />
								<form:options items="${enumValues}" />
							</form:select>

							<br>
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
							<form:input type="text" class="form-control"
								placeholder="Country" path="address.country" />

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



					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<input type="submit" id="btnSumbit" class="btn btn-primary"
								value="SigunUP" />
						</div>
						Already Registered ? <a href="#">Login here</a>
					</div>

				</fieldset>
			</form:form>
		</div>
	</div>
