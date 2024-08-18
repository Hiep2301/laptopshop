<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Document</title>
            <jsp:include page="/WEB-INF/include/common_css.jsp" />
            <link rel="stylesheet" href="/css/style.css" />
        </head>

        <body>
            <h1>Hello</h1>
            <div>${users}</div>
            <button>Submit</button>

            <jsp:include page="/WEB-INF/include/common_js.jsp" />
        </body>

        </html>