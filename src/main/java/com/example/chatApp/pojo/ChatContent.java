package com.example.chatApp.pojo;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
* Created by Mybatis Generator 2023/07/16
*/
@Data
public class ChatContent implements Serializable {
    private Integer id;

    private Integer senderId;

    private Integer accepterId;

    private Date sendingTime;

    /**
	* 0为删除，1为保留
	*/
    private Boolean senderEnable;

    /**
	* 0为删除，1为保留
	*/
    private Boolean accepterEnable;

    private Date senderDisableTime;

    private Date accepterDisableTime;

    private String content;

    /**
	* 0为失败，1为成功
	*/
    private Boolean sendingStatus;

    /**
	* 0为失败，1为成功
	*/
    private Boolean acceptingStatus;

    /**
	* 0为显示，1为撤回
	*/
    private Boolean rollback;

    private Date rollbackTime;

    /**
	* 0为未读，1为已读
	*/
    private Boolean read;

    private Date readingTime;

    private Integer referenceId;

    /**
	* 0为删除，1为保留
	*/
    private Boolean enable;

    private static final long serialVersionUID = 1L;
}