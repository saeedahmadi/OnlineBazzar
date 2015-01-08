<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


	
		<!-- content -->
	<div class="container">
		<div class="main">
						<h2 class="panel-heading">
				<strong>Payment details</strong>
			</h2>

			<!-- 	<div class="form-group">Customer Registration</div> -->
			<form:form role="form" method="post" action="paymentDetails"
				modelAttribute="paymentDetails" class="form-horizontal">
				<fieldset>
					<div class="form-group">
						<div class="col-lg-3">
							<form:input type="hidden" class="form-control" path="id" />
							<form:errors path="id" cssClass="text-danger" />
							<br>
						</div>
					</div>

					<div class="form-group">

						<label for="ownerName" class="control-label col-lg-2 col-lg-2">Name:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="ownerName" />
							<form:errors path="ownerName" cssClass="text-danger" />
							<br>
						</div>
					</div>


					<div class="form-group" spellcheck="true">
						<label for="type" class="control-label col-lg-2 col-lg-2">Card
							type: </label>
						<div class="col-lg-3">
							<form:select path="type">
								<form:option value="" label="--Select value--" />
								<form:options items="${card}"/>
							</form:select>
						</div>
					</div>

					<div class="form-group">

						<label for="cardNumber" class="control-label col-lg-2 col-lg-2">Card
							number: </label>
						<div class="col-lg-3">
							<form:input type="cardNumber" class="form-control"
								path="cardNumber" />
							<form:errors path="cardNumber" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">

						<label for="exipryDate" class="control-label col-lg-2 col-lg-2">Expiry
							date </label>
						<div class="col-lg-3">
							<form:input type="Date" class="form-control" path="exipryDate" />
							<form:errors path="exipryDate" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">


						<label for="cvv" class="control-label col-lg-2 col-lg-2">cvv
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control" path="cvv" />
							<form:errors path="cvv" cssClass="text-danger" />
						</div>
					</div>
					<div class="form-group">

						<label for="street" class="control-label col-lg-2 col-lg-2">Street:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.street" />
							<form:errors path="billingAddress.street" cssClass="text-danger" />
						</div>
					</div>

					<div class="form-group">

						<label for="city" class="control-label col-lg-2 col-lg-2">City:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.city" />
							<form:errors path="billingAddress.city" cssClass="text-danger" />

						</div>
					</div>
					<div class="form-group">


						<label for="state" class="control-label col-lg-2 col-lg-2">State:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.state" />
							<form:errors path="billingAddress.state" cssClass="text-danger" />
						</div>
					</div>

					<div class="form-group">


						<label for="country" class="control-label col-lg-2 col-lg-2">Country:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.country" />

							<form:errors path="billingAddress.country" />
						</div>
					</div>

					<div class="form-group">


						<label for="zip" class="control-label col-lg-2 col-lg-2">Zip:
						</label>
						<div class="col-lg-3">
							<form:input type="text" class="form-control"
								path="billingAddress.zip" />

							<form:errors path="billingAddress.zip" cssClass="text-danger" />
						</div>
					</div>

					<div class="form-group">
						<div class="col-lg-offset-2 col-lg-10">
							<input type="submit" id="btnSumbit" class="btn btn-primary"
								value="Submit" />
						</div>
					</div>
				</fieldset>
			</form:form>
		</div>
	</div>
	
	
	