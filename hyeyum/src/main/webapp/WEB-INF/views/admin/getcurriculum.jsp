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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">๊ฐ์์กฐํ</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="#">Get managementcourse</a>
                                    </li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- *************************************************************** -->
                <!-- Start First Cards -->
                <!-- *************************************************************** -->
                <div class="card-group">
                    <div class="card border-right">
                        <div class="card-body">
                            <form method="post" action="">
								 <div class="form-row">
									 <div class="form-group col-md-3">
									    <label for="coursno">๊ณผ๋ชฉ์ฝ๋</label>
									    <input type="text" class="form-control" name="coursno" id="coursno" readonly value="${curriculum.coursno}" placeholder="๊ณผ๋ชฉ์ฝ๋ ์๋?ฅ๋">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="category">์ด์๊ตฌ๋ถ</label>
									    <input type="text" class="form-control" name="category" id="category" value="${curriculum.category}">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="name">๊ณผ๋ชฉ๋ช</label>
									    <input type="text" class="form-control" name="name" id="name" readonly value="${curriculum.name}">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="dname">๊ฐ์คํ๊ณผ</label>
									    <input type="text" class="form-control" name="dname" id="dname" readonly value="${curriculum.dname}" placeholder="๋ด๋นํ๊ณผ ์๋?ฅ๋">						 	
									 </div> 
								 </div>
							    <div class="form-row">
									 <div class="form-group col-md-2">
									    <label for="credit">ํ์?</label>
									    <input type="text" class="form-control" name="credit" id="credit" readonly value="${curriculum.credit}" placeholder="ํ์?">
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="semester">ํ๊ธฐ</label>
									    <input type="text" class="form-control" name="semester" id="semester" readonly value="${curriculum.semester}" placeholder="์์์๊ฐ">
								 	 </div>
								 </div>
								 <div class="row">
								 	<div class="col-md-6">
								    	<button data-oper="deletecurriculum" class="btn btn-warning btn-block" formaction="deletecurriculum">๊ต์ก๊ณผ์?์ญ์?</button>								 	
								 	</div>
								 	<div class="col-md-6">
								    	<button type="submit" id="updatecurriculum" class="btn btn-info btn-block" formaction="updatecurriculum">๊ต์ก๊ณผ์?์์?</button>								 	
								 	</div>
								 </div>
								 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
							</form>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End First Cards -->
                <!-- *************************************************************** -->
            </div>

            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
<jsp:include page="../includes/footer.jsp" />