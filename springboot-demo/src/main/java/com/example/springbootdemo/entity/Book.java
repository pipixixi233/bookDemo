package com.example.springbootdemo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

@TableName("book")
@Data
public class Book {
    @TableId(type = IdType.AUTO)
    private int id;
    private String name;
    private String type;
    private String author;
    private Double price;
    private String language;
    private String text;
    private String date;
    private String press;
}
