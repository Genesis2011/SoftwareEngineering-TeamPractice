package team.task.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class BaseDao {
	private String driverStr="com.mysql.jdbc.Driver";
	private String url="jdbc:mysql://localhost:3306/mydb?characterEncoding=UTF-8";
	private String user="root";
	private String pwd="";
	//�����ݿ�����
	public Connection openConnection(){
		Connection con=null;
		try {
			Class.forName(driverStr);
			con=DriverManager.getConnection(url, user, pwd);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
	}
	//�ر����ݿ�����
	public void closeAll(Connection con, Statement st, ResultSet rs){
		try {
			if(rs!=null)
				rs.close();
			if(st!=null)
				st.close();
			if(con!=null)
				con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	//�޸�ͨ�÷���
	public int updateCommon(String sql){
		Connection con=null;
		Statement st=null;
		int rel=0;
		try {
			con=openConnection();
			st=con.createStatement();
			rel=st.executeUpdate(sql);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			closeAll(con,st,null);
		}
		return rel;
	}
}
