<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<jsp:include page="../includes/header.jsp" />
<jsp:include page="../includes/sidebar.jsp" />
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-7 align-self-center">
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">Professor</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="index.html">registergrade</a>
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
            	<div class="row">
                    <div class="col-12">
                        <div class="card course-list-wrapper">
                            <div class="card-body">
                            	<p class="card-title mb-3"><i class="fas fa-list"></i> 강의목록</p>
                                <div class="table-responsive">
                                    <table id="zero_config" class="table table-striped table-bordered no-wrap">
                                        <thead>
                                            <tr>
                                                <th>학번</th>
                                                <th>이름</th>
                                                <th>강의코드</th>
                                                <th>강의명</th>
                                                <th>성적</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach items="${list}" var="sugang">
                                            <tr>
                                                <td>${sugang.studno}</td>
                                                <td>${sugang.studname}</td>
                                                <td>${sugang.coursno}</td>
                                                <td>${sugang.name}</td>
                                                <td class="text-center">
                                                	<form method="post" action="">
                                                		<input type="hidden" id="studno" name="studno" value="${sugang.studno}">
                                                		<input type="hidden" id="coursno" name="coursno" value="${sugang.coursno}">
                                                		<div class="form-group col-md-3 d-inline">
                                                		<input type="text" class="form-control" id="result" name="result" value="${sugang.result}">
                                                		<button type="submit" class="btn btn-secondary btn-sm form-control" formaction="insertgrade">성적입력</button>
                                                		</div>
                                                	</form>
                                                </td>
                                            </tr>
                                        	</c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<jsp:include page="../includes/footer.jsp" />