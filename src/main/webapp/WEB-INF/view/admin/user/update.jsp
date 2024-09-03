<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Update user</title>
                <jsp:include page="/WEB-INF/include/common_css.jsp" />

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12 col-md-6 mx-auto">
                            <h3>Update user with id ${id}</h3>
                            <hr>
                            <form:form method="post" action="/admin/user/update" modelAttribute="user">
                                <form:hidden path="id" />
                                <div class="mb-3">
                                    <label for="email" class="form-label">Email</label>
                                    <form:input type="email" class="form-control" id="email" name="email" path="email"
                                        disabled="true" />
                                </div>

                                <div class="mb-3">
                                    <label for="fullName" class="form-label">Full Name</label>
                                    <form:input type="text" class="form-control" id="fullName" name="fullName"
                                        path="fullName" />
                                </div>

                                <div class="mb-3">
                                    <label for="phoneNumber" class="form-label">Phone number</label>
                                    <form:input type="text" class="form-control" id="phoneNumber" name="phoneNumber"
                                        path="phoneNumber" />
                                </div>

                                <div class="mb-3">
                                    <label for="address" class="form-label">Address</label>
                                    <form:input type="text" class="form-control" id="address" name="address"
                                        path="address" />
                                </div>

                                <button type="submit" class="btn btn-primary">Update</button>
                            </form:form>
                        </div>
                    </div>
                </div>

                <jsp:include page="/WEB-INF/include/common_js.jsp" />
                <script>
                    $(document).ready(function () { });
                </script>
            </body>

            </html>