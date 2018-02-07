package com.project.mypro.users.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.mypro.users.dto.UsersDTO;

@Repository
public class UserDAOImpl implements UsersDAO {
	
	@Autowired
	private SqlSession session;
	
	@Override    // 멤버 추가 
	public void insert(UsersDTO dto) {
		session.insert("users.insert",dto);
	}
	
	 	@Override
	 	public boolean canUseId(String id) {
	 		// 	 아이디 존재하는 지
	 		
	 		String result = session.selectOne("users.isExistId",id);
	 		
	 		if(result ==null) {
	 			System.out.println("result 는 존재 하는 가"+result);
	 			return true;
	 		}
	 		else {
	 			// 아이디 사용불 가 
	 			System.out.println("result 는 안되"+result);
	 			
	 			return false;
	 		}
	 	}
	 	
		@Override
		public UsersDTO getData(String id) {
			return session.selectOne("users.getData", id);
		}

		@Override
		public boolean isValid(UsersDTO dto) {
		
			return session.selectOne("users.isValid", dto);
		}

		@Override
		public List<UsersDTO> getList() {
			//회원 전체의 정보 가져오기
			return session.selectList("users.getList");

		}

		@Override
		public void delete(String id) {
			session.delete("users.delete", id);
		}

		@Override
		public void update(UsersDTO dto) {
			session.update("users.update",dto);
			
		}
}
