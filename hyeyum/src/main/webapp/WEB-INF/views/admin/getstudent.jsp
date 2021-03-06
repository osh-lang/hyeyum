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
                        <h3 class="page-title text-truncate text-dark font-weight-medium mb-1">ํ์์กฐํ</h3>
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb m-0 p-0">
                                    <li class="breadcrumb-item"><a href="#">Get Student</a>
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
									    <label for="studno">ํ๋ฒ</label>
									    <input type="text" class="form-control" name="studno" id="studno" readonly value="${student.studno}" placeholder="ํ๋ฒ ์๋?ฅ๋">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="name">์ด๋ฆ</label>
									    <input type="text" class="form-control" name="name" id="name" readonly value="${student.name}" placeholder="์ด๋ฆ ์๋?ฅ๋">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="birthDate">์๋์์ผ</label>
									    <input type="text" class="form-control" name="birthDate" id="birthDate" readonly value="<fmt:formatDate value="${student.birthDate}" pattern="yyMMdd"/>" required pattern="[0-9]{6}" placeholder="์๋์์ผ ์๋?ฅ๋(yymmdd)">								 	
									 </div> 
									 <div class="form-group col-md-3">
									    <label for="tel">์?ํ๋ฒํธ</label>
									    <input type="text" class="form-control" name="tel" id="tel" readonly value="${student.tel}" placeholder="์?ํ๋ฒํธ ์๋?ฅ๋">								 	
									 </div>
								 </div>
								 <label for="address" >์ฃผ์</label> 
                                 <div class="row">
							    	<div class="col-md-10">
							    		<div class="form-group">
										    <input type="text" class="form-control" name="address" id="address" readonly value="${student.address}" placeholder="์ฃผ์">								 	
							    		</div>
							    	</div>
							    	<div class="col-md-2">
							    		<div class="form-group">
										    <input type="button" class="btn btn-outline-info" onclick="daumPostcode()" value="์ฃผ์์ฐพ๊ธฐ">								 	
							    		</div>
							    	</div>
							    </div>
							    <div class="form-row">
									 <div class="form-group col-md-3">
									    <label for="deptno">ํ๊ณผ์ฝ๋</label>
									    <input type="text" class="form-control" name="deptno" id="deptno" readonly value="${student.deptno}" placeholder="ํ๊ณผ์ฝ๋">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="profno">๊ต์์ฝ๋</label>
									    <input type="text" class="form-control" name="profno" id="profno"  readonly value="${student.profno}" placeholder="๊ต์์ฝ๋">								 	
									 </div>
									 <div class="form-group col-md-3">
									    <label for="grade">ํ๋</label>
									    <input type="text" class="form-control" name="grade" id="grade"  value="${student.grade}" placeholder="ํ๋">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="status">ํ์?์ํ</label>
									    <input type="text" class="form-control" name="status" id="status" placeholder="ํ์? ์ํ">								 	
									 </div>
								 </div>
								 <div class="row">
								 	 <div class="col-md-4">
									 	<label for="email">์ด๋ฉ์ผ</label>
									    <input type="email" class="form-control" name="email" id="email" value="${student.email}" placeholder="์ด๋ฉ์ผ">
									 </div>
									 <fieldset class="form-group col-md-4">
									 	 <legend class="col-form-label col-md-12 px-0">๋ณ์ญ๊ตฌ๋ถ</legend>
										 <div class="form-check form-check-inline">
		                                    <div class="custom-control custom-radio">
		                                        <input type="radio" class="custom-control-input" id="feature1" name="feature" value="0">
		                                        <label class="custom-control-label" for="feature1">๋ณ์ญ๋ฏธํ</label>
		                                    </div>
		                                </div>
										 <div class="form-check form-check-inline">
		                                    <div class="custom-control custom-radio">
		                                        <input type="radio" class="custom-control-input" id="feature2" name="feature" value="1">
		                                        <label class="custom-control-label" for="feature2">๋ณ์ญํ</label>
		                                    </div>
		                                </div> 
									 </fieldset>
									 <fieldset class="form-group col-md-4">
									 	 <legend class="col-form-label col-md-2 px-0">์ฑ๋ณ</legend>
										 <div class="form-check form-check-inline">
		                                    <div class="custom-control custom-radio">
		                                        <input type="radio" class="custom-control-input" id="gender1" name="gender" value="M">
		                                        <label class="custom-control-label" for="gender1">๋จ</label>
		                                    </div>
		                                 </div>
										 <div class="form-check form-check-inline">
		                                    <div class="custom-control custom-radio">
		                                        <input type="radio" class="custom-control-input" id="gender2" name="gender" value="F">
		                                        <label class="custom-control-label" for="gender2">์ฌ</label>
		                                    </div>
		                                </div>
									 </fieldset>
								 </div>
								 <div class="row">
								 	<div class="col-md-12 mb-2">
								    	<button data-oper="deletestudent" class="btn btn-info btn-block" formaction="deletestudent">์ธ์?์ฌํญ์ญ์?</button>								 	
								 	</div>
								 </div>
								 <div class="row">
								 	<div class="col-md-12">
								    	<button type="submit" id="updatestudent" class="btn btn-info btn-block">์ธ์?์ฌํญ์์?</button>								 	
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
         </div>
	   	<script>
	    function daumPostcode() {
	        new daum.Postcode({
	            oncomplete: function(data) {
	                // ํ์์์ ๊ฒ์๊ฒฐ๊ณผ ํญ๋ชฉ์ ํด๋ฆญํ์๋ ์คํํ? ์ฝ๋๋ฅผ ์์ฑํ๋ ๋ถ๋ถ.
	
	                // ๊ฐ ์ฃผ์์ ๋ธ์ถ ๊ท์น์ ๋ฐ๋ผ ์ฃผ์๋ฅผ ์กฐํฉํ๋ค.
	                // ๋ด๋?ค์ค๋ ๋ณ์๊ฐ ๊ฐ์ด ์๋ ๊ฒฝ์ฐ์ ๊ณต๋ฐฑ('')๊ฐ์ ๊ฐ์ง๋ฏ๋ก, ์ด๋ฅผ ์ฐธ๊ณ?ํ์ฌ ๋ถ๊ธฐ ํ๋ค.
	                var addr = ''; // ์ฃผ์ ๋ณ์
	                var extraAddr = ''; // ์ฐธ๊ณ?ํญ๋ชฉ ๋ณ์
	
	                //์ฌ์ฉ์๊ฐ ์?ํํ ์ฃผ์ ํ์์ ๋ฐ๋ผ ํด๋น ์ฃผ์ ๊ฐ์ ๊ฐ์?ธ์จ๋ค.
	                if (data.userSelectedType === 'R') { // ์ฌ์ฉ์๊ฐ ๋๋ก๋ช ์ฃผ์๋ฅผ ์?ํํ์ ๊ฒฝ์ฐ
	                    addr = data.roadAddress;
	                } else { // ์ฌ์ฉ์๊ฐ ์ง๋ฒ ์ฃผ์๋ฅผ ์?ํํ์ ๊ฒฝ์ฐ(J)
	                    addr = data.jibunAddress;
	                }
	
	                // ์ฌ์ฉ์๊ฐ ์?ํํ ์ฃผ์๊ฐ ๋๋ก๋ช ํ์์ผ๋ ์ฐธ๊ณ?ํญ๋ชฉ์ ์กฐํฉํ๋ค.
	                if(data.userSelectedType === 'R'){
	                    // ๋ฒ์?๋๋ช์ด ์์ ๊ฒฝ์ฐ ์ถ๊ฐํ๋ค. (๋ฒ์?๋ฆฌ๋ ์?์ธ)
	                    // ๋ฒ์?๋์ ๊ฒฝ์ฐ ๋ง์ง๋ง ๋ฌธ์๊ฐ "๋/๋ก/๊ฐ"๋ก ๋๋๋ค.
	                    if(data.bname !== '' && /[๋|๋ก|๊ฐ]$/g.test(data.bname)){
	                        extraAddr += data.bname;
	                    }
	                    // ๊ฑด๋ฌผ๋ช์ด ์๊ณ?, ๊ณต๋์ฃผํ์ผ ๊ฒฝ์ฐ ์ถ๊ฐํ๋ค.
	                    if(data.buildingName !== '' && data.apartment === 'Y'){
	                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                    }
	                    // ํ์ํ? ์ฐธ๊ณ?ํญ๋ชฉ์ด ์์ ๊ฒฝ์ฐ, ๊ดํธ๊น์ง ์ถ๊ฐํ ์ต์ข ๋ฌธ์์ด์ ๋ง๋?๋ค.
	                    if(extraAddr !== ''){
	                        extraAddr = ' (' + extraAddr + ')';
	                    }
	                    // ์กฐํฉ๋ ์ฐธ๊ณ?ํญ๋ชฉ์ ํด๋น ํ๋์ ๋ฃ๋๋ค.
	                    //document.getElementById("extraAddress").value = extraAddr;
	                
	                } else {
	                    document.getElementById("extraAddress").value = '';
	                }
	
	                // ์ฐํธ๋ฒํธ์ ์ฃผ์ ์?๋ณด๋ฅผ ํด๋น ํ๋์ ๋ฃ๋๋ค.
	                //document.getElementById('postcode').value = data.zonecode;
	                //document.getElementById("address").value = addr;
	                document.getElementById("address").value = data.zonecode+ " " + addr + extraAddr;
	                // ์ปค์๋ฅผ ์์ธ์ฃผ์ ํ๋๋ก ์ด๋ํ๋ค.
	                document.getElementById("address").focus();
	            }
	        }).open();
	    }
		</script>
		<script>
			$(function() {
				//ํ์?์ํ ๊ฐ ๋ฐ์์ค๊ธฐ
				var status = ${student.status};
				if(status) {
					$("#status").val("์ฌํ");
				}
				else{
					$("#status").val("ํดํ");
					
				}
				
				var feature = ${student.feature};
				if(feature) {
					$("#feature2").prop('checked', true);
					$("#feature1").prop('disabled', true);
				}
				else {
					$("#feature1").prop('checked', true);
					$("#feature2").prop('disabled', true);
				}
				
				var gender = "${student.gender}";
				if(gender == "M") {
					$("#gender1").prop('checked', true);
					$("#gender2").prop('disabled', true);
				}
				else {
					$("#gender2").prop('checked', true);
					$("#gender1").prop('disabled', true);
				}
				
				$("#updatestudent").click(function() {
					event.preventDefault();
					if($("#status").val()=="์ฌํ") {
						$("#status").val(1);
					}
					else {
						$("#status").val(0);
					}
					$(this).closest("form").submit();
				})
			})
		</script>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
<jsp:include page="../includes/footer.jsp" />