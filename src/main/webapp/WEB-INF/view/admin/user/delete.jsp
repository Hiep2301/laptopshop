<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Delete user</title>
                <jsp:include page="/WEB-INF/include/common_css.jsp" />

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-12 col-md-6 mx-auto">
                            <h3>Delete user with id ${id}</h3>
                            <hr>
                            <div class="alert alert-danger">
                                Are you sure you want to delete this user?
                            </div>
                            <form:form method="post" action="/admin/user/delete" modelAttribute="user">
                                <form:hidden path="id" />
                                <button type="submit" class="btn btn-danger">Delete</button>
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