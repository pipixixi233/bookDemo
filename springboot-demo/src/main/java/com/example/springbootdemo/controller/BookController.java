package com.example.springbootdemo.controller;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.springbootdemo.Result.Result;
import com.example.springbootdemo.entity.Book;
import com.example.springbootdemo.mapper.Bookmapper;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/book")
public class BookController {
    @Resource
    Bookmapper bookmapper;
    @PostMapping
    public Result<?> save(@RequestBody Book book){
        bookmapper.insert(book);
        return Result.success();
    }
    @PutMapping
    public Result<?> update(@RequestBody Book book){
        bookmapper.updateById(book);
        return Result.success();
    }
    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id){
        bookmapper.deleteById(id);
        return Result.success();
    }
    //批量删除
    @PostMapping("/deleteBatch")
    public Result<?> deleteBatch(@RequestBody List<Integer> ids)
    {
        //JSON数组ids通过RequestBody接收
        //调用mybaties-plus 的deleteBatchIds方法进行批量删除删除
        bookmapper.deleteBatchIds(ids);
        return Result.success();
    }

    @GetMapping
    public Result<?> findPage(@RequestParam(defaultValue = "1") Integer pageNum,
                              @RequestParam(defaultValue = "10") Integer pageSize,
                              @RequestParam(defaultValue = "") String search){
        LambdaQueryWrapper<Book> wrapper=Wrappers.<Book>lambdaQuery();
        if (StrUtil.isNotBlank(search)){
            wrapper.like(Book::getName,search);
        }
        Page<Book> bookPage=bookmapper.selectPage(new Page<>(pageNum,pageSize),wrapper);
        return Result.success(bookPage);

    }

}
