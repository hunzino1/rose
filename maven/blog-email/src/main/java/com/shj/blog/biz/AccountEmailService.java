package com.shj.blog.biz;

public interface AccountEmailService {
    /**
     * 发送html格式邮件
     * @param to 收件地址
     * @param subject 邮件主题
     * @param htmlText 邮件内容，html-Text
     * @throws AccountEmailException
     */
    void sendMail(String to, String subject, String htmlText) throws AccountEmailException;
}
