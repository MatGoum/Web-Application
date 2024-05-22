package common;

import java.sql.*;
import java.util.ArrayList;
import java.util.Random;

public class Crud {
	
	public Connection conn;
	public Crud() {
		DBConnection obj_DB_Connection=new DBConnection();
		Connection connection=obj_DB_Connection.getConnection();
		this.conn = connection;
	}
	
	public boolean RemoveWorkout(String workoutId) {
		try {
			PreparedStatement ps=null;
			String query="delete from workouts where id = '" + workoutId + "'";
			ps=this.conn.prepareStatement(query);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			return false;
		}			
	}
	
	public boolean InsertMember(String name, String email, String phone) {
		Random r = new Random();
		int id = r.nextInt(1000000);
		try {
			 PreparedStatement ps=null;
			 String query="insert into members values(?,?,?,?)";
			 ps=this.conn.prepareStatement(query);
			 ps.setInt(1, id);
			 ps.setString(2, name);
			 ps.setString(3, email);
			 ps.setString(4, phone);		 
			 ps.executeUpdate();	
			 return true;
		} catch (Exception e) {
			System.err.println(e);
			return false;
		}
	}
	
	public boolean AssignWorkoutToMember(int workoutId, String memberId) {
		try {
			Random r = new Random();
			int id = r.nextInt(1000000);
			PreparedStatement ps=null;
			String query="insert into member_workouts values(?,?,?)";
			ps=this.conn.prepareStatement(query);
			ps.setInt(1, id);
			ps.setInt(2, workoutId);
			ps.setString(3, memberId);
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			return false;
		}			
	}
	
	public boolean EditMember(String id, String name, String email, String phone) {
		try {
			PreparedStatement ps=null;
			String query="update members set name=?, email=?, phone=? where id = ?";
			ps=this.conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, phone);
			ps.setString(4, id);			
			ps.executeUpdate();
			return true;
		} catch (Exception e) {
			return false;
		}			
	}
	
	public boolean InsertWorkout(String type, String level, String duration, String memberId) {
		Random r = new Random();
		int id = r.nextInt(1000000);
		try {
			 PreparedStatement ps=null;
			 String query="insert into workouts values(?,?,?,?)";
			 ps=this.conn.prepareStatement(query);
			 ps.setInt(1, id);
			 
			 String Type = "";
			 if (type.equals("1")) {
				 Type = "Upper body";
			 } 
			 if (type.equals("2")) {
				 Type = "Lower body";
			 } 
			 if (type.equals("3")){
				 Type = "Full body";
			 }
			 ps.setString(2, Type);
			 
			 String Level = "";
			 if (level.equals("1")) {
				 Level = "Beginner";
			 } 
			 if (level.equals("2")) {
				 Level = "Intermediate";
			 } 
			 if (level.equals("3")){
				 Level = "Advanced";
			 }
			 
			 ps.setString(3, Level);
			 ps.setString(4, duration);		 
			 ps.executeUpdate();
			 
			 if (!memberId.equals("") || memberId != null) {
				 AssignWorkoutToMember(id, memberId);
			 }
			 return true;
		} catch (Exception e) {
			System.err.println(e);
			return false;
		}
	}
	
	public ArrayList<String> FetchMembers() {
		
		try {
			 ArrayList<String> resultList = new ArrayList<String>();
			 PreparedStatement ps=null;
			 String query="select * from members";
			 ps=this.conn.prepareStatement(query);			
			 ResultSet res = ps.executeQuery();
			 while (res.next()) {
				 int id = res.getInt("id");
	             String name = res.getString("name");
	             String email = res.getString("email");
	             String phone = res.getString("phone");
	             String rowData = "<form action='controllers/EditController.jsp'>"
	             		+ "<td><input style='border:none;background:transparent;' type='text' name='member_id' value='" + id + "'/></td>"
	             		+ "<td><input style='border:none;background:transparent;' type='text' name='member_name' value='" + name + "'/></td>"
	             		+ "<td><input style='border:none;background:transparent;' type='text' name='member_email' value='" + email + "'/></td>"
	             		+ "<td><input style='border:none;background:transparent;' type='text' name='member_phone' value='" + phone + "'/></td>"
	             		+ "<td><button class='btn btn-dark' type='submit'>Save</button></td>"
	             		+ "</form>";
	             resultList.add(rowData);
			 }
			 return resultList;
		} catch (Exception e) {
			System.err.println(e);
			return new ArrayList<String>();
		}
	}
	
	public ArrayList<String> FetchMembersData() {
		
		try {
			 ArrayList<String> resultList = new ArrayList<String>();
			 PreparedStatement ps=null;
			 String query="select * from members";
			 ps=this.conn.prepareStatement(query);			
			 ResultSet res = ps.executeQuery();
			 while (res.next()) {
				 int id = res.getInt("id");
	             String name = res.getString("name");
	             String email = res.getString("email");
	             String phone = res.getString("phone");
	             String rowData = "<td>" + id + "</td>" 
	            		 + "<td>" + name + "</td>"
	            		 + "<td>" + email + "</td>"
	            		 + "<td>" + phone + "</td>";
	             		
	             resultList.add(rowData);
			 }
			 return resultList;
		} catch (Exception e) {
			System.err.println(e);
			return new ArrayList<String>();
		}
	}
	
	
	public ArrayList<String> FetchWorkouts() {
		
		try {
			 ArrayList<String> resultList = new ArrayList<String>();
			 PreparedStatement ps=null;
			 String query="select * from workouts";
			 ps=this.conn.prepareStatement(query);			
			 ResultSet res = ps.executeQuery();
			 while (res.next()) {
				 int id = res.getInt("id");
	             String type = res.getString("type");
	             String level = res.getString("level");
	             String duration = res.getString("duration");
	             String rowData = "<td>" + id + "</td><td>" + type + "</td><td>" + level + "</td><td>" + duration + "</td>";
	             resultList.add(rowData);
			 }
			 return resultList;
		} catch (Exception e) {
			System.err.println(e);
			return new ArrayList<String>();
		}
	}
}
