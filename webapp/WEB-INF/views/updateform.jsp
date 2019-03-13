<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	table{
		border: 2px solid;
		border-collapse: collapse;
	}
		th,td {
		border: 2px solid;
		padding: 15px;		
	}	
	
</style>
<head>
<meta charset="UTF-8">
<title>진료기록 수정</title>
</head>
<body>
	<h1>진료기록 수정</h1>
	<form action="/pmedical03/update" method="post">
		<input type='hidden' name="no" value="${vo.no }">
		<table>
		<colgroup>
			<col style="background:#eee;">
		</colgroup>
		
			<tr>
				<th> 이름: </th>
				<td><textarea name="name" cols=60 rows=1>${vo.name }</textarea></td>
			</tr>
			<tr>
				<th> 성별: </th>
				<td><textarea name="gender" cols=60 rows=1>${vo.gender }</textarea></td>
			</tr>
			<tr>
				<th> 전화번호: </th>
				<td><textarea name="tel" cols=60 rows=1>${vo.tel }</textarea></td>
			</tr>
			<tr>
				<th> 진료내용: </th>
				<td><textarea name="status" cols=60 rows=10>${vo.status }</textarea></td>
			</tr>
		</table>
		<input type="submit" value=" 수정하기 ">
	</form>
	<form method="post" action="/pmedical03/main">
		<button onclick="window.location.href='/pmedical03/main'">메인으로</button>
	</form>
</body>
</html>