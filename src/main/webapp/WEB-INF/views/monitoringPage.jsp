<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 2019/4/19
  Time: 4:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>监控页面</title>
</head>
<body>
<pre>
    <%
    for (Map.Entry<Thread ,StackTraceElement[]> stackTrace : Thread.getAllStackTraces().entrySet()){
        Thread thread = stackTrace.getKey();
        StackTraceElement[] stack = stackTrace.getValue();
        if (thread.equals(Thread.currentThread())){
            continue;
        }
        out.print("\n线程" + thread.getName() + "\n");
        for (StackTraceElement element : stack){
            out.print("\t" + element + "\n");
        }

    }
    %>
</pre>
</body>
</html>
