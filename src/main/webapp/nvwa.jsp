<%@ page import="org.springframework.web.context.WebApplicationContext" %>
<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils" %>
<%@ page import="java.util.HashMap" %>
<%@ page pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <%
        WebApplicationContext context = WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());
        HashMap systemConfig = (HashMap) context.getBean("systemConfig");
    %>
    <script type="text/javascript" charset="utf-8"
            preload="achy"
            debug="true"
            jsonp="true"
            nvwa-api=""
            src="<%=systemConfig.get("staticResourceUrl")%>/nvwa-loader-1.0.0.js?t=<%=System.currentTimeMillis()%>"></script>
</head>
<body>
<div style="position:fixed;top:0px;right:0px;bottom:0px;left:0px;background-color:#777;">
    <span>系统载入中......</span>
</div>
</body>
</html>
