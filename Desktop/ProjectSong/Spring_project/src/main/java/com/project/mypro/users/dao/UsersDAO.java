package com.project.mypro.users.dao;

import java.util.List;

import com.project.mypro.users.dto.UsersDTO;

public interface UsersDAO {
	public void insert(UsersDTO dto);
	public boolean canUseId(String id);
	public UsersDTO getData(String id);
	public boolean isValid(UsersDTO dto);
	public List<UsersDTO> getList();
	public void delete(String id);
	public void update(UsersDTO dto);

}
