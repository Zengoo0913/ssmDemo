package com.zjitc.service.serviceImpl;

import com.github.pagehelper.PageHelper;
import com.zjitc.bean.User;
import com.zjitc.dao.UserDao;
import com.zjitc.service.UserService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    private final UserDao userDao;

    public UserServiceImpl(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public User doLogin(String username) {
       return userDao.doLogin(username);
    }

    @Override
    public void doRegist(User user) {
       userDao.doRegist(user);
    }

    @Override
    public void setPassword(String oldPassword, String newPassword,String username) {
        userDao.setPassword(oldPassword,newPassword,username);
    }

    @Override
    public List<User> selectAll(Integer page, Integer size) {
        PageHelper.startPage(page,size);
        return userDao.selectAll();
    }

    @Override
    public void delUser(int uid) {
        userDao.delUser(uid);
    }

    @Override
    public void addUser(String username,String password,String uName,String uSex,String uAge,String uDev,String uLev) {
        userDao.addUser(username,password,uName,uSex,uAge,uDev,uLev);
    }

    @Override
    public void updUser(String uid,String username, String password, String uName, String uSex, String uAge, String uDev, String uLev) {
       userDao.updUser(uid,username,password,uName,uSex,uAge,uDev,uLev);
    }


}
