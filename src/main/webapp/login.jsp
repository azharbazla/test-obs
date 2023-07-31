<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Result</title>
</head>
<body>
<div class="login-container">
    <%
        String[][] studentDetails = {
                {"Dep 1", "S1", "35", ""},
                {"Dep 1", "S2", "70", ""},
                {"Dep 1", "S3", "60", ""},
                {"Dep 1", "S4", "90", ""},
                {"Dep 2", "S5", "30", ""},
                {"Dep 3", "S6", "32", ""},
                {"Dep 3", "S7", "70", ""},
                {"Dep 3", "S8", "20", ""}
        };
        String validUsername = "admin";
        String validPassword = "admin123";

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null && password != null) {
            if (username.equals(validUsername) && password.equals(validPassword)) {
                System.out.println("<h2>Login successful!</h2>");
            } else {
                System.out.println("<h2>Login failed. Invalid credentials.</h2>");
            }
        } else {
            System.out.println("<h2>Please enter your username and password.</h2>");
        }

        for (int i = 0; i < studentDetails.length; i++) {
            String marksStr = studentDetails[i][2];
            int marks = Integer.parseInt(marksStr);
            studentDetails[i][3] = marks >= 40 ? "Pass" : "Fail";
        }
    %>
    <h2>Welcome <%= username %></h2>
    <table>
        <tr>
            <th>Department</th>
            <th>Student ID</th>
            <th>Marks</th>
            <th>Pass %</th>
        </tr>
    </table>
</div>
</body>
</html>