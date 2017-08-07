<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import = "java.sql.*, java.util.*" %>

<% request.setCharacterEncoding("UTF-8"); %>

<html>
<head>
<title>loginPro</title>
</head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<body>
	<%!
		String rsId, rsPwd;
	%>
	<%	
		rsId = request.getParameter("userid");
		rsPwd = request.getParameter("pwd");
		
		String jdbcUrl="jdbc:mysql://localhost:3306/delfines";
		String id="delfines";
		String pwd="1234";
		Class.forName("com.mysql.jdbc.Driver");
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Statement stmt = null;

		try	{
			conn = DriverManager.getConnection(jdbcUrl, id, pwd);
			String SQL = "select member_id, member_pwd, member_name, member_tel, member_post1, member_post2, member_addr1, member_addr2";
			SQL += " from member";
			SQL += " where member_id='"+rsId+"'";
			SQL += " and member_pwd='"+rsPwd+"'";
			stmt = conn.createStatement();
			rs = stmt.executeQuery(SQL);
			
			if(rs.next()){
				%>
				<script>
					alert("존재o");
				</script>
				<%
			}else{
				%>
				<script>
					alert("존재x");
				</script>
				<% 
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs!=null){try{rs.close();}catch(SQLException e){}}
			if(stmt!=null){try {stmt.close();}catch(SQLException e){}}
			if(conn!=null){try{conn.close();}catch(SQLException e){}}
			if(pstmt!=null) {try{pstmt.close();}catch(SQLException e){}}
		}
	%>
</body>
</html>
