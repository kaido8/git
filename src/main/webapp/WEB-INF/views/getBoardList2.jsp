<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>getBoardList2.do</title>
</head>
<body>

<c:set var="i" value="0" />
	<c:set var="j" value="3" />
	
	<table border="1">

		<c:forEach items="${boardList2}" var="board">
		<c:if test="${i%j == 0 }">
			<tr>
			</c:if>
				<td><a href="getBoardList.do"> <img
						src='resources/upload/${board.b_realfname}' width='300'
						height='250'>
				</a></td>
				<c:if test="${i%j == j-1 }">
				</tr>
				</c:if>
				<c:set var="i" value="${i+1 }" />
		</c:forEach>
	</table>
</body>
</html>