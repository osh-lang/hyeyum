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
									    <input type="text" class="form-control" name="coursno" id="coursno" readonly value="${course.coursno}" placeholder="๊ณผ๋ชฉ์ฝ๋ ์๋?ฅ๋">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="name">๊ณผ๋ชฉ๋ช</label>
									    <input type="text" class="form-control" name="name" id="name" value="${course.name}" placeholder="์ด๋ฆ ์๋?ฅ๋">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="dname">๋ด๋นํ๊ณผ</label>
									    <input type="text" class="form-control" name="dname" id="dname" readonly value="${course.dname}" placeholder="๋ด๋นํ๊ณผ ์๋?ฅ๋">						 	
									 </div> 
									 <div class="form-group col-md-3">
									    <label for="pname">๋ด๋น๊ต์</label>
									    <input type="text" class="form-control" name="pname" id="pname" readonly value="${course.pname}" placeholder="๋ด๋น๊ต์ ์๋?ฅ๋">								 	
									 </div>
								 </div>
							    <div class="form-row">
									 <div class="form-group col-md-2">
									    <label for="credit">ํ์?</label>
									    <input type="text" class="form-control" name="credit" id="credit" readonly value="${course.credit}" placeholder="ํ์?">
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="locno">๊ฐ์์ค</label>
									    <select class="custom-select" name="locno" required>
                                            <option selected value="">์?ํ</option>
                                            <c:forEach items="${location}" var="loc">
                                            <option value="${loc}">${loc}</option>
                                            </c:forEach>
                                        </select>						 	
									 </div>
									 <div class="form-group col-md-2">
									    <label for="semester">ํ๊ธฐ</label>
									    <input type="text" class="form-control" name="semester" id="semester"  value="${course.semester}" placeholder="์์์๊ฐ">
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="day">์์์ผ</label>
									    <select class="custom-select" name="day" required>
                                            <option selected value="">์?ํ</option>
                                            <option value="1">์</option>
                                            <option value="2">ํ</option>
                                            <option value="3">์</option>
                                            <option value="4">๋ชฉ</option>
                                            <option value="5">๊ธ</option>
                                        </select>								 	
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="startTime">์์์๊ฐ</label>
									    <select class="custom-select" name="startTime" required>
                                            <option selected value="">์?ํ</option>
                                            <c:forEach begin="1" end="8" step="1" var="i">
                                            <option value="${i}">${i}๊ต์</option>
                                            </c:forEach>
                                        </select>							 	
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="endTime">์ข๋ฃ์๊ฐ</label>
									    <select class="custom-select" name="endTime" required>
                                            <option selected value="">์?ํ</option>
                                            <c:forEach begin="1" end="8" step="1" var="i">
                                            <option value="${i}">${i}๊ต์</option>
                                            </c:forEach>
                                        </select>								 	
								 	 </div>
									 <div class="form-group col-md-2">
									    <label for="maxnum">์๊ฐ์?์</label>
									    <input type="text" class="form-control" name="maxnum" id="maxnum" value="${course.maxnum}" placeholder="์๊ฐ์?์">								 	
									 </div>
								 </div>
								 <div class="row">
									<div class="form-group col-md-6">
									  	<div class="upload-input">
										    <input type="file" class="form-control" name="files" id="files" accept=".pdf, .hwp">								 	
										    <label for="files">๊ฐ์๊ณํ์(pdf, hwp ๋ฑ์ ๋ฌธ์ํ์ผ๋ง ์๋ก๋ ๊ฐ๋ฅํฉ๋๋ค)</label>
									  	</div>
									 </div>
								  	<div class="form-group col-md-6 upload-result">
								  		<ul class="list-group"></ul>
								  	</div>
								 </div>
								 <div class="row">
								 	<div class="col-md-12 mb-2">
								    	<button data-oper="deletecourse" class="btn btn-info btn-block" formaction="deletecourse">๊ฐ์์ญ์?</button>								 	
								 	</div>
								 </div>
								 <div class="row">
								 	<div class="col-md-12">
								 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
								    	<button type="submit" data-oper="modify" id="updatecourse" class="btn btn-info btn-block" formaction="updatecourse">๊ฐ์์์?</button>								 	
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

            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
       	</div>
        <script>
        // ์ต๋ ํ์ผ ํฌ๊ธฐ
   		var maxSize = 1024 * 1024 * 5;
   		var cloneObj = $(".upload-input").clone();
   		var uploadResult = $(".upload-result ul");
   		var coursno = "${course.coursno}";
   		var csrf = "${_csrf.headerName}";
   		var csrfToken = "${_csrf.token}";
   		
   		$(document).ajaxSend(function(e, xhr) {
   			xhr.setRequestHeader(csrf, csrfToken);
   		});
   		
   		$(function() {
   			
   			$.getJSON("${pageContext.request.contextPath}/admin/getAttachList", {
   				coursno: coursno
   				}, 
   				function(uploadResultArr) {
   				var str = "";
   				for(var i in uploadResultArr) {
   					var obj = uploadResultArr[i];
   					str += "<li class='list-group-item'";
   					str += " data-filename='" + obj.fileName;
   					str += "' data-document='" + obj.document;
   					str += "' data-uuid='" + obj.uuid;
   					str += "' data-uploadpath='" + obj.uploadPath;
   					str += "'>";
  						str += "	<a href='${pageContext.request.contextPath}/download?fileName=" + obj.downloadPath + "'><i class='fas fa-paperclip text-muted'></i> " + obj.fileName + "</a>";
   					str += "	<i class='fas fa-times-circle remove-file-btn'></i>";
   					str += "</li>";
   				}
   				uploadResult.append(str);
   			});
   			
   			$(".upload-input").on("change", "#files", function() {
   				var formData = new FormData();
   				var files = $("#files")[0].files;
   				console.log(files);
   				
   				for(var i in files) {
   					if(!checkExtension(files[i].name, files[i].size)) {
   						return false;
   					}
   					formData.append("files", files[i]);
   				}
   				
   				$.ajax({
   					url: '${pageContext.request.contextPath}/uploadAction',
   					type: 'post',
   					data: formData,
   					dataType: 'json',
   					processData: false,
   					contentType: false,
   					success: function(result) {
   						console.log(result);
   						showUploadedFile(result);
   						$(".upload-input").html(cloneObj.html());
   					}
   				});
   			});
   			
   			function checkExtension(name, size) {
   				if(size > maxSize) {
   					alert("์ต๋ ์๋ก๋ ํฌ๊ธฐ๋ฅผ ์ด๊ณผํ์ต๋๋ค");
   					return false;
   				}
   				return true;
   			}
   			
   			function showUploadedFile(uploadResultArr) {
   				var str = "";
   				for(var i in uploadResultArr) {
   					var obj = uploadResultArr[i];
   					str += "<li class='list-group-item'";
   					str += " data-filename='" + obj.fileName;
   					str += "' data-document='" + obj.document;
   					str += "' data-uuid='" + obj.uuid;
   					str += "' data-uploadpath='" + obj.uploadPath;
   					str += "'>";
					str += "	<a href='${pageContext.request.contextPath}/download?fileName=" + obj.downloadPath + "'><i class='fas fa-paperclip text-muted'></i> " + obj.fileName + "</a>";
   					str += "	<i class='fas fa-times-circle remove-file-btn'></i>";
   					str += "</li>";
   				}
   				uploadResult.append(str);
   			}
   			
   			$(".upload-result").on("click", ".remove-file-btn", function() {
   				var $li = $(this).closest("li");
   				var data = {
   					fileName: $li.data("filename"),
   					document: $li.data("document"),
   					uuid: $li.data("uuid"),
   					uploadPath: $li.data("uploadpath")
   				};
   				console.log(data);
   				
   				$.ajax({
   					url: "${pageContext.request.contextPath}/deleteFile",
   					type: "post",
   					data: JSON.stringify(data),
   					contentType: "application/json; charset=utf-8",
   					success: function(result) {
   						alert("์ญ์?๋์์ต๋๋ค.");
   						$li.remove();
   					}
   				});
   				
   				$li.remove();
   			});
   			
   			$("#updatecourse").on("click", function() {
   				if($(this).data("oper") != "modify") return;
				
   				var str = "";
   				var attrs = ["fileName", "uuid", "uploadPath", "document"];
   				
   				$(".upload-result li").each(function(i, it) {
   				    for(var j in attrs) {
   						str += '<input type="hidden" name="attachList[' + i + '].' + attrs[j];
   						str += '" value="' + $(it).data(attrs[j].toLowerCase()) + '">';
   				    }
   				});
   				
   				console.log(str);
   				$(this).closest("form").append(str);
   			});
   			
   			$("select[name='locno'] option").each(function() {
				if($(this).val() == "${course.locno}") {
					$(this).prop("selected", true);
				}   				
   			});
   			
   			$("select[name='day'] option").each(function() {
				if($(this).val() == "${course.day}") {
					$(this).prop("selected", true);
				}   				
   			});
   			
   			$("select[name='startTime'] option").each(function() {
				if($(this).val() == "${course.startTime}") {
					$(this).prop("selected", true);
				}   				
   			});
   			
   			$("select[name='endTime'] option").each(function() {
				if($(this).val() == "${course.endTime}") {
					$(this).prop("selected", true);
				}   				
   			});
   		});
   		
   		$("select[name='startTime']").change(function() {
   			var val = $(this).val();
   			console.log(val);
   			$("select[name='endTime'] option").each(function() {
   				if($(this).val() <= val) {
   					$(this).prop("disabled", true);
   				} else {
   					$(this).prop("disabled", false);
   				}
   			});
   		});
        </script>
<jsp:include page="../includes/footer.jsp" />