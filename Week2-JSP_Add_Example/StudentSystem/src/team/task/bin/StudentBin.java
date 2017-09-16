package team.task.bin;

import team.task.dao.StudentDao;
import team.task.entity.Student;

public class StudentBin {
	public boolean addStudent(Student s){
		StudentDao sd=new StudentDao();
		if (sd.checkAdd(s)>0) {
			return true;
		} else {
			return false;
		}
	}
}
