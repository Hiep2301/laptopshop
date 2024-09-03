<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Table Users</title>
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
                                <h1 class="mt-4">Manage Users</h1>
                                <ol class="breadcrumb mb-4">
                                    <li class="breadcrumb-item active"><a href="/admin">Dashboard</a> / Users</li>
                                </ol>

                                <div class="mt-5">
                                    <div class="row">
                                        <div class="col-12 mx-auto">
                                            <div class="d-flex justify-content-between align-items-center">
                                                <h3>Table Users</h3>
                                                <a href="/admin/user/create" class="btn btn-primary">Create a user</a>
                                            </div>
                                            <hr>
                                            <table class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>Email</th>
                                                        <th>Full Name</th>
                                                        <th>Phone Number</th>
                                                        <th>Address</th>
                                                        <th>Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:if test="${not empty users}">
                                                        <!-- Nếu danh sách users không rỗng, hiển thị bảng -->
                                                        <c:forEach items="${users}" var="user">
                                                            <tr>
                                                                <td>${user.email}</td>
                                                                <td>${user.fullName}</td>
                                                                <td>${user.phoneNumber}</td>
                                                                <td>${user.address}</td>
                                                                <td>
                                                                    <a href="/admin/user/${user.id}"
                                                                        class="btn btn-success">View</a>
                                                                    <a href="/admin/user/update/${user.id}"
                                                                        class="btn btn-warning">Update</a>
                                                                    <a href="/admin/user/delete/${user.id}"
                                                                        class="btn btn-danger">Delete</a>
                                                                </td>
                                                            </tr>
                                                        </c:forEach>
                                                    </c:if>

                                                    <c:if test="${empty users}">
                                                        <!-- Nếu danh sách users rỗng, hiển thị thông báo không có dữ liệu -->
                                                        <tr>
                                                            <td colspan="5" class="text-center">No user found</td>
                                                        </tr>
                                                    </c:if>
                                                </tbody>
                                            </table>
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