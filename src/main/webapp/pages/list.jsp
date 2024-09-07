<%@ taglib uri="/struts-tags" prefix="s" %>

<html>
<head>
    <title>Employee List</title>
</head>
<body>

<h2>Employee List</h2>

<!-- Link to create a new employee -->
<s:a href="edit">Add New Employee</s:a>

<!-- Employee table -->
<table border="1">
    <thead>
    <tr>
        <th>Name</th>
        <th>Department</th>
        <th>Email</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <s:iterator value="employeeList">
        <tr>
            <td><s:property value="name" /></td>
            <td><s:property value="department" /></td>
            <td><s:property value="email" /></td>
            <td>
                <!-- Edit link -->
                <s:a href="edit?id=%{id}">Edit</s:a>

                <!-- Delete link -->
                <s:a href="delete?id=%{id}" onclick="return confirm('Are you sure you want to delete?')">Delete</s:a>
            </td>
        </tr>
    </s:iterator>
    </tbody>
</table>

</body>
</html>
