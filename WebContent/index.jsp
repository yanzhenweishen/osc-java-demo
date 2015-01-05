<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.File" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>
<%@ page import="javax.servlet.ServletException" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Git@OSC项目演示平台 - JavaWeb</title>
</head>
<body>
<div style='margin:0 auto;width:980px;display: block;word-break: break-all;'>
<h2>Git@OSC项目演示平台 - JavaWeb</h2>
<p>这是Git@OSC项目演示平台用来展示Javaweb项目的例子</p><br />
<p>项目地址：<a href='http://git.oschina.net/zhoukaizhoukai/osc-java-demo'>http://git.oschina.net/zhoukaizhoukai/osc-java-demo</a></p><br />
<a href='#env'>环境变量</a><br />
<iframe src='http://git.oschina.net/paas_demo.html'></iframe>
<p name = 'env'>---------------------System Environments----------------------</p><br /><br />
<%
  Map<String, String> m = System.getenv();
        for ( Iterator<String> it = m.keySet().iterator(); it.hasNext(); )
        {
               String key = (String ) it.next();
               String value = (String )  m.get(key);
               writer.println(key + " : \t" + value);
               writer.println("<br />");
        }
%>
</div>
</body>
</html>
