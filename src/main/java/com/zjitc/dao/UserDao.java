package com.zjitc.dao;

import com.zjitc.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {
    User doLogin(@Param("username") String username);
    void doRegist(User user);
    void setPassword(String oldPassword,@Param("password") String newPassword,@Param("username") String username);
    List<User> selectAll();
    void delUser(int uid);
    void addUser(@Param("username") String username,@Param("password") String password,@Param("uName") String uName,@Param("uSex") String uSex,@Param("uAge") String uAge,@Param("uDev") String uDev,@Param("uLev") String uLev);
    void updUser(@Param("uid")String uid,@Param("username") String username,@Param("password") String password,@Param("uName") String uName,@Param("uSex") String uSex,@Param("uAge") String uAge,@Param("uDev") String uDev,@Param("uLev") String uLev);
}
