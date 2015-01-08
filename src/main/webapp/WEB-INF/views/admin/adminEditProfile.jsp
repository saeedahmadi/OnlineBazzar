<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

	<div class="content-section">
		<div class="container">

			<h2 class="panel-heading">
				<strong>Admin Profile</strong>
			</h2>


			<!-- 	<div class="form-group">Customer Registration</div> -->
			<form:form role="form" method="post" action="editProfile"
				modelAttribute="currentAdmin" class="form-horizontal">
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
							<form:input type="number" class="form-control" path="phoneNumber" />
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
