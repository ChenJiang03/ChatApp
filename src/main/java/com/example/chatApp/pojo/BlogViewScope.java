package com.example.chatApp.pojo;

import java.io.Serializable;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class BlogViewScope implements Serializable {
    private Integer id;

    private Integer blogId;

    private Integer userId;

    /**
	* 0为私密，1为所有人可见，2为部分人可见，3为部分人不可见
	*/
    private Integer visibility;

    private static final long serialVersionUID = 1L;
}