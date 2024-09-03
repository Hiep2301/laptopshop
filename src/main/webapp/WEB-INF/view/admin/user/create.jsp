<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Create user</title>
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
                                <h1 class="mt-4">Create user</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a> / Users</li>
                                </ol>

                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-12 col-md-6 mx-auto">
                                            <form:form method="post" action="/admin/user/create"
                                                modelAttribute="newUser">
                                                <div class="mb-3">
                                                    <label for="email" class="form-label">Email</label>
                                                    <form:input type="email" class="form-control" id="email"
                                                        name="email" path="email" />
                                                </div>

                                                <div class="mb-3">
                                                    <label for="password" class="form-label">Password</label>
                                                    <form:input type="password" class="form-control" id="password"
                                                        name="password" path="password" />
                                                </div>

                                                <div class="mb-3">
                                                    <label for="fullName" class="form-label">Full Name</label>
                                                    <form:input type="text" class="form-control" id="fullName"
                                                        name="fullName" path="fullName" />
                                                </div>

                                                <div class="mb-3">
                                                    <label for="phoneNumber" class="form-label">Phone number</label>
                                                    <form:input type="text" class="form-control" id="phoneNumber"
                                                        name="phoneNumber" path="phoneNumber" />
                                                </div>

                                                <div class="mb-3">
                                                    <label for="address" class="form-label">Address</label>
                                                    <form:input type="text" class="form-control" id="address"
                                                        name="address" path="address" />
                                                </div>

                                                <button type="submit" class="btn btn-primary">Create</button>
                                            </form:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </main>

                        <jsp:include page="/WEB-INF/view/admin/layout/footer.jsp" />
                    </div>
                </div>

                <jsp:include page="/WEB-INF/include/common_js.jsp" />
                <script src="/js/scripts.js"></script>
            </body>

            </html>