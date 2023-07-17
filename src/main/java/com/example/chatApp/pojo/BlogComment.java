package com.example.chatApp.pojo;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class BlogComment implements Serializable {
    private Integer id;

    private Integer userId;

    private Integer content;

    private Integer blogId;

    private Integer parentId;

    private Date inputTime;

    private Boolean enable;

    private static final long serialVersionUID = 1L;
}