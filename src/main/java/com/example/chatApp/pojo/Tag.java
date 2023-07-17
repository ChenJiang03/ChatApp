package com.example.chatApp.pojo;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class Tag implements Serializable {
    private Integer id;

    private String tagName;

    private Integer tagOrder;

    private Integer userId;

    private Date inputTime;

    private Date updateTime;

    /**
	* 0为假删除，1为显示
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;
}