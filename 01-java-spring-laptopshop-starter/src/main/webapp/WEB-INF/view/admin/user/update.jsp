<%@page contentType="text/html" pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />

        <title>SB Admin 2 - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link
            href="/vendor/fontawesome-free/css/all.min.css"
            rel="stylesheet"
            type="text/css" />
        <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet" />

        <!-- Custom styles for this template-->
        <link href="/css/sb-admin-2.min.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script>
            $(document).ready(() => {
                const avatarFile = $('#avatarFile');
                avatarFile.change(function (e) {
                    const imgURL = URL.createObjectURL(e.target.files[0]);
                    $('#avatarPreview').attr('src', imgURL);
                    $('#avatarPreview').css({ display: 'block' });
                });
            });
        </script>
    </head>

    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
            <!-- Sidebar -->
            <jsp:include page="../layout/sidebar.jsp" />
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <!-- Topbar -->
                    <jsp:include page="../layout/header.jsp" />
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <main>
                        <div class="container-fluid px-4">
                            <h1 class="mt-4">Manage Users</h1>
                            <ol class="breadcrumb mb-4">
                                <li class="breadcrumb-item">
                                    <a href="/admin/user">Table User</a>
                                </li>
                                <li class="breadcrumb-item active">
                                    Update User
                                </li>
                            </ol>
                            <div class="col-md-6 col-12 mx-auto">
                                <div class="row">
                                    <div class="container mt-5">
                                        <div class="row">
                                            <div class="col-12 mx-auto">
                                                <h3>Update a user</h3>
                                                <hr />
                                                <form:form
                                                    method="post"
                                                    action="/admin/user/update"
                                                    modelAttribute="newUser">
                                                    <div
                                                        class="mb-3"
                                                        style="display: none">
                                                        <label
                                                            class="form-label"
                                                            >ID:
                                                        </label>
                                                        <form:input
                                                            type="text"
                                                            class="form-control"
                                                            path="id" />
                                                    </div>
                                                    <div class="mb-3">
                                                        <label
                                                            class="form-label"
                                                            >Email:
                                                        </label>
                                                        <form:input
                                                            type="email"
                                                            class="form-control"
                                                            path="email"
                                                            disabled="true" />
                                                    </div>

                                                    <div class="mb-3">
                                                        <label
                                                            class="form-label"
                                                            >Phone number:
                                                        </label>
                                                        <form:input
                                                            path="phone"
                                                            type="number"
                                                            class="form-control" />
                                                    </div>
                                                    <div class="mb-3">
                                                        <label
                                                            class="form-label"
                                                            >Full name:
                                                        </label>
                                                        <form:input
                                                            path="fullName"
                                                            type="text"
                                                            class="form-control" />
                                                    </div>
                                                    <div class="mb-3">
                                                        <label
                                                            class="form-label"
                                                            >Address:
                                                        </label>
                                                        <form:input
                                                            path="address"
                                                            type="text"
                                                            class="form-control" />
                                                    </div>

                                                    <button
                                                        type="submit"
                                                        class="btn btn-warning">
                                                        Update
                                                    </button>
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </main>
                    <!-- /.container-fluid -->
                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <jsp:include page="../layout/footer.jsp" />
                <!-- End of Footer -->
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div
            class="modal fade"
            id="logoutModal"
            tabindex="-1"
            role="dialog"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">
                            Ready to Leave?
                        </h5>
                        <button
                            class="close"
                            type="button"
                            data-dismiss="modal"
                            aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Select "Logout" below if you are ready to end your
                        current session.
                    </div>
                    <div class="modal-footer">
                        <button
                            class="btn btn-secondary"
                            type="button"
                            data-dismiss="modal">
                            Cancel
                        </button>
                        <a class="btn btn-primary" href="login.html">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="/vendor/jquery/jquery.min.js"></script>

        <script src="/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="/js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="/vendor/chart.js/Chart.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="/js/demo/chart-area-demo.js"></script>
        <script src="/js/demo/chart-pie-demo.js"></script>
    </body>
</html>
