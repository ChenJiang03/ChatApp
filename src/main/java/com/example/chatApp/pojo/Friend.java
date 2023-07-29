package com.example.chatApp.pojo;

import java.io.Serializable;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class Friend implements Serializable {
    private Integer id;

    private User sender;

    private User accepter;

    private String senderNickname;

    private String accepterNickname;

    private FriendRequest friendRequest;

    /**
	* 0为删除，1为保留
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;
}