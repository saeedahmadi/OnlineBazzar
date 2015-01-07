<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>

<head>
<title>Customer Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="resources/css/bootstrap.min.css" rel="stylesheet"
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

			<form:form role="form" method="POST" action="/onlinebazzar/product/add"
				modelAttribute="product" class="form-horizontal"
				enctype="multipart/form-data">
				<div class="panel panel-default">
					<div class="panel-heading">Product Edit</div>
					<div class="panel-body">
						<fieldset>
							<form:errors path="*" cssClass="alert alert-danger" element="div" />
							
							<div class="form-group">
								<div class="col-lg-3">
									<form:input type="hidden" class="form-control" path="id" />
									<form:errors path="id" />
									<br>
								</div>
								</div>
								
								<div class="form-group" spellcheck="true">
								<label for="name" class="control-label col-lg-2 col-lg-2">Name:
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control" path="name" />
									<form:errors path="name" />

								</div>
							</div>
							<div class="form-group" spellcheck="true">
								<label for="price" class="control-label col-lg-2 col-lg-2">Price:
								</label>
								<div class="col-lg-3">
									<form:input type="number" class="form-control" path="price" />
									<form:errors path="price" />
								</div>
							</div>

							<div class="form-group">

								<label for="descritpion" class="control-label col-lg-2 col-lg-2">Descritpion:
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control" path="descritpion" />
									<form:errors path="descritpion" />
								</div>
							</div>
							<div class="form-group">
								<label for="bazzarBenefit"
									class="control-label col-lg-2 col-lg-2">BazzarBenefit:
								</label>
								<div class="col-lg-3">
									<form:input type="number" class="form-control"
										path="bazzarBenefit" />
									<form:errors path="bazzarBenefit" />
								</div>
							</div>
							<div class="form-group">

								<label for="creationDate"
									class="control-label col-lg-2 col-lg-2">Creation Date:
								</label>
								<div class="col-lg-3">
									<form:input type="date" class="form-control"
										path="creationDate" />
									<form:errors path="creationDate" />
								</div>
							</div>

							<div class="form-group">

								<label for="url" class="control-label col-lg-2 col-lg-2">Url:
								</label>
								<div class="col-lg-3">
									<form:input type="text" class="form-control" path="url" />
									<form:errors path="url" />
								</div>
							</div>

							<div class="form-group">
								<label for="url" class="control-label col-lg-2 col-lg-2">Category:
								</label>
								<div class="col-lg-6">
									<form:select path="category.id">
										<form:options items="${category}" itemValue="id"
											itemLabel="name" />
									</form:select>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-2" for="productImage">
									Product Image: </label>
								<div class="col-lg-10">
									<form:input id="productImage" path="productImage" type="file"
										class="form:input-large" />
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-2" for="productDetails">
									ProductDetails: </label>
								<div class="col-lg-10">
									<form:textarea id="productDetails" path="productDetails" rows="5" cols="30" class="form:input-large" />
									
										
								</div>
								</div>

							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<input type="submit" id="btnSumbit" class="btn btn-primary"
										value="UpdateProduct" />
								</div>

							</div>



						</fieldset>
					</div>
				</div>

			</form:form>


		</div>
	</div>


</body>
</html>