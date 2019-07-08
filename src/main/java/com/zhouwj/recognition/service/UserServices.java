package com.zhouwj.recognition.service;

import com.zhouwj.recognition.entity.NetUser;
import com.zhouwj.recognition.entity.Users;
import com.zhouwj.recognition.mapper.NetUserMapper;
import com.zhouwj.recognition.mapper.UsersMapper;


import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;

import java.util.List;

@MapperScan("com.zhouwj.recognition.mapper")
@ComponentScan({"com.zhouwj.recognition.mapper"})
@Service
public class UserServices {

   @Autowired
   private UsersMapper usersMapper;
   @Autowired
   private NetUserMapper netUserMapper;

    public boolean loginCheck(Users users){
        NetUser users1 = netUserMapper.selectByPrimaryKey(users.getName());

        if (users1 == null){
            return false;
        }else
            if (users.getName().equals(users1.getUsername())){
                if (users.getPassword().equals(users1.getPassword())){
                     return true;
                     }
            return false;
            }
         else {
             return false;
            }
    }


    public interface UserService{
        List<Users> getAll();
    }
}
