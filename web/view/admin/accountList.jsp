<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 2 | Blank Page</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/bootstrap2.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/asset/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href=".${pageContext.request.contextPath}/asset/css/skins/_all-skins.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

        <style type="text/css">
            .body {
                margin-top: 20px;
                background: #f8f8f8
            }
            .thumbnail-img {
                width: 300px; /* Adjust the width as needed */
                height: auto;
                max-height: 100px !important; /* Adjust the max-height as needed */
                object-fit: cover;
            }

            .align-middle img {
                max-width: 100%;
                max-height: 100px;
            }
            .form-container {
                background: #fff;
                padding: 30px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .form-group {
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <!-- Site wrapper -->
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="../../index2.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>A</b>LT</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Admin</b>LTE</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success">4</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 4 messages</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li><!-- start message -->
                                                <a href="#">
                                                    <div class="pull-left">
                                                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                                                    </div>
                                                    <h4>
                                                        Support Team
                                                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                                    </h4>
                                                    <p>Why not buy a new awesome theme?</p>
                                                </a>
                                            </li>
                                            <!-- end message -->
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">See All Messages</a></li>
                                </ul>
                            </li>
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">10</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 10 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer"><a href="#">View all</a></li>
                                </ul>
                            </li>
                            <!-- Tasks: style can be found in dropdown.less -->
                            <li class="dropdown tasks-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-flag-o"></i>
                                    <span class="label label-danger">9</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 9 tasks</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li><!-- Task item -->
                                                <a href="#">
                                                    <h3>
                                                        Design some buttons
                                                        <small class="pull-right">20%</small>
                                                    </h3>
                                                    <div class="progress xs">
                                                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">20% Complete</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <!-- end task item -->
                                        </ul>
                                    </li>
                                    <li class="footer">
                                        <a href="#">View all tasks</a>
                                    </li>
                                </ul>
                            </li>
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="../../dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <span class="hidden-xs">Alexander Pierce</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                        <p>
                                            Alexander Pierce - Web Developer
                                            <small>Member since Nov. 2012</small>
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <li class="user-body">
                                        <div class="row">
                                            <div class="col-xs-4 text-center">
                                                <a href="#">Followers</a>
                                            </div>
                                            <div class="col-xs-4 text-center">
                                                <a href="#">Sales</a>
                                            </div>
                                            <div class="col-xs-4 text-center">
                                                <a href="#">Friends</a>
                                            </div>
                                        </div>
                                        <!-- /.row -->
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="#" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- =============================================== -->

            <!-- Left side column. contains the sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>Alexander Pierce</p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li>
                            <a href="AdminDashBoard">
                                <i class="fa fa-th"></i> <span>Dashboard</span>
                            </a>
                        </li>
                        <li>
                            <a href="AccountList">
                                <i class="fa fa-th"></i> <span>Account List</span>
                            </a>
                        </li>
                        <li>
                            <a href="CustomerList">
                                <i class="fa fa-th"></i> <span>Customer List</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- =============================================== -->

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <h1>
                                Dashboard
                                <small>it all starts here</small>
                            </h1>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                                <li class="breadcrumb-item"><a href="#">Examples</a></li>
                                <li class="breadcrumb-item active">Blank page</li>
                            </ol>
                        </div>
                        <a href="AddAccount" class="btn btn-outline-primary btn-sm btn-add-product">
                            <i class="fa fa-plus"></i> Add Account
                        </a>
                    </div>
                </section>
                <!-- Main content -->
                <section class="content">
                    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
                    <div class="container" style="max-width: 100%">
                        <div class="row flex-lg-nowrap">
                            <div class="col">
                                <div class="row flex-lg-nowrap">
                                    <div class="col">
                                        <div class="e-table">
                                            <div class="table table-lg">
                                                <table class="table table-bordered" style="width: 100%">
                                                    <thead>
                                                        <tr>
                                                            <th class="align-middle">ID</th>
                                                            <th class="align-middle">Image</th>
                                                            <th class="align-middle">Name</th>
                                                            <th class="align-middle">Gender</th>
                                                            <th class="align-middle">Email</th>
                                                            <th class="align-middle">Mobile</th>
                                                            <th class="align-middle">Role</th>
                                                            <th class="align-middle">Status</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <c:forEach items="${listAccount}" var="l">
                                                            <tr>
                                                                <td class="align-middle" name="id">${l.accountID}</td>
                                                                <td class="align-middle text-center" style="max-width: 150px" name="image">
                                                                    <div class="bg-light d-inline-flex justify-content-center align-items-center align-top">
                                                                        <img class="thumbnail-img" id="${l.accountID}" style="max-width: 100%; max-height: 100%;" src="${l.image}">
                                                                    </div>
                                                                </td>
                                                                <td class="align-middle" style="white-space: normal;" name="name">${l.name}</td>
                                                                <td class="align-middle" name="gender">
                                                                    <c:choose>
                                                                        <c:when test="${l.gender == 2}">Women</c:when>
                                                                        <c:when test="${l.gender == 1}">Men</c:when>
                                                                        <c:when test="${l.gender == 0}">Other</c:when>
                                                                        <c:otherwise>Unknown</c:otherwise>
                                                                    </c:choose>
                                                                </td>
                                                                <td class="align-middle" name="email">${l.email}</td>
                                                                <td class="align-middle" name="mobile">${l.phone}</td>
                                                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                                                        <td class="align-middle" name="role">
                                                            <form id="updateRoleForm-${l.accountID}">
                                                                <select name="roleID" onchange="updateRole(${l.accountID}, this.value)">
                                                                    <c:forEach items="${listRole}" var="role">
                                                                        <c:if test="${role.roleID != 5}">
                                                                            <option value="${role.roleID}" 
                                                                                    <c:if test="${role.roleID == l.role.roleID}">selected</c:if>>
                                                                                ${role.name}
                                                                            </option>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                </select>
                                                                <input type="hidden" name="accountID" value="${l.accountID}" />
                                                            </form>

                                                        </td>

                                                        <script>
                                                            function updateRole(accountID, roleID) {
                                                                $.ajax({
                                                                    url: 'AccountList?action=updateRole',
                                                                    type: 'POST',
                                                                    data: {
                                                                        accountID: accountID,
                                                                        roleID: roleID
                                                                    },
                                                                    success: function (response) {
                                                                        // Xử lý phản hồi thành công (nếu cần)
                                                                        console.log('Role updated successfully.');
                                                                    },
                                                                    error: function (xhr, status, error) {
                                                                        // Xử lý lỗi (nếu cần)
                                                                        console.error('Error updating role: ' + error);
                                                                    }
                                                                });
                                                            }
                                                        </script>

                                                        <form action="AccountList" method="POST">
                                                            <td class="text-center align-middle" name="status" data-status="${l.status}">
                                                                <i class="fa cursor-pointer
                                                                   <c:choose>
                                                                       <c:when test="${l.status eq 1}">fa-toggle-on text-secondary</c:when>
                                                                       <c:otherwise>fa-toggle-off</c:otherwise>
                                                                   </c:choose>"
                                                                   data-id="${l.accountID}" 
                                                                   data-status="${l.status}" 
                                                                   onclick="toggleStatus(this)">
                                                                </i>
                                                            </td>
                                                        </form>
                                                        <td class="text-center align-middle">
                                                            <div class="btn-group align-top">
                                                                <a href="AccountDetail?accountID=${l.accountID}" class="btn btn-sm btn-outline-secondary badge">
                                                                    <i class="fa-regular fa-eye"></i> View
                                                                </a>
                                                            </div>
                                                        </td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="d-flex justify-content-center">
                                                <ul class="pagination mt-3 mb-0">
                                                    <c:forEach begin="1" end="${pageControl.totalPage}" var="pageNumber">
                                                        <li class="page-item"><a href="${pageControl.urlPattern}page=${pageNumber}" class="page-link">${pageNumber}</a></li>
                                                        </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="container mt-5" style="max-width: 100%">
                                        <div class="row">
                                            <!-- Search và Sort Section -->
                                            <div class="col-lg-6 col-md-12 mb-3">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="form-container">
                                                            <form action="AccountList" method="GET">
                                                                <input type="hidden" name="action" value="searchUsers">
                                                                <!-- Search Section -->
                                                                <div class="form-group">
                                                                    <label for="searchInput">Search (Name, Mobile, Email): </label>
                                                                    <div class="input-group">
                                                                        <input type="text" id="searchInput" class="form-control" placeholder="Search" name="search">
                                                                        <div class="input-group-append" style="display: flex;">
                                                                            <button class="btn btn-outline-secondary" type="submit">
                                                                                <i class="fas fa-search"></i>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </form>
                                                            <form id="sortForm" action="AccountList" method="GET">
                                                                <!-- Sort Section -->
                                                                <div class="form-group">
                                                                    <label for="sortSelect">Sort:</label>
                                                                    <select id="sortSelect" class="form-control" name="sort" onchange="document.getElementById('sortForm').submit();">
                                                                        <option value="sort" <%= "sort".equals(request.getParameter("sort")) ? "selected" : "" %>>Sort by ....</option>
                                                                        <option value="id" <%= "id".equals(request.getParameter("sort")) ? "selected" : "" %>>Sort by Account ID</option>
                                                                        <option value="name" <%= "name".equals(request.getParameter("sort")) ? "selected" : "" %>>Sort by Name</option>
                                                                        <option value="gender" <%= "gender".equals(request.getParameter("sort")) ? "selected" : "" %>>Sort by Gender</option>
                                                                        <option value="role" <%= "role".equals(request.getParameter("sort")) ? "selected" : "" %>>Sort by Role</option>
                                                                        <option value="email" <%= "email".equals(request.getParameter("sort")) ? "selected" : "" %>>Sort by Email</option>
                                                                        <option value="status" <%= "status".equals(request.getParameter("sort")) ? "selected" : "" %>>Sort by Status</option>
                                                                    </select>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Filter Section -->
                                            <div class="col-lg-6 col-md-12 mb-3">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="form-container">
                                                            <form action="AccountList" method="GET">
                                                                <input type="hidden" name="action" value="filterAccount">
                                                                <!-- Role Filter Section -->
                                                                <div class="form-group">
                                                                    <label for="roleSelect">Role:</label>
                                                                    <select id="roleSelect" class="form-control" name="role">
                                                                        <option value="">Select Role</option>
                                                                        <c:forEach items="${listRole}" var="role">
                                                                            <c:if test="${role.roleID != 5}">
                                                                                <option value="${role.roleID}">${role.name}</option>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                    </select>
                                                                </div>
                                                                <!-- Gender Filter Section -->
                                                                <div class="form-group">
                                                                    <label for="genderSelect">Gender:</label>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="2">
                                                                        <label class="form-check-label" for="genderFemale">Women</label>
                                                                    </div>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" name="gender" id="genderMale" value="1">
                                                                        <label class="form-check-label" for="genderMale">Men</label>
                                                                    </div>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" name="gender" id="genderOther" value="0">
                                                                        <label class="form-check-label" for="genderOther">Other</label>
                                                                    </div>
                                                                </div>
                                                                <!-- Status Filter Section -->
                                                                <div class="form-group">
                                                                    <label>Status:</label>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" name="status" id="statusActive" value="active">
                                                                        <label class="form-check-label" for="statusActive">Active</label>
                                                                    </div>
                                                                    <div class="form-check">
                                                                        <input class="form-check-input" type="radio" name="status" id="statusInactive" value="inactive">
                                                                        <label class="form-check-label" for="statusInactive">Inactive</label>
                                                                    </div>
                                                                </div>
                                                                <button type="submit" class="btn btn-primary btn-block">Filter</button>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>

                            </div>


                        </div>


                        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>


                        <script type="text/javascript">

                        </script>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 2.3.12
                </div>
                <strong>Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights
                reserved.
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>

                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- Home tab content -->
                    <div class="tab-pane" id="control-sidebar-home-tab">
                        <h3 class="control-sidebar-heading">Recent Activity</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                        <p>Will be 23 on April 24th</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-user bg-yellow"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Frodo Updated His Profile</h4>

                                        <p>New phone +1(800)555-1234</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Nora Joined Mailing List</h4>

                                        <p>nora@example.com</p>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <i class="menu-icon fa fa-file-code-o bg-green"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Cron Job 254 Executed</h4>

                                        <p>Execution time 5 seconds</p>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- /.control-sidebar-menu -->
                        <h3 class="control-sidebar-heading">Tasks Progress</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Custom Template Design
                                        <span class="label label-danger pull-right">70%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Update Resume
                                        <span class="label label-success pull-right">95%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-success" style="width: 95%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Laravel Integration
                                        <span class="label label-warning pull-right">50%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">
                                    <h4 class="control-sidebar-subheading">
                                        Back End Framework
                                        <span class="label label-primary pull-right">68%</span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- /.control-sidebar-menu -->

                    </div>
                    <!-- /.tab-pane -->
                    <!-- Stats tab content -->
                    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
                    <!-- /.tab-pane -->
                    <!-- Settings tab content -->
                    <div class="tab-pane" id="control-sidebar-settings-tab">
                        <form method="post">
                            <h3 class="control-sidebar-heading">General Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Report panel usage
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Some information about this general settings option
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Allow mail redirect
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Other sets of options are available
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Expose author name in posts
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Allow the user to show his name in blog posts
                                </p>
                            </div>
                            <!-- /.form-group -->

                            <h3 class="control-sidebar-heading">Chat Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Show me as online
                                    <input type="checkbox" class="pull-right" checked>
                                </label>
                            </div>
                            <!-- /.form-group -->

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Turn off notifications
                                    <input type="checkbox" class="pull-right">
                                </label>
                            </div>
                            <!-- /.form-group -->
                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Delete chat history
                                    <a href="javascript:void(0)" class="text-red pull-right"><i class="fa fa-trash-o"></i></a>
                                </label>
                            </div>
                            <!-- /.form-group -->
                        </form>
                    </div>
                    <!-- /.tab-pane -->
                </div>
            </aside>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->
        <script>
            function toggleStatus(icon) {
                // Lấy trạng thái hiện tại từ lớp của biểu tượng
                const currentClass = $(icon).hasClass('fa-toggle-on') ? 'fa-toggle-on' : 'fa-toggle-off';

                // Chuyển đổi trạng thái
                if (currentClass === 'fa-toggle-on') {
                    $(icon).removeClass('fa-toggle-on text-secondary').addClass('fa-toggle-off');
                } else {
                    $(icon).removeClass('fa-toggle-off').addClass('fa-toggle-on text-secondary');
                }

                // Gửi yêu cầu AJAX để cập nhật trạng thái trên máy chủ
                const accountID = $(icon).data('id');
                const newStatus = currentClass === 'fa-toggle-on' ? 0 : 1;

                $.ajax({
                    url: 'AccountList', // URL để xử lý yêu cầu cập nhật
                    type: 'POST',
                    data: {action: 'statusAccount', id: accountID, status: newStatus},
                    success: function (response) {
                        console.log('Status updated successfully');
                    },
                    error: function (xhr, status, error) {
                        console.error('Error updating status:', error);
                    }
                });
            }
        </script>
        <!-- jQuery 2.2.3 -->
        <script src="${pageContext.request.contextPath}/asset/js/jquery-2.2.3.min.js"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="${pageContext.request.contextPath}/asset/js/bootstrap2.min.js"></script>
        <!-- SlimScroll -->
        <script src="${pageContext.request.contextPath}/asset/js/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="${pageContext.request.contextPath}/asset/js/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="${pageContext.request.contextPath}/asset/js/app.min.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="${pageContext.request.contextPath}/asset/js/demo.js"></script>
    </body>
</html>