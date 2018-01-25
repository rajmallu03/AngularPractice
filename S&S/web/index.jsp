<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="false"%>
<html>
<head>
	<title>Front Screen</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources/screen1/styles/welcome_style.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<%--<jsp:include page="menu.jsp"/>--%>
<div class="row">
	<div class="col-sm-12">

<div class="row">
	<div class="col-sm-2"></div>

	<div class="col-sm-3">
		<img src="images/ticket.png" class="img-responsive" id="img1" onClick="window.location.href='sampleController.htm?action=showusercreationlogin';"/></a>
	</div>

	<div class="col-sm-2"></div>

	<div class="col-sm-2">
		<img src="images/admin.png" class="img-responsive" id="img2" onClick="window.location.href='sampleController.htm?action=showadminlogin';"/><h4 id="txt1">Admin</h4>

	</div>
	<div class="col-sm-2">
		<img src="images/sales_agent.png" class="img-responsive" id="img3" onClick="window.location.href='sampleController.htm?action=showsalesagentlogin';"/>
			<h4 id="txt2">Sales Agent</h4></a>
	</div>

	<div class="col-sm-1"></div>


</div>


<div class="row">
	<div class="col-sm-2"></div>

	<div class="col-sm-3">
	<p>www.seatsandshows.com</p>
    </div>

	<div class="col-sm-2"></div>

	<div class="col-sm-3">
	<p>S and S onboarding.com</p>
    </div>


	<div class="col-sm-2"></div>

</div>
	</div>
</div>
</body>
</html>