<%@page import="Controllers.CreateTST"%>
<%@include file="init.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Search Engine</title>
<%
	CreateTST.initTrie();
%>

</head>
<body class="home">
	<div>
		<div class="home_wrapper">
			<div class="animate form home_form">
				<section class="home_content" style="width: 700px">
					<form name="searchForm"
						action="${pageContext.request.contextPath}/JSP/Controller.jsp"
						id="homeForm" method="post">
						<h1>Search Engine</h1>
						<div class="search-section">
							<input type="text" class="form-control" name="query"
								id="query" placeholder="Search..." autocomplete='off' />
						</div>
						<div>
						<button id="spellCheck" type="button"
								class="btn btn-lg btn-success submit" name="submit" value="Spell Check">
								<i class="fa fa-check" aria-hidden="true"></i>
								Spelling Check</button>
								
						<button id="searchButton" type="submit"
								class="btn btn-lg btn-primary submit" name="submit" value="search">
								<i class="fa fa-search" aria-hidden="true"></i>
								Search</button>
							
						</div>
						<div class="separator">
							<br />
						</div>
					</form>
				</section>
			</div>
		</div>
	</div>
	<script type="text/javascript">
	$("#spellCheck").click(function() {
		var data = $("#query").val();
		checkSpelling(data);
	});

	function checkSpelling(word) {
		var str = "";
		var url = 'http://localhost:8080/Search Engine/JSP/spellCheck.jsp?word=' + word;
		window.open(url, '_blank');
		win.focus();
	}

		$("#query").autocomplete("./JSP/getdata.jsp", {
			extraParams : {
				filter : document.getElementById("query").value
			}
		});
	</script>
</body>
</html>