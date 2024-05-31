<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 정보</title>
</head>
<body>
		<h2>회원 가입 정보</h2>
		<hr>
		<%
			String member_Id = request.getParameter("id");
			String member_pw = request.getParameter("pw");
			String member_name = request.getParameter("name");
			String member_telecom = request.getParameter("telecom");
			String member_ph1 = request.getParameter("phone1");
			String member_ph2 = request.getParameter("phone2");
			String member_ph3 = request.getParameter("phone3");
			String member_gender = request.getParameter("gender");
			String[] member_hobby = request.getParameterValues("hobby");	// 체크박스 -> 배열로 변환됨		
			String member_intro = request.getParameter("introduce");
		
		%>
		아이디 : <%= member_Id  %>
		<br>
		비밀번호 : <%= member_pw  %>
		<br>
		이름 : <%= member_name  %>
		<br>
		연락처 : <%= member_telecom  %>-<%= member_ph1 %>-<%= member_ph2 %>-<%= member_ph3 %>
		<br>
		성별 : <%= member_gender  %>
		<br>
		취미 : 
		<%
			if(member_hobby != null) {
				for(int i=0;i<member_hobby.length;i++) {
					//System.out.println(member_hobby[i]);
					out.println(member_hobby[i]);	// 웹 상에 출력	
					} 
			} else {
				out.println("취미 선택 없음");
			}
				
		%>
		
		
		<br>
		자기소개 : <%= member_intro  %>
		
		
</body>
</html>