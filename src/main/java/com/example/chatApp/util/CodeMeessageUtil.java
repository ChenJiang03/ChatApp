package com.example.chatApp.util;

import com.aliyun.dysmsapi20170525.models.SendSmsRequest;
import com.aliyun.dysmsapi20170525.models.SendSmsResponse;
import com.aliyun.teaopenapi.models.Config;

import java.util.Random;

public class CodeMeessageUtil
{
    public static com.aliyun.dysmsapi20170525.Client createClient(String accessKeyId, String accessKeySecret) throws Exception {
        Config config = new Config();
        config.accessKeyId = accessKeyId;
        config.accessKeySecret = accessKeySecret;
        return new com.aliyun.dysmsapi20170525.Client(config);
    }

    public static String sendCode (String phone)
    {
        try
        {
            com.aliyun.dysmsapi20170525.Client client = CodeMeessageUtil.createClient("LTAI5tN7bm6eVC1ARDBoiehY","gCIOF46WdRLHODEFXjdPsnXjKrvY21");
            // 1.发送短信
            String code1 = 1000+new Random().nextInt(9000)+"";
            SendSmsRequest sendReq = new SendSmsRequest()
                    .setPhoneNumbers(phone)
                    .setSignName("畅聊App")
                    .setTemplateCode("SMS_462000537")
                    .setTemplateParam("{\"code\":\""+code1+"\"}");
            SendSmsResponse sendResp = client.sendSms(sendReq);
            String code = sendResp.body.code;
            if (!com.aliyun.teautil.Common.equalString(code, "OK")) {
                com.aliyun.teaconsole.Client.log("错误信息: " + sendResp.body.message + "");
                return null;
            }
            return code1;
        }
        catch (Exception e)
        {
            e.printStackTrace();
            return null;
        }
    }
}
