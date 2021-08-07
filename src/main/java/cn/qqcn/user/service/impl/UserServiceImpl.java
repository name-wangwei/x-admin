package cn.qqcn.user.service.impl;

import cn.qqcn.user.entity.User;
import cn.qqcn.user.mapper.UserMapper;
import cn.qqcn.user.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public User login(User user) {
        return userMapper.getUser(user);
    }
}
