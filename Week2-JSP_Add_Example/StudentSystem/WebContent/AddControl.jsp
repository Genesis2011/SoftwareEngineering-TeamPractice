<%@page import="team.task.bin.StudentBin"%>
<%@page import="team.task.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id=request.getParameter("id");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		StudentBin sb=new StudentBin();
		Student s=new Student(id,name,gender);
		if(sb.addStudent(s)){
	%>
		<script>
			alert("添加成功");
			location.href="AddFirstPage.jsp";
		</script>
	<%		
		} else {
	%>
		<script>
			alert("添加失败");
			location.href="AddFirstPage.jsp";
		</script>
	<%			
		}
	%>
</body>
</html>