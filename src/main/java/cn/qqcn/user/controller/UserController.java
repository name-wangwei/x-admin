package cn.qqcn.user.controller;

import cn.qqcn.common.vo.Result;
import cn.qqcn.user.entity.User;
import cn.qqcn.user.service.UserService;
import com.wf.captcha.utils.CaptchaUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/login")
    public Result login(User param, @RequestParam("captcha") String captcha, HttpServletRequest request, HttpSession session){
        // 验证码验证
        if (!CaptchaUtil.ver(captcha, request)) {
            return Result.fail("验证码错误！");
        }

        User user = userService.login(param);
        if(user != null){
            BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
            // 参数1是请求密码，参数2是数据库中加密的值
            boolean matches = passwordEncoder.matches(param.getPassword(), user.getPassword());
            if(matches) {
                // 登录成功
                user.setPassword(null);
                session.setAttribute("userInfo", user);
                return Result.success();
            }
        }
        // 登录失败
        return Result.fail("用户名或密码错误！");
    }
}
