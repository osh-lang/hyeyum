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
                                    <li class="breadcrumb-item"><a href="index.html">registercourse</a>
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
									    <label for="name">????????????</label>
									    <input type="text" class="form-control" name="coursno" id="coursno" value="${current+1}" placeholder="???????????? ?????????">
								 	 </div>
									 <div class="form-group col-md-3">
									    <label for="name">?????????</label>
									    <input type="text" class="form-control" name="name" id="name" placeholder="????????? ?????????">
								 	 </div>
								 	 <div class="form-group col-md-3">
									    <label for="name">????????????</label>
									    <input type="text" class="form-control" name="deptno" id="deptno" value="${professor.deptno}" readonly>
								 	 </div>
								 	 <div class="form-group col-md-3">
									    <label for="name">????????????</label>
									    <input type="text" class="form-control" name="profno" id="profno" value="${professor.profno}" readonly>
								 	 </div>
								 	 <div class="form-group col-md-3">
									    <label for="status">??????</label>
									    <select class="custom-select" name="semester" required>
                                            <option selected value="">??????</option>
                                            <option value="1">1??????</option>
                                            <option value="2">2??????</option>
                                        </select>						 	
									 </div>
									 <div class="form-group col-md-3">
									    <label for="status">?????????</label>
									    <select class="custom-select" name="locno" required>
                                            <option selected value="">??????</option>
                                            <c:forEach items="${location}" var="loc">
                                            <option value="${loc}">${loc}</option>
                                            </c:forEach>
                                        </select>						 	
									 </div>
									 <div class="form-group col-md-3">
									    <label for="status">??????</label>
									    <input type="text" class="form-control" name="credit" id="credit" placeholder="??????">								 	
									 </div>
									 <div class="form-group col-md-3">
									    <label for="tel">????????????</label>
									    <input type="text" class="form-control" name="maxnum" id="maxnum" placeholder="????????????">								 	
									 </div>
									 <div class="form-group col-md-4">
									    <label for="birthdate">????????????</label>
									    <select class="custom-select" name="startTime" required>
                                            <option selected value="">??????</option>
                                            <c:forEach begin="1" end="8" step="1" var="i">
                                            <option value="${i}">${i}??????</option>
                                            </c:forEach>
                                        </select>								 	
									 </div>
									  <div class="form-group col-md-4">
									    <label for="birthdate">????????????</label>
									    <select class="custom-select" name="endTime" required>
                                            <option selected value="">??????</option>
                                            <c:forEach begin="1" end="8" step="1" var="i">
                                            <option value="${i}">${i}??????</option>
                                            </c:forEach>
                                        </select>								 	
									 </div>
									  <div class="form-group col-md-4">
									    <label for="birthdate">?????????</label>
									    <select class="custom-select" name="day" required>
                                            <option selected value="">??????</option>
                                            <option value="1">???</option>
                                            <option value="2">???</option>
                                            <option value="3">???</option>
                                            <option value="4">???</option>
                                            <option value="5">???</option>
                                        </select>								 	
									 </div>
									  <div class="form-group col-md-6">
									  	<div class="upload-input">
										    <input type="file" class="form-control" name="files" id="files" accept=".pdf, .hwp">								 	
										    <label for="birthdate">???????????????(pdf, hwp ?????? ??????????????? ????????? ???????????????)</label>
									  	</div>
									 </div>
								  	<div class="form-group col-md-6 upload-result">
								  		<ul class="list-group"></ul>
								  	</div>
								 </div>
								 <div class="row">
								 	<div class="col-md-12">
								 		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
									    <button type="submit" class="btn btn-info btn-block">????????????</button>								 	
								 	</div>
								 </div>
							</form>
                        </div>
                    </div>
                </div>
                <!-- *************************************************************** -->
                <!-- End Top Leader Table -->
                <!-- *************************************************************** -->
            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
        </div>
		<script>
   		// ?????? ?????? ??????
   		var maxSize = 1024 * 1024 * 5;
   		var cloneObj = $(".upload-input").clone();
   		var uploadResult = $(".upload-result ul");
   		var csrf = "${_csrf.headerName}";
   		var csrfToken = "${_csrf.token}";
   		
   		$(document).ajaxSend(function(e, xhr) {
   			xhr.setRequestHeader(csrf, csrfToken);
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
   				alert("?????? ????????? ????????? ??????????????????");
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
   					alert(result);
   					$li.remove();
   				}
   			});
   		});
   		
   		$("button[type='submit']").on("click", function() {
   			event.preventDefault();
   			var str = "";
   			var attrs = ["fileName", "uuid", "uploadPath", "document"];
   			
   			$(".upload-result li").each(function(i, it) {
   			    for(var j in attrs) {
   					str += '<input type="hidden" name="attachList[' + i + '].' + attrs[j];
   					str += '" value="' + $(it).data(attrs[j].toLowerCase()) + '">';
   			    }
   			});
   			
   			console.log(str);
   			$(this).closest("form").append(str).submit();
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