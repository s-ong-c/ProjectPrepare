package com.project.mypro.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.project.mypro.users.dto.UsersDTO;

public interface UserService {
	
	public ModelAndView signup(UsersDTO dto);
	public boolean canUseId(String id);
	public ModelAndView login(UsersDTO dto,HttpServletRequest request);
	public void update(UsersDTO dto);
	public ModelAndView delete(HttpSession session);
	public ModelAndView getList();
	public UsersDTO getData(String id);

}
