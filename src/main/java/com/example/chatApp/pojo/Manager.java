package com.example.chatApp.pojo;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class Manager implements Serializable {
    private Integer id;

    private String username;

    private String password;

    private String salt;

    private Date inputTime;

    private String name;

    private Integer loginNum;

    private Date lastLoginTime;

    private String lastLoginIp;

    /**
	* 0为普通管理员，1为超级管理员
	*/
    private Boolean superManager;

    /**
	* 0为假删除，1为显示
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;
}