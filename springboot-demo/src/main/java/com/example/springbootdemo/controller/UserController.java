package com.example.springbootdemo.controller;


import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springbootdemo.Result.Result;
import com.example.springbootdemo.entity.User;
import com.example.springbootdemo.mapper.Usermapper;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.lang.invoke.LambdaConversionException;
import java.sql.Wrapper;

@RestController
@RequestMapping("/user")
public class UserController {
    @Resource
    Usermapper usermapper;
    @PostMapping
    public Result<?> save(@RequestBody User user){
        usermapper.insert(user);
        return Result.success();
    }
    @GetMapping("/{id}")
    public Result<?> Selectid(@PathVariable Long id){
      return Result.success(usermapper.deleteById(id));
    }
    @GetMapping
    public Result<?> findPage(@RequestParam(defaultValue = "1") Integer pageNum,
                              @RequestParam(defaultValue = "10") Integer pageSize,
                              @RequestParam(defaultValue = "") String search){
        LambdaQueryWrapper<User> wrapper= Wrappers.<User>lambdaQuery();
        if (StrUtil.isNotBlank(search)){
            wrapper.like(User::getNick_name,search);
        }
        Page<User> userPage=usermapper.selectPage(new Page<>(pageNum,pageSize),wrapper);
        return  Result.success(userPage);
    }
    @PutMapping
    public Result<?> update(@RequestBody User user ){
        usermapper.updateById(user);
        return Result.success();
    }
    @DeleteMapping("/{id}")
    public  Result<?> delete(@PathVariable long id){
        usermapper.deleteById(id);
        return Result.success();
    }
    @PostMapping("/login")
    public Result<?> login(@RequestBody User user){
        User res=usermapper.selectOne(Wrappers.<User>lambdaQuery().eq(User::getUsername,user.getUsername()).eq(User::getPassword,user.getPassword()));
        if(res ==null){
            return Result.error("-1","用户名或者密码错误");
        }
        return Result.success(res);
    }
    @PostMapping("/register")
    public Result<?> register(@RequestBody User user){
        User res=usermapper.selectOne(Wrappers.<User>lambdaQuery().eq(User::getUsername,user.getUsername()));
        if(res !=null){
            return Result.error("-1","用户名重复！");
        }
        if(user.getPassword()==null){
            user.setPassword("123456");
        }
        usermapper.insert(user);
        return Result.success();
    }

}
