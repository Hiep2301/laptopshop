<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Product</title>
            <jsp:include page="/WEB-INF/include/common_css.jsp" />
            <link rel="stylesheet" href="/css/style.css">
        </head>


        <body class="sb-nav-fixed">
            <jsp:include page="/WEB-INF/view/admin/layout/header.jsp" />

            <div id="layoutSidenav">
                <jsp:include page="/WEB-INF/view/admin/layout/sidebar.jsp" />

                <div id="layoutSidenav_content">
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Manage Products</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item active"><a href="/admin">Dashboard</a> / Products</li>
                            </ol>

                            <div class="mt-5"></div>
                        </div>
                    </main>

                    <jsp:include page="/WEB-INF/view/admin/layout/footer.jsp" />
                </div>
            </div>

            <jsp:include page="/WEB-INF/include/common_js.jsp" />
            <script src="/js/scripts.js"></script>
        </body>

        </html>