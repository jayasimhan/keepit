<%--
  Created by IntelliJ IDEA.
  User: jay
  Date: 7/5/11
  Time: 10:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.google.appengine.api.*" %>
<%@ page import="com.google.appengine.api.users.UserServiceFactory" %>
<%@ page import="com.google.appengine.api.users.UserService" %>
<%@ page import="com.google.appengine.api.users.User" %>
<html>
  <head>
      <title>Welcome to Indi Weds. A site for the singles, by the singles.</title>
  </head>

  <body>
  <h1>Welcome to Indi Weds. A site for the singles, by the singles.</h1>
<%
UserService userService = UserServiceFactory.getUserService();
    User user = userService.getCurrentUser();
%>
  <div>Hello, <%= user.getNickname()%> + "<a href="<%= userService.createLogoutURL("/login")%>">Sign out</a></div>
  <input type="button" id="clicker" value="click for welcome msg"/>

  </body>
  <script src="js/main.js" language="JavaScript" type="text/javascript"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" language="JavaScript" type="text/javascript"></script>
  <script src="js/init.js" language="JavaScript" type="text/javascript"></script>
</html>