<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Bump</title>
	<link href="css/practiceToggleTestResults.css" rel="stylesheet" type="text/css">
	<link href="css/bump.min.css" rel="stylesheet" type="text/css">
	<script src="javascripts/vendor/min.jquery-2.2.0.js"></script>
	<script src="javascripts/bump/utilities/commons.js"></script>	
</head>
<body>
	<div class="global-container">
		<div class="logo"></div>
		<div class="hamburger-menu"></div>
		<ul class="sidebar">
		</ul>
		<div class="content-container">
			<div id="interface">
				<div class="interface">
					<div class="inner-container">
						<div class="new-test-contents">
							<div class="message">
								<h1 class="headline-large">Add New Test</h1>
								<div class="form-container">
									<form class="interface-form">
										<div class="input-container">
											<input name="user-id" type="text" placeholder="Bump ID"/>
											<img src="assets/icons/ic_perm_identity_black_36dp_1x.png" class="input-image">											
										</div>
										<div class="input-container">
											<input name="paris-id" type="text" maxlength="12" placeholder="Paris ID"/>
											<img src="assets/icons/ic_fingerprint_black_36dp_1x.png" class="input-image">												
										</div>
										
										
									</form>
									<div class="button submit-test-btn">
										<button id="submit-btn" type="submit">Add Test</button>
									</div>
								</div>
							</div>
						</div>
						<div class="enter-results-contents">
							<div class="message">
								<h1 class="headline-large">Enter Test Results</h1>
								<div class="paris-search">
									<div class="search-icon"></div>
									<div class="input-container">
										<input name="paris-id" type="text" maxlength="12" placeholder="Paris ID"/>
										<img src="assets/icons/ic_search_black_36dp_1x.png" class="input-image">												
									</div>									
								</div>
								<div class="form-container">
									<form class="interface-form">
										<table class="test-result-table">
											<tr class="result-labels">
												<th>Paris ID</th>
												<th>HIV+</th>
												<th>Syphilis+</th>
												<th>Gonorrhea+</th>
												<th>Chlamydia+</th>
											</tr>
											<tr class="result-inputs">
												<input name="paris-id" type="hidden"/>
												<td id="paris-id"></td>
												<td><input name="hiv" type="checkbox"/>	</td>
												<td><input name="syphilis" type="checkbox"/></td>
												<td><input name="gonorrhea" type="checkbox"/></td>
												<td><input name="chlamydia" type="checkbox"/></td>
											</tr>
										</table>
									</form>
									<div class="button submit-results-btn">
										<button type="submit">Enter Results</button>
									</div>
								</div>
								<div class="parid-id-invalid-messasge">
									<p>Client with this Paris ID is not registered with Bump.</p>
								</div>
								<div class="paris-id-unentered-message">
								<p>Please enter client's Paris ID. A form will appear if the client is registered with Bump.</p>

								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="actions">
					<div class="action new-test">
						<span>New Test</span>
					</div>
					<div class="action enter-results">
						<span>Enter Results</span>
					</div>
				</div>
			</div>
		</div>		
	</div>
</body>
<script src="javascripts/bump/eventHandlers/newTestHandler.js"></script>
<script src="javascripts/bump/eventHandlers/formHandler.js"></script>
<script src="javascripts/bump/eventHandlers/testResultHandler.js"></script>
<script src="javascripts/bump/eventHandlers/navigationHandler.js"></script>
</html>