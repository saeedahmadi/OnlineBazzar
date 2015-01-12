<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>
				</h1>
				<p></p>
			</div>
		</div>
	</section>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">
						</h3>
					</div>
					<div class="panel-body">
						<c:if test="${not empty error}">
							<div class="alert alert-danger">
							Wrong Credentials
								<br />
							</div>
						</c:if>
						<form action="<c:url value="/j_spring_security_check"></c:url>"
							method="post">
							<fieldset >
							 <legend>Authentication</legend>
								<div class="form-group">
									<input class="form-control"
										placeholder="username"
										name='j_username' type="text">
								</div>
								<div class="form-group">
									<input class="form-control"
										placeholder="password"
										name='j_password' type="password" value="">
								</div>
								<input class="btn btn-lg btn-success btn-block" type="submit"
									value="login">
								<br /> <a href="<c:url value="/"/>">Back to Home</a> <input
									type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
							</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
