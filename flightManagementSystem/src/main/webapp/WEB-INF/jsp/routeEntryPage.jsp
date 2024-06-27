<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
<div class="pcoded-content">
    <!-- Page-header start -->
    <div class="page-header">
        <div class="page-block">
            <div class="row align-items-center">
                <div class="col-md-8">
                    <div class="page-header-title">
                        <h5 class="m-b-10">New Route Registry</h5>
                    </div>
                </div>
                <div class="col-md-4">
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="dashboard.php"> <i class="fa fa-home"></i> </a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!">Route</a>
                        </li>
                        <li class="breadcrumb-item"><a href="#!">Add Route</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Page-header end -->
    <div class="pcoded-inner-content">
        <!-- Main-body start -->
        <div class="main-body">
            <div class="page-wrapper">
                <div class="page-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5>Add Route</h5>
                                </div>
                                <div class="card-block">
                                    <form:form action="/route" class="form-material" method="post" modelAttribute="routeRecord">
                                        <div class="form-group form-default form-static-label">
                                            <form:input type="text" id="sourceAirportCode" path="sourceAirportCode" class="form-control" placeholder="Enter Source Airport Code" required="true"/>
                                            <span class="form-bar"></span>
                                            <label class="float-label">Enter Source Airport Code:</label>
                                        </div>
                                        <div class="form-group form-default form-static-label">
                                            <form:input type="text" id="destinationAirportCode" path="destinationAirportCode" class="form-control" placeholder="Enter Destination Airport Code" required="true"/>
                                            <span class="form-bar"></span>
                                            <label class="float-label">Enter Destination Airport Code:</label>
                                        </div>
                                        <div class="form-group form-default form-static-label">
                                            <button type="submit" class="btn btn-primary waves-effect waves-light">Add</button>
                                            <button type="reset" class="btn btn-inverse waves-effect waves-light">Reset</button>
                                        </div>
                                    </form:form>
                                    <a href="/index" class="btn btn-secondary">Return</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="footer.jsp" %>
