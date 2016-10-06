package dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;
import utils.JdbcUtils;
import java.util.ArrayList;
import domain.Records;

public class RecordsDaoImpl 
{
      public static void addRecords(String me,String friend,String records)
      {
          //int me01 = Integer.parseInt(me);
          //int friend01 = Integer.parseInt(friend);
    	  Connection con = null;
    	  PreparedStatement ps = null;
    	  String sql = "insert into records values(null,?,?,?,?)";
    	  try{
    		  con = JdbcUtils.getConn();
    		  ps = con.prepareStatement(sql);
    		  ps.setString(1, records);
    		  ps.setString(2,me);
    		  ps.setString(3, friend);
    		  ps.setDate(4, null);//new java.sql.Date(new Date().getTime())
    		  ps.executeUpdate();//增删查改的执行方法
    		  //ps.executeQuery();
    		  /*if(ps.executeUpdate()>0)
    		  {
    			  return 1;
    		  }*/
    	  }catch(SQLException e)
    	  {
    		  e.printStackTrace();
    	  }finally{
    		  JdbcUtils.close(con, ps, null);
    	  }
    	  //return 0;
}
      
      public List<Records> PrintRecords(int userId,int friendsId)
      {
    	  //System.out.println(userId);
    	  //System.out.println(friendsId);
    	  String user = "'"+userId+"'";
    	  String friend = "'"+friendsId+"'";
    	  List<Records> recordsForU = new ArrayList<Records>();    	 
    	  Connection con = null;
    	  ResultSet rs = null;
    	  PreparedStatement ps = null;    	 
  		  Statement stm = null;
    	  try{
    		  con = JdbcUtils.getConn();
    		  stm = con.createStatement();
    		  /*select * from records where user_id =1 and friends_id =2 
    		  union select * from records where  user_id = 2 and friends_id =1 ORDER BY id*/
    		  /*+" union select * from records where "
		  		+ " user_id = "+friendsId +" and friends_id =" +userId +" ORDER BY id"*/
    		  String sql = "select * from records where user_id = ? and friends_id = ? union select * from records where "
    			  		+ " user_id = ? and friends_id = ? ORDER BY id";
    		  ps = con.prepareStatement(sql);
    		  ps.setString(1, user);
    		  ps.setString(2, friend);
    		  ps.setString(3, friend);
    		  ps.setString(4, user);
    		  rs = ps.executeQuery();
    		  while(rs.next())
    		  {
    			  Records records =new Records(rs.getInt("id"),rs.getString("records")
    					  ,rs.getString("user_id"),rs.getString("friends_id"));
    			  //System.out.println(records);
    			  recordsForU.add(records);
    		  }
    	  }catch(SQLException e){
    	  }finally{
    		  JdbcUtils.close(con, stm, null);
    	  }
		  //System.out.println("The size is" +recordsForU.size());
    	  return recordsForU;
      }
      
      /*public List<Records> sort(List<Records> records)
      {
    	  boolean needNextPass = true;
    	  for(int i =0; i< records.size() && needNextPass;i++)
    	  {
    		  needNextPass = false;
    		  for(int k = 0;k<records.size() - i; i++)
    		  {
    			  if(records)
    		  }
    	  }
    	  return records;
      }*/
      /*public List<Records> PrintRecordsForFriend(int userId,int friendsId)
      {
    	  List<Records> recordsForF = new ArrayList<Records>();
    	  Connection con = null;
    	  PreparedStatement ps = null;
    	  ResultSet rs = null;
  		  Statement stm = null;
    	  try{
    		  con = JdbcUtils.getConn();
    		  stm = con.createStatement();
    		  String sql = "select * from records where user_id ="+friendsId
    				  +" and friends_id ="+userId;
    		  ps = con.prepareStatement(sql);
    		  rs = ps.executeQuery();
    		  while(rs.next())
    		  {
    			  Records records =new Records(rs.getInt("id"),rs.getString("records")
    					  ,rs.getInt("user_id"),rs.getInt("friends_id"),rs.getDate("date"));
    			  recordsForF.add(records);
    		  }
    	  }catch(SQLException e){
    		  e.printStackTrace();
    	  }finally{
    		  JdbcUtils.close(con, stm, rs);
    	  }
    	  return recordsForF;
      }*/
}
