<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
table {
	border-top: 1px solid #444444;
	width: 40%;
}

td {
	border-bottom: 1px solid #cccccc;
	padding: 10px;
}
</style>
<div style="height: 50px"></div>
<!-- 상단 여백 -->
<h4>자주 묻는 질문 TOP5</h4>
<table>
	<c:forEach var="t" items="${top}" varStatus="top">
		<tr>
		<td>${t.category }</td>
			<td><div class="w3-dropdown-click">
					<button onclick="myFunction('top_${top.index }')"
						class="w3-button w3-white">${t.title}</button>
					<div id="top_${top.index }"
						class="w3-dropdown-content w3-border">
						<div class="w3-bar-item w3-button">${t.content}</div>
					</div>
				</div></td>
		</tr>
	</c:forEach>
</table>

<script>
	//질문 누르면 답변이 열림, 조회수 증가도 여기서 해야 하나?
	function myFunction(target) {
		var x = document.getElementById(target);
		if (x.className.indexOf("w3-show") == -1) {
			x.className += " w3-show";
		} else {
			x.className = x.className.replace(" w3-show", "");
		}
	}
</script>