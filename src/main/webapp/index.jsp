<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/11/26
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index page</title>
    <script src="js/jquery-1.12.3.js"></script>
    <script>
        $(function () {
            $('#email').blur(function () {
                var email = $(this).val();
                $.ajax({
                    url: '/user',
                    data: {'action': 'isEmailExisted', 'email': email},
                    success: function (result) {
                        if (result == 'true') {
                            $('#hint').text('email existed').css('color', '#f00');
                        } else {
                            $('#hint').text('email not exist').css('color', '#0f0');
                        }
                    }
                });
            });
        });
    </script>
</head>
<body>
<h1>index page</h1>
<form action="" method="post">
    <input id="email" type="text" name="email" placeholder="EMAIL" value="tester@test.com">
    <small id="hint"></small>
    <br>
    <input type="password" name="password" placeholder="PASSWORD"><br>
    <input type="submit" value="SIGN UP">
</form>
</body>
</html>
