package com.test;

/**
 * Created by Jerold Joel on 8/24/2017.
 */


import details.LoginDetails;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SessionLogin extends HandlerInterceptorAdapter {

    public boolean preHandle (HttpServletRequest request,
                              HttpServletResponse response,
                              Object handler) throws Exception
    {

        HttpSession session=request.getSession();
        LoginDetails login=(LoginDetails) session.getAttribute("User");

        if(login==null ){

            response.sendRedirect("sampleController.htm?action=showlogin");
            return false;
        }
        else
        {
            return true;
        }


    }

}
