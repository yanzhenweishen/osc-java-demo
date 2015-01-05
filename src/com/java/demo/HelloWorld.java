package com.java.demo;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public HelloWorld() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");
		PrintWriter writer = response.getWriter();
        writer.println("<div style='margin:0 auto;width:980px;display: block;word-break: break-all;'>");
        writer.println("<h2>Git@OSC项目演示平台 - JavaWeb</h2>");
        writer.println("<p>这是Git@OSC项目演示平台用来展示Javaweb项目的例子</p><br /><p>项目地址：<a href='http://git.oschina.net/zhoukaizhoukai/osc-java-demo'>http://git.oschina.net/zhoukaizhoukai/osc-java-demo</a></p><br /><br />");
		writer.println("---------------------System Environments----------------------");
		writer.println("<br /><br />");
		Map<String, String> m = System.getenv();
        for ( Iterator<String> it = m.keySet().iterator(); it.hasNext(); )
        {
               String key = (String ) it.next();
               String value = (String )  m.get(key);
               writer.println(key + " : \t" + value);
               writer.println("<br />");
        }
        writer.println("</div>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}