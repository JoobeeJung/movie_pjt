<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="col-md-12">
			<!-- general form elements -->
			<div class="box box-primary">
				<div class="box-header">
					<h3 class="box-title">Home Page</h3>
				</div>
				<!-- /.box-header -->
			</div>
			<!-- /.box -->
		</div>
		<!--/.col (left) -->
	</div>
	<!-- /.row -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->
<%@ taglib  prefix="c"
			uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	섭섭이와 함께하는 SpringMVC feat. KBstar!!
</div>
<hr/>
<div align="right">
<c:if test="${ loginSession == null }">
	<form action="login.jbmovie" method="post">
		<input type="text" name="user_id" />
		<input type="password" name="user_pw" />
		<input type="submit" value="login" />
	</form>
</c:if>
<c:if test="${ loginSession != null }">
	${loginSession.user_name}님 로그인완료!!!
	<a href="logout.jbmovie">로그아웃</a>
	<a href="boxoffice.jbmovie">박스오피스 </a>
	
	<br/>
	 <c:if test="${ bbsModel == null }">
		<a href="bbs.kbstar"> 게시글보기 </a>
		<br/>
	</c:if>
	<br/>
	<c:if test="${ bbsModel != null }">
		<c:forEach var="board" items="${bbsModel}">
			<c:out value="${board.idx}"/>
			&nbsp; 
			<a href="bbs_read.kbstar?idx=${board.idx }">
			<c:out value="${board.subject}"/>
			</a>
			&nbsp; 	
			<c:out value="${board.content}"/>
			&nbsp; 	
			<c:out value="${board.writer}"/>
			&nbsp; 	
			<c:out value="${board.regdate}"/>
			&nbsp; 
			<c:out value="${board.cnt}"/>
			 <br/>
		</c:forEach>	
	</c:if>
	<c:if test="${ readModel != null }">
		<c:out value="${readModel.idx}"/>
		&nbsp; 
		<c:out value="${readModel.subject}"/>
		&nbsp;  	
		<c:out value="${readModel.content}"/>
		&nbsp;
		<c:out value="${readModel.writer}"/>
		&nbsp; 	
		<c:out value="${readModel.regdate}"/>
		&nbsp; 
		<c:out value="${readModel.cnt}"/>
		 
	</c:if>
	
</c:if>

<br/>
 

</div>

</body>
</html>




