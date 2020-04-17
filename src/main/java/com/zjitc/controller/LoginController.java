package com.zjitc.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zjitc.bean.User;

import com.zjitc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("/doLogin.do")
    public String doLogin(String username,String password,HttpSession session){
        User user=userService.doLogin(username);
        if (user!=null){
            if (user.getPassword().equals(password)){
                session.setAttribute("uName",user.getuName());
                session.setAttribute("username",username);
                return "redirect:/pages/mainPage.jsp";
            }else {
                session.setAttribute("msg","密码错误");
                return "redirect:/pages/login.jsp";
            }
        }else{
            session.setAttribute("msg","账号错误");
            return "redirect:/pages/login.jsp";
        }
    }

    @RequestMapping("/doRegist.do")
    public String doRegist(String username,String password,String cpassword,HttpSession session){
        if (userService.doLogin(username)==null){
            if (password.equals(cpassword)){
                userService.doRegist(new User(username,password));
                return "redirect:/pages/mainPage.jsp";
            }else {
                session.setAttribute("rmsg","密码不重复");
                return "redirect:/pages/mainPage.jsp";
            }
        }else{
            session.setAttribute("rmsg","用户已存在");
            return "redirect:/pages/mainPage.jsp";
        }
    }

    @RequestMapping("/doSelectByUsername.do")
    public String doSelectByUsername(String username, HttpSession session){
        User user = userService.doLogin(username);
        System.out.println(user.toString());
        if (user!=null){
            session.setAttribute("uId",user.getuId());
            session.setAttribute("uName",user.getuName());
            session.setAttribute("uSex",user.getuSex());
            session.setAttribute("uAge",user.getuAge());
            session.setAttribute("uDev", user.getuDev());
            session.setAttribute("uLev",user.getuLev());
        }
        return "redirect:/pages/userInfo-list.jsp";
    }

    @RequestMapping("/setPassword.do")
    public String setPassword(String oldPassword,String newPassword,String username){
        User user=userService.doLogin(username);
        if (user.getPassword().equals(oldPassword)&&!newPassword.equals(oldPassword)){
            userService.setPassword(oldPassword,newPassword,username);
        }
        return "redirect:/pages/setPassword.jsp";
    }

    @RequestMapping("/selectAll.do")
    public ModelAndView selectAll(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "5")Integer size){
        List<User> user = userService.selectAll(page, size);
        PageInfo pageInfo=new PageInfo(user);
        ModelAndView mav=new ModelAndView();
        mav.addObject("pageInfo",pageInfo);
        mav.setViewName("/pages/userList.jsp");
        return mav;
    }

    @RequestMapping("/delUser.do")
    public String delUser(int uid){
        userService.delUser(uid);
        return "redirect:/user/selectAll.do";
    }

    @RequestMapping("/addUser.do")
    public String addUser(String username,String password,String uName,String uSex,String uAge,String uDev,String uLev){
        User user1 = userService.doLogin(username);
        if (user1==null){
            userService.addUser(username,password,uName,uSex,uAge,uDev,uLev);
        }
            return "redirect:/user/selectAll.do";
    }

    @RequestMapping("/updUser.do")
    public String updUser(String uid,String username,String password,String uName,String uSex,String uAge,String uDev,String uLev){
        if (userService.doLogin(username)!=null){
            userService.updUser(uid, username, password, uName, uSex, uAge, uDev, uLev);
        }
        return "redirect:/user/selectAll.do";
    }
}
