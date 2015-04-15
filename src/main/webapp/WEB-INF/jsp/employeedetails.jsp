<%@ include file="includeTaglib.jsp"%>
<div id="main">

	<a name="TemplateInfo"></a>
	<h1>Employee Details</h1>
	<code>
	<center>
	<table border="1" bordercolor="green">
		<tr>
			<td>Employee ID</td>
			<td>Employee Name</td>
			<td>Project</td>
			<td>Team </td>
		</tr>
		<c:forEach var="employee" items="${empDetails}">
			<tr>
				<td>${employee.empId}</td>
				<td>${employee.employeeName}</td>
				<td>${employee.project}</td>
				<td>${employee.team}</td>
			</tr>

		</c:forEach>


	</table>
</center>

</code>

</div>