package com.syx.dao;

import com.syx.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author:syx
 * @date:2021/8/31 14:52
 * @version:v1.0
 */
@Repository
public interface UserDAO {

    List<User> findAll();
}
