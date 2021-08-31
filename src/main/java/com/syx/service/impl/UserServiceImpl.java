package com.syx.service.impl;

import com.syx.dao.UserDAO;
import com.syx.model.User;
import com.syx.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author:syx
 * @date:2021/8/31 14:57
 * @version:v1.0
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserDAO userDAO;
    @Override
    public int addUser(User user) {
        return userDAO.addUser(user);
    }
}
