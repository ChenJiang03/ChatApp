package com.example.chatApp.pojo;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class ManagerLog implements Serializable {
    private Integer id;

    private Integer managerId;

    private Date inputTime;

    private String loginIp;

    private static final long serialVersionUID = 1L;
}