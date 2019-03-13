<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	table {
		border: 0px solid black;
		border-collapse: collapse;
		text-align: center;
	}
	th,td {
		border: 1px solid;
		border-collapse: collapse;
		padding: 15px;
		
	}
</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>진료 차트</title>
</head>
<body>
	<h1>내원 일지</h1>
	<form method="post" action="/pmedical03/addform">
		<button onclick="window.location.href='/pmedical03/addform'">추가하기</button>
	</form>
	<hr>
<c:forEach items="${list }" var="vo">
		<table>
			<colgroup>
				<col style="background:#eee;">
				<col>
				<col style="background:#eee;">
				<col>
			</colgroup>
			<tr>
				<th> 번호 </th>
				<td>${vo.no }</td>
				<th> 전화번호 </th>
				<td>${vo.tel }</td>
			</tr>			
			<tr>
				<th> 이름 </th>
				<td>${vo.name }</td>
				<th> 성별 </th>
				<td>${vo.gender }</td>
			</tr>			
			<tr>
				<th> 검진일 </th>
				<td colspan=3>${vo.date }</td>
			</tr>
	
			<tr>
				<th> 진료<br>내용 </th>
				<td width=100 style="word-break: break-all;"  colspan=9>${vo.status }</td>
			</tr>
		</table>
		<button onclick="window.location.href='/pmedical03/delete?no=${vo.no }'">삭제</button>
		<button onclick="window.location.href='/pmedical03/updateform?no=${vo.no }'">수정</button>
	<br>
	<hr>
</c:forEach>
</body>
</html>