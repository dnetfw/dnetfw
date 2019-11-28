<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="mis.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="user" class="mis.User" scope="page"/>
<jsp:setProperty name="user" property="id"/>
<jsp:setProperty name="user" property="password"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>액션</title>
</head>
<body>
 <%
	// System.out.println(user.getId());
	// System.out.println(user.getPassword());
 	UserDAO userDAO = new UserDAO();
 	int result = userDAO.login(user.getId(), user.getPassword());
 	if(result == 1 ){
 		//Console.write("로그인성공" + user.getID() + " " + userPassword());
 		PrintWriter script = response.getWriter();
 		script.println("<script>");
 		script.println("location.href = 'userManage.jsp'");
 		script.println("</script>");
 	}
 	else if (result == 0){
 		PrintWriter script = response.getWriter();
 		script.println("<script>");
 		script.println("alert('비밀번호가 다릅니다.')");
 		script.println("history.back()");
 		script.println("</script>");
 	}else if (result == -1){
 		PrintWriter script = response.getWriter();
 		script.println("<script>");
 		script.println("alert('아이디가 존재하지 않습니다.')");
 		script.println("history.back()");
 		script.println("</script>");
 	}else if (result == -2){
 		PrintWriter script = response.getWriter();
 		script.println("<script>");
 		script.println("alert('DB 연결 에러')");
 		script.println("history.back()");
 		script.println("</script>");
 	}
 %>


</body>
</html>