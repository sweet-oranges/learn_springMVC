package com.orange.controller;


import com.orange.entity.User;
import com.orange.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/queryUser")
public class UserController {

    @Autowired
    private UserService userService;

    @ResponseBody
    @RequestMapping("/user")
    public List<User> QueryUser(int id){
        List<User> username = userService.getUserService(id);
        System.out.println(username);
        return username;
    }
}
