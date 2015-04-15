<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
	<head>
		<title> <tiles:insertAttribute name="title" /> </title>
		
		<link rel="stylesheet" href="images/jquery-ui.css" type="text/css" />
		<link rel="shortcut icon" href="images/favicon.ico" />
		<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui.js"></script>
	</head>
	<body>
		<!-- Wrapper -->
		<div id="mainWrapper">
			
			<header>
				<tiles:insertAttribute name="header" />
				<nav>
					<tiles:insertAttribute name="menu" />
				</nav>
			</header>

			<div id="bd">
				<div id="contentWrapper">
					<tiles:insertAttribute name="body" />
				</div>
				<footer>
					<tiles:insertAttribute name="footer" />
				</footer>
			</div>
		
		</div>
		<tiles:insertAttribute name="css" />
	</body>
</html>

