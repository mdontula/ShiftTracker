
<%@ include file="includeTaglib.jsp"%>
<div id="main">

	<a name="TemplateInfo"></a>
	<h1>
	Login User</h1>
	<form:form modelAttribute="userDetailsVB">
		<form:label path="userName">User Name</form:label>
		<form:input path="userName" />
		<br />
		<form:label path="password">Password</form:label>
		<form:input path="password" />
		<br />
		
		<p>
			<input type="submit" value="Sign In" />
		</p>
	</form:form>
</div>