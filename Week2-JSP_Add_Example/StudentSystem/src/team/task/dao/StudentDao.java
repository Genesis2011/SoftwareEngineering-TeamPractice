package team.task.dao;

import team.task.entity.Student;

public class StudentDao extends BaseDao {
	public int checkAdd(Student s){
		//���ݿ��� teamdb		���ݱ� team
		String sql="INSERT INTO `teamdb`.`team` (`id`, `name`, `gender`) VALUES ('"
				+s.getId()+ "', '"
				+s.getName()+ "', '"
				+s.getGender()+ "')";
		return updateCommon(sql);
	}
}
