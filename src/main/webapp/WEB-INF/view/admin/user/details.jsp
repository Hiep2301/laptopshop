<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>User details ${id}</title>
                <jsp:include page="/WEB-INF/include/common_css.jsp" />

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12 col-md-6 mx-auto">
                            <h3>User details with id ${id}</h3>
                            <hr>

                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email" value="${user.email}"
                                    readonly />
                            </div>

                            <div class="mb-3">
                                <label for="fullName" class="form-label">Full Name</label>
                                <input type="text" class="form-control" id="fullName" name="fullName"
                                    value="${user.fullName}" readonly />
                            </div>

                            <div class="mb-3">
                                <label for="phoneNumber" class="form-label">Phone number</label>
                                <input type="text" class="form-control" id="phoneNumber" name="phoneNumber"
                                    value="${user.phoneNumber}" readonly />
                            </div>

                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <input type="text" class="form-control" id="address" name="address"
                                    value="${user.address}" readonly />
                            </div>

                            <a href="/admin/user" class="btn btn-dark">Back</a>
                        </div>
                    </div>
                </div>

                <jsp:include page="/WEB-INF/include/common_js.jsp" />
                <script>
                    $(document).ready(function () { });
                </script>
            </body>

            </html>