package com.example.chatApp.pojo;

import java.io.Serializable;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class BlogPicture implements Serializable {
    private Integer id;

    private Integer blogId;

    private Integer pictureOrder;

    private String picture;

    private static final long serialVersionUID = 1L;
}