<%-- 
    Document   : hello
    Created on : 12 Jan, 2013, 9:20:14 PM
    Author     : tarun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/default.css" />
        <script src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/Markdown.Converter.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/js/Markdown.Converter.js" type="text/javascript"></script>
        <title>JSP Page</title>       
    <script type="text/javascript">
        $(document).ready(function(){
            var div=$("#divmsg");
            var msg=div.html();
            var converter = new Markdown.Converter();
                
            div.html(converter.makeHtml(msg));
            hljs.initHighlightingOnLoad();
        });
        
  </script>
    </head>
    <body>
        <h1>Hello World!</h1>
        <div id="divmsg">${message}</div>
    </body>
  
</html>
