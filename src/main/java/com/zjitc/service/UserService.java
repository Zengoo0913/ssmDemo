package com.zjitc.service;

import com.zjitc.bean.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserService {
    User doLogin(String username);
    void doRegist(User user);
    void setPassword(String oldPassword,String newPassword,String username);
    List<User> selectAll(Integer page, Integer size);
    void delUser(int uid);
    void addUser(String username,String password,String uName,String uSex,String uAge,String uDev,String uLev);
    void updUser(@Param("uid")String uid,@Param("username") String username,@Param("password") String password,@Param("uName") String uName,@Param("uSex") String uSex,@Param("uAge") String uAge,@Param("uDev") String uDev,@Param("uLev") String uLev);

}
