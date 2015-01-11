<link href="<c:url value="/resources/css/bootstrap.css"/>" 
	rel='stylesheet' type='text/css' />
	<div class="content-section">
		<div class="container">



			<!-- 	<div class="form-group">vuser Registration</div> -->
			<form:form role="form" method="post"
				action="/onlinebazzar/vendor/user/add" modelAttribute="vuser"
				class="form-horizontal">

				<div class="panel panel-default">
					<div class="panel-heading">vuser Registration</div>
					<div class="panel-body">
						<fieldset>
							<form:errors path="*" cssClass="alert alert-danger" element="div" />

							<div class="form-group">

								<label for="webuser.username"
									class="control-label col-lg-2 col-lg-2">Username: </label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="webuser.username" path="webuser.username" />
									<form:errors path="webuser.username" />
									<br>
								</div>
							</div>
							<div class="form-group">

								<label for="webuser.password"
									class="control-label col-lg-2 col-lg-2">Password: </label>
								<div class="col-lg-3">
									<form:input type="password" class="form-control"
										placeholder="webuser.password" path="webuser.password" />
									<form:errors path="webuser.password" />
									<br>
								</div>
							</div>


							<div class="form-group">

								<label for="webuser.password"
									class="control-label col-lg-2 col-lg-2">Role: </label>
								<div class="col-lg-3">
									<form:select path="webuser.role">
										<form:option value="-" label="Role Type" />
										<form:options items="${enumValues}" />
									</form:select>
								</div>
							</div>
							<div class="form-group">

								<label for="firstName" class="control-label col-lg-2 col-lg-2">First Name:
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="firstName" path="firstName" />
									<form:errors path="firstName" />
									<br>
								</div>
							</div>


							<div class="form-group" spellcheck="true">


								<label for="lastName" class="control-label col-lg-2 col-lg-2">Last Name:
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="lastName: " path="lastName" />
									<form:errors path="lastName" />
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

								<label for="dateOfBirth" class="control-label col-lg-2 col-lg-2">Date
									Of Birth: </label>
								<div class="col-lg-3">
									<form:input type="date" class="form-control"
										placeholder="Date Of Birth" path="dob" />
									<form:errors path="dob" />
								</div>
							</div>
							<div class="form-group">


								<label for="email" class="control-label col-lg-2 col-lg-2">Email:
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="Email " path="email" />
									<form:errors path="email" />
								</div>
							</div>
							<div class="form-group">

								<label for="street" class="control-label col-lg-2 col-lg-2">Street:
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control"
										placeholder="Street" path="address.street" />
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
									<form:input type="text" class="form-control"
										placeholder="State" path="address.state" />
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
										value="SigunUP" />
								</div>
								<div>
									<label class="control-label col-lg-2 col-lg-2">Already
										Registered ?<a href="#">Login here</a>
									</label>
								</div>

							</div>




						</fieldset>
					</div>
				</div>
			</form:form>
		</div>
	</div>
