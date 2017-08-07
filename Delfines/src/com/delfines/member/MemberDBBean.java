package com.delfines.member;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDBBean {

	/** 공통 코드 시작*/
	private static MemberDBBean instance = new MemberDBBean(); // 객체생성
	
	public static MemberDBBean getInstance(){
		return instance;
	}
	
	private MemberDBBean(){}
	
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/delfines");
		return ds.getConnection();
	}
	/** 공통 코드 끝*/
	
	/** 존재하는 아이디인지 체크하는 메소드 */
	public boolean getMemberID(String id) throws Exception { // 접근지정자, 반환타입, 메소드명, (인자값)
		Connection conn = null; // DB연동
		//PreparedStatement pstmt = null; // 쿼리 실행 변수?
		Statement stmt = null;
		ResultSet rs = null; // 결과값을 담는 변수?
		
		boolean result = false;
		
		try{
			conn = getConnection(); // DB연동 코드
			
			String SQL = "select member_id from TB_MEMBER_INFO";
			SQL += " where member_id='"+id+"'";
			// SQL = select member_id from TB_MEMBER_INFO where member_id='값'
			
			stmt = conn.createStatement(); // DB연동한 conn을 집어넣는 과정인가?
			rs = stmt.executeQuery(SQL); // 실행한 쿼리의 결과 값을 rs에 담는다.
			
			if(rs.next()){ // 실행 한 결과값이 있으면 true, 없으면 false
				result=true;
			}
			
		}catch(Exception ex){
			ex.printStackTrace();
		}finally{ // 반드시 실행되는 문장
			// 자원 반납
			if(rs != null)try{rs.close();}catch(SQLException ex){}
			if(stmt != null)try{stmt.close();}catch(SQLException ex){}
			if(conn != null)try{conn.close();}catch(SQLException ex){}
		}
		
		return result;
		
	}//getMemberID
	
	
	
}
