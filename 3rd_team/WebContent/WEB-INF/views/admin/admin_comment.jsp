<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<table border="1">
	<tr>
		<th>번호11</th>
		<th>작성자</th>
		<th>매장번호</th>
		<th>점수</th>
		<th>내용</th>
		<th>생성일</th>
	</tr>
	<c:if test="${ empty requestScope.admin_review  }">
		<tr>
			<td colspan="6">작성된 후기가 없습니다.</td>
		</tr>
	</c:if>
	<c:forEach var="review" items="${ requestScope.admin_review }">
		<tr>
			<td><c:out value="${ review.review_num }" /></td>
			<td><c:out value="${ review.id }" /></td>
			<td><c:out value="${ review.store_num }" /></td>
			<td><c:out value="${ review.score }" /></td>
			<td><c:out value="${ review.review }" /></td>
			<td><c:out value="${ review.inputDate }" /></td>
		</tr>
	</c:forEach>
</table>