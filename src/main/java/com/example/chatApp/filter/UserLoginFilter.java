package com.example.chatApp.filter;

import com.example.chatApp.pojo.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/userCenter/*")
public class UserLoginFilter implements Filter
{

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException
    {
        HttpServletRequest request=(HttpServletRequest)servletRequest;
        HttpServletResponse response=(HttpServletResponse) servletResponse;

        //如果是登录放行
        String uri = request.getRequestURI();
        if(uri.contains("/userCenter/addFriend")){
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
        HttpSession session=request.getSession();
        User user=(User) session.getAttribute("user");
        if(user==null){
            response.sendRedirect(request.getContextPath()+"/web/login");
            return;
        }
        //放行
        filterChain.doFilter(request,response);
    }
}
