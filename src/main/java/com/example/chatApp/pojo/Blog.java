package com.example.chatApp.pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class Blog implements Serializable {
    private Integer id;

//    private Integer userId;

    private User user;

    private String content;

    private Integer likeNum;

    private Integer commentNum;

    private Date inputTime;

    private String visibilityPicture;

    /**
	* 0为私密，1为所有人可见，2为部分人可见
	*/
    private Integer visibility;

    private Date updateTime;

    /**
	* 0为假删除，1为显示
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;
}