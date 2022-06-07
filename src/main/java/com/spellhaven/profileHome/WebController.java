package com.spellhaven.profileHome;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spellhaven.profileHome.dto.BoardDto;
import com.spellhaven.profileHome.dao.IDao;
import com.spellhaven.profileHome.dto.MemberDto;

@Controller
public class WebController {

	@Autowired
	private SqlSession sqlSession; // Spring과 달리 세터 안 만들고 그냥 선언에다 @Autowired 하면 된다. (기억도않나요교수님;;^^)
	
	
	@RequestMapping(value = "/")
	public String home() {
		
		return "index";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		
		return "index";
	}
	
	@RequestMapping(value = "/profile")
	public String profile() {
		
		return "profile";
	}
	
	@RequestMapping(value = "/contact")
	public String contact() {
		
		return "contact";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		
		return "login";
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		
		return "join";
	}
	
	@RequestMapping(value = "/question")
	public String question() {
		
		return "question";
	}
	
	// 회원가입 폼 정보를 post 형식으로 보냈다고 명시해 줘야 한다. 킹받네.
	@RequestMapping(value = "/joinOk", method=RequestMethod.POST)
	public String joinOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		String mname = request.getParameter("mname");
		String memail = request.getParameter("memail");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid);//아이디 존재 여부 체크->존재하면 1이 반환
		
		if (checkId != 1) {
		
			dao.joinDao(mid, mpw, mname, memail);
			
			HttpSession session = request.getSession();
			
			session.setAttribute("id", mid);
			
			model.addAttribute("mname", mname);
			model.addAttribute("mid", mid);
		}
		
		model.addAttribute("checkId", checkId);
		
		return "joinOk";
	}
		
	
	@RequestMapping(value = "/loginOk")
	public String loginOk(HttpServletRequest request, Model model) {
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		int checkId = dao.checkIdDao(mid); // 아이디 존재 여부 체크 -> 존재하면 1 반환
		int checkPw = dao.checkPwDao(mid, mpw); // 아이디와 비밀번호 일치 여부 체크 -> 일치하면 1 반환
		
		model.addAttribute("checkId", checkId);
		model.addAttribute("checkPw", checkPw);
		
		if (checkPw == 1) { // 만약 아이디와 비번이 잘 맞으면, ㅋ?
			
			MemberDto memberDto = dao.loginInfoDao(mid);
			
			HttpSession session = request.getSession();
			
			// 왜 세션에도 이걸 올려야 하나요? 이래야 나중에 이 사람이 질문게시판에 글 쓸 때 작성자 아이디 이름 쓰기 편하지.
			session.setAttribute("id", memberDto.getMid());
			session.setAttribute("name", memberDto.getMname());
			
			// 클라이언트가 샤이니 - View를 할 수 있게 모델에 실어 줘.
			model.addAttribute("mid", memberDto.getMid());
			model.addAttribute("mname", memberDto.getMname());
		}
		
		return "loginOk";
	}
	
	
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		
		session.invalidate(); // 세션 내용 삭제
		
		return "login"; // 로그아웃을 하면 로그인 페이지로 가게 해 놓았다.
	}
	
	
	@RequestMapping(value = "/infoModify")
	public String infoModify(HttpServletRequest request, Model model) { // 웅성웅성 왜 request가 있어야 하는데? 여기서 피지 뽑듯이 세션 뽑아와야 해서...
		
		HttpSession session = request.getSession();
		
		String sessionId = (String) session.getAttribute("id"); // 형변환을 이렇게 할 때가 대부분인데 어떨 때는 엄청 긴 구문(무슨 parseInt 들어가는...)으로 했었다. 뭔 차이일까?
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		MemberDto memberDto = dao.loginInfoDao(sessionId); // 회원정보수정을 하려면 회원정보를 모두 가져와야 하는데, 우리가 옛날에 loginInfoDao를 만들어 놓은 게 있었다. (옛날에는 뭐에 필요해서 만들었더라?)
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModify"; 
	}
	
	
	// 여기부터 6월 7일 복붙, ㅋ
	@RequestMapping(value = "/infoModifyOk")
	public String infoModifyOk(HttpServletRequest request, Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.infoModify(request.getParameter("mpw"), request.getParameter("mname"), request.getParameter("memail"), request.getParameter("mid"));
		
		MemberDto memberDto = dao.loginInfoDao(request.getParameter("mid"));
		
		model.addAttribute("memberDto", memberDto);
		
		return "infoModifyOk";
	}
	
	@RequestMapping(value = "/write")
	public String write(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.writeDao(request.getParameter("qid"), request.getParameter("qname"), request.getParameter("qcontent"), request.getParameter("qemail"));
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/list")
	public String list(Model model) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		ArrayList<BoardDto> boardDtos = dao.listDao();
		
		
		model.addAttribute("qlist", boardDtos);
		
		return "list";
	}
	
	@RequestMapping(value = "/qview")
	public String qview(HttpServletRequest request, Model model) {
		
		String qnum = request.getParameter("qnum");
		IDao dao = sqlSession.getMapper(IDao.class);
		BoardDto boardDto = dao.viewDao(qnum);
		
		model.addAttribute("boardDto", boardDto);
		model.addAttribute("boardId", boardDto.getQid());
		
		return "qview";
	}
	
	@RequestMapping(value = "/boardModify")
	public String boardModify(HttpServletRequest request) {
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		String qnum = request.getParameter("qnum");
		String qname = request.getParameter("qname");
		String qcontent = request.getParameter("qcontent");
		String qemail = request.getParameter("qemail");
		
		dao.boardModify(qname, qcontent, qemail, qnum);
		
		return "redirect:list";
	}
	
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request) {
		
		String qnum = request.getParameter("qnum");
		
		IDao dao = sqlSession.getMapper(IDao.class);
		
		dao.deleteDao(qnum);
		
		return "redirect:list";	
	}
	
}

















