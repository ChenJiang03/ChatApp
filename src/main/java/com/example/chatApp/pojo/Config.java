package com.example.chatApp.pojo;

import java.io.Serializable;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class Config implements Serializable {
    private Integer id;

    private Integer configKey;

    private String configValue;

    private String defaultValue;

    private String discription;

    /**
	* 0为假删除，1为显示
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;
}