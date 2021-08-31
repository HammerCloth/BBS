package com.syx.controller;

import com.syx.model.User;
import com.syx.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author:syx
 * @date:2021/8/31 14:59
 * @version:v1.0
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    @GetMapping("/findAll")
    public String findAll(Model model){
        List<User> all = userService.findAll();
        for (User user:all){
            System.out.println("id" + user.getId());
            System.out.println("name" + user.getName());
        }
        return "hello";
    }
}
