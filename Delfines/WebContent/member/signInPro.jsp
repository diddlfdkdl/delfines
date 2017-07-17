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
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Statement stmt = null;

		try	{
			rsId = request.getParameter("userid");
			rsPwd = request.getParameter("pwd");
			
			String jdbcUrl="jdbc:mysql://localhost:3306/delfines";
			String id="delfines";
			String pwd="1234";
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(jdbcUrl, id, pwd);
			
			
			
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
