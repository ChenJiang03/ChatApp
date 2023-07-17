package com.example.chatApp.pojo;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class User implements Serializable {
    private Integer id;

    private String username;

    private String password;

    private String name;

    private String phone;

    private String email;

    private String picture;

    private String background;

    /**
	* 0为隐身，1为在线
	*/
    private Boolean online;

    /**
	* 0为离线，1为在线
	*/
    private Boolean realOnline;

    /**
	* 0为禁用，1为可用
	*/
    private Boolean disable;

    private String qrCode;

    private Date inputTime;

    private Date updateTime;

    private String signature;

    private Integer friendNum;

    private Integer blogNum;

    private Date lastLoginTime;

    private String lastLoginIp;

    private Integer loginNum;

    /**
	* 0为删除，1为保留
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;
}