<%@ include file="includeTaglib.jsp"%>
<div id="main">

	<a name="TemplateInfo"></a>
	<h1>Search Results</h1>
	<code>
	<center>
	<table border="1" bordercolor="green">
		<tr>
			<td>Patient ID</td>
			<td>Patient Name</td>
			<td>Patient Age</td>
			<td>Patient sex</td>
			<td>Patient Date</td>
			<td>Ref by dr</td>
		</tr>
		<c:forEach var="patient" items="${patientList}">
			<tr>
				<td>${patient.id}</td>
				<td><a href="userdetails.do?patientid=${patient.id}">${patient.name}</a></td>
				<td>${patient.age}</td>
				<td>${patient.sex}</td>
				<td>${patient.created_date}</td>
				<td>${patient.ref_by_dr}</td>
			</tr>

		</c:forEach>


	</table>
</center>

</code>

</div>