<%@ taglib uri="/struts-tags" prefix="s" %>

<html>
<head>
    <title>Employee Form</title>
</head>
<body>

<h2>Employee Form</h2>

<s:form action="saveOrUpdate" method="post">
    <!-- Hidden field for the ID (needed for edit) -->
    <s:hidden name="employee.id" />

    <!-- Input fields for employee details -->
    <label for="name">Name:</label>
    <s:textfield name="employee.name" value="%{employee.name}" />

    <label for="department">Department:</label>
    <s:textfield name="employee.department" value="%{employee.department}" />

    <label for="email">Email:</label>
    <s:textfield name="employee.email" value="%{employee.email}" />

    <!-- Submit button to save or update -->
    <s:submit value="Save/Update" />

    <!-- Cancel button to return to list -->
    <s:a href="list">Cancel</s:a>
</s:form>

</body>
</html>
