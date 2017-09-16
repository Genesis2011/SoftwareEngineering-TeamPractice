package team.task.dao;

import team.task.entity.Student;

public class StudentDao extends BaseDao {
	public int checkAdd(Student s){
		//数据库名 teamdb		数据表 team
		String sql="INSERT INTO `teamdb`.`team` (`id`, `name`, `gender`) VALUES ('"
				+s.getId()+ "', '"
				+s.getName()+ "', '"
				+s.getGender()+ "')";
		return updateCommon(sql);
	}
}
