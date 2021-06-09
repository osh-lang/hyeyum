<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>
<jsp:include page="../includes/header.jsp" />
<jsp:include page="../includes/sidebar.jsp" />
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper info-wrapper">
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
                                    <li class="breadcrumb-item"><a href="index.html">info</a>
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
                            <form method="post" action="${pageContext.request.contextPath}/professor/info" class="update-info-form">
								 <div class="form-row">
									 <div class="form-group col-md-3">
									    <label for="studno">교번</label>
									    <input type="text" class="form-control" name="profno" id="profno" readonly value="${professor.profno}" placeholder="교번 입력란">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="name">이름</label>
									    <input type="text" class="form-control" name="name" id="name" value="${professor.name}" placeholder="이름 입력란">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="birthdate">생년월일</label>
									    <input type="text" class="form-control" name="birthdate" id="birthdate" required pattern="[0-9]{6}"  readonly value="<fmt:formatDate value="${professor.birthdate}" pattern="yyMMdd"/>" placeholder="생년월일 입력란(yymmdd)">								 	
									 </div>
									 <fieldset class="form-group col-md-3">
									 	 <legend class="col-form-label col-md-2 px-0">성별</legend>
										 <div class="form-check form-check-inline">
		                                    <div class="custom-control custom-radio">
		                                        <input type="radio" class="custom-control-input" id="gender1" name="gender" value="M">
		                                        <label class="custom-control-label" for="gender1">남</label>
		                                    </div>
		                                 </div>
										 <div class="form-check form-check-inline">
		                                    <div class="custom-control custom-radio">
		                                        <input type="radio" class="custom-control-input" id="gender2" name="gender" value="F">
		                                        <label class="custom-control-label" for="gender2">여</label>
		                                    </div>
		                                </div>
									 </fieldset>
								 </div>
								 <div class="row">
									 <div class="form-group col-md-5">
									    <label for="tel">전화번호</label>
									    <input type="text" class="form-control" name="tel" id="tel" value="${professor.tel}" placeholder="전화번호 입력란">								 	
									 </div>
									 <div class="form-group col-md-5">
									    <label for="email">이메일주소</label>
									    <input type="email" class="form-control" name="email" id="email" value="${professor.email}" placeholder="이메일">								 	
									 </div>
								 </div>
								 <label for="address" >주소</label> 
                                 <div class="row">
							    	<div class="col-md-10">
							    		<div class="form-group">
										    <input type="text" class="form-control" name="address" id="address" value="${professor.address}"placeholder="주소">								 	
							    		</div>
							    	</div>
							    	<div class="col-md-2">
							    		<div class="form-group">
										    <input type="button" class="btn btn-outline-info" onclick="daumPostcode()" value="주소찾기">								 	
							    		</div>
							    	</div>
							    </div>
							    <div class="form-row">
									 <div class="form-group col-md-3">
									    <label for="deptno">학과코드</label>
									    <input type="text" class="form-control" name="deptno" id="deptno" readonly value="${professor.deptno}"placeholder="학과코드">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="profno">직급</label>
									    <input type="text" class="form-control" name="position" id="position" readonly value="${professor.position}" placeholder="직급">								 	
									 </div>
									 <div class="form-group col-md-3">
									    <label for="grade">입사일</label>
									    <input type="text" class="form-control" name="hiredate" id="hiredate" readonly required pattern="[0-9]{6}" value="<fmt:formatDate value="${professor.hiredate}" pattern="yyMMdd"/>" placeholder="입사일 입력란(yymmdd)">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="status">월급</label>
									    <input type="text" class="form-control" name="sal" id="sal" value="${professor.sal}" readonly placeholder="월급">								 	
									 </div>
								 </div>
								 <div class="row">
									 
								 </div>
								 <div class="row mb-3 change-password">
							    	<div class="col-md-6 password-input">
									    <label for="password">비밀번호</label>
									    <input type="password" class="form-control" name="password" id="password" value="${professor.password}">								 	
							    	</div>
							    	<div class="col-md-6 password-ck-input">
									    <label for="passwordCk">비밀번호 확인</label>
									    <input type="password" autocomplete="new-password" class="form-control" name="password-ck" id="passwordCk" value="" placeholder="한 번 더 입력" disabled>								 	
							    	</div>
							    </div>
								<div class="row">
									<div class="col-md-6">
										<button type="button" class="btn btn-block btn-primary change-password-btn">비밀번호 변경</button>
									</div>
									<div class="col-md-6">
										<button type="submit" class="btn btn-block btn-primary">저장</button>
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									</div>
								</div>
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
		               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		               // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		               var addr = ''; // 주소 변수
		               var extraAddr = ''; // 참고항목 변수
		
		               //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                   addr = data.roadAddress;
		               } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                   addr = data.jibunAddress;
		               }
		
		               // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		               if(data.userSelectedType === 'R'){
		                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                       extraAddr += data.bname;
		                   }
		                   // 건물명이 있고, 공동주택일 경우 추가한다.
		                   if(data.buildingName !== '' && data.apartment === 'Y'){
		                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                   }
		                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                   if(extraAddr !== ''){
		                       extraAddr = ' (' + extraAddr + ')';
		                   }
		                   // 조합된 참고항목을 해당 필드에 넣는다.
		                   //document.getElementById("extraAddress").value = extraAddr;
		               
		               } else {
		                   document.getElementById("extraAddress").value = '';
		               }
		
		               // 우편번호와 주소 정보를 해당 필드에 넣는다.
		               //document.getElementById('postcode').value = data.zonecode;
		               //document.getElementById("address").value = addr;
		               document.getElementById("address").value = data.zonecode+ " " + addr + extraAddr;
		               // 커서를 상세주소 필드로 이동한다.
		               document.getElementById("address").focus();
		           }
		       }).open();
		   }
		</script>
		<script>
		var msg = "${msg}";
		
		if(msg == "success") {
			$(".info-update-success").show();
			setTimeout(function() {
			$(".info-update-success").hide();
			}, 3000);
		} else if(msg == "fail") {
			$(".info-update-fail").show();
			setTimeout(function() {
			$(".info-update-fail").hide();
			}, 3000);
		}
		
		$(".change-password-btn").click(function() {
			$(this).prop("disabled", true);
			$(".password-input, .password-ck-input").slideDown();
			$("#passwordCk").prop("required", true);
			$("#passwordCk").prop("disabled", false);
		});
		
		$(".update-info-form").on("submit", function() {
			var pw = $("#password").val();
			var pwck = $("#passwordCk").val();
			var tel = $("#tel").val();
			
			if(pwck != "" && !checkPw(pw, pwck)) {
				event.preventDefault();
				alert("입력한 비밀번호와 일치하지 않습니다.");
			}
			if(tel.length > 13) {
				event.preventDefault();
				alert("전화번호는 11자리이하로 입력하세요.");
			}
		});
		
		function checkPw(pw, pwck) {
			if(pw === pwck) return true;
			return false;
		}
		$(function() {
		    var gender = "${professor.gender}";
		    if(gender == "M") {
		        $("#gender1").prop('checked', true);
		        $("#gender2").prop('disabled', true);
		    }
		    else {
		        $("#gender2").prop('checked', true);
		        $("#gender1").prop('disabled', true);
		    }
		   	var prof = "${professor}"
		});
		</script>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
<jsp:include page="../includes/footer.jsp" />