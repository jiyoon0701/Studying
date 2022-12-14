<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- /jsp3/src/main/webapp/view/board/updateForm.jsp --%>    
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>게시글 수정</title>
<script>
  function file_delete() {
	  document.f.file2.value=""; 
	  file_desc.style.display="none"; 
  }
</script>
</head>
<body>
<hr>
<div class="container">
<form name="f" action="update" enctype="multipart/form-data"
      method="post">
  <input type="hidden" name="file2" value="${b.file1}">
  <input type="hidden" name="num" value="${b.num}">
  <h2 id="center">게시글 수정 </h2>
  <div class="form-group">
	<label >작성자:</label> 
	<input type="text" class="form-control"  name="writer" 
	       readonly="readonly" value="${b.writer}"> 
	<label >비밀번호:</label> 
	<input type="password" class="form-control" name="pass">
	 <label	>제목:</label> <input type="text" class="form-control"
	  name="subject" value="${b.subject}" ></div>
	<div class="form-group">
	<label>내용</label><textarea class="form-control"  
	   rows="10" cols="50"  name="content">${b.content}</textarea>
	</div>
    <c:if test="${!empty b.file1}">
       <div id="file_desc" class="form-group">${b.file1}
       <a href="javascript:file_delete()">[첨부파일 삭제]</a></div>
    </c:if>
	<div class="form-group">
		<label >파일저장:</label> 
		<input type="file" class="form-control" name="file1"  >
	</div>
	<div id="center" style="padding: 3px;">
		<button type="submit" class="btn btn-dark">수 정</button>
	</div>
	</form>
</div></body></html>