package com.project.mypro.users.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.project.mypro.users.dto.UsersDTO;
import com.project.mypro.users.service.UserService;

@Controller
public class UsersController {
	
	@Autowired
	private UserService userService;
	
	
	// 로그인 폼 요청처리
	@RequestMapping("users/loginform")
	public ModelAndView loginform(ModelAndView mv,HttpServletRequest request) {
		
		
		String url = request.getParameter("url");
		System.out.println(url);
		if(url== null) {
			// url 이null  이 면  root 요청
			url= request.getContextPath()+"/";
		}
		// 로그인 후 이동 할 url 	를  ModelAndView 객체에담자 
		mv.addObject("url",url);
		// view 페이지 정보를 담고
		mv.setViewName("users/loginform");
		
		
		return mv;
		
	}
	// 로그인 요청처리
	@RequestMapping("/users/login")
	public ModelAndView login(@ModelAttribute UsersDTO dto, HttpServletRequest request, HttpSession session){
		ModelAndView mv = userService.login(dto, request);
		mv.setViewName("users/login_result");	
		return mv;		

	}
	// 로그아웃 요청 처리
	@RequestMapping("/users/logout")
	public ModelAndView logout(HttpSession session,ModelAndView mv) {
		String id = (String)session.getAttribute("id");
		// 세션 초기화 // 
		session.invalidate();
		
		mv.addObject("msg",id+"님 로그 아웃 되심");
		mv.setViewName("users/logout_result");
		return mv;
	}
	
	// 회원가입 폼 요청 처리
		@RequestMapping("/users/signup_form")
		public String signup_form() {

			return "users/signup_form";
		}
		// 회원가입 요청 처리
		@RequestMapping("/users/signup")
		public ModelAndView signup(@ModelAttribute UsersDTO dto) {
			// 전달되는 인자에 회원가입 정보가 들어있다.
			ModelAndView mv = userService.signup(dto);
			// 홈으로 이동
			mv.setViewName("users/signup_result");
			return mv;
		}
		// 회원탈퇴
		@RequestMapping("/users/delete")
		public ModelAndView authDelete(HttpServletRequest request) {
			HttpSession session = request.getSession();
			// service를 이용해서 탈퇴처리
			ModelAndView mv = userService.delete(session);
			mv.setViewName("users/delete_result");
			return mv;
		}

		// 아이디 중복 확인 요청 처리
		@RequestMapping("/users/checkid")
		@ResponseBody
		public Map<String, Object> checkid(@RequestParam String inputId) {
			// service를 이용해서 사용가능여부를 boolean type으로 리턴받기
			boolean canUse = userService.canUseId(inputId);
			System.out.println("canUse는" + canUse);
			// Map에 담고 리턴
			Map<String, Object> map = new HashMap<>();
			map.put("canUse", canUse);
			return map;
		}
		
		// 회원정보 수정페이지 이동
		@RequestMapping("/users/updateform")
		public ModelAndView authUpdateForm(HttpServletRequest request){
			HttpSession session = request.getSession();
			
			//  service객체를 이용해서 사용자 정보가 담긴 ModelAndView객체 얻어오기
			ModelAndView mv = new ModelAndView();
			mv.setViewName("users/updateform");
			return mv;
		}
		
		// 회원정보 수정
		@RequestMapping("users/update")
		public String authUpdate(@ModelAttribute UsersDTO dto, HttpServletRequest request){

			// service객체를 이용해서 수정
			userService.update(dto);
			return "redirect:/profile/detail.do";
		}

}
