package com.test.test.domain;

import org.springframework.web.servlet.View;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.Map;



public class TestJsonView implements View
{
    public String getContentType()
{
    return "application/json";
}

    @SuppressWarnings("rawtypes")
    public void render(Map model, HttpServletRequest request,
                       HttpServletResponse response) throws Exception {
        response.setCharacterEncoding("utf-8");
        PrintWriter writer = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        writer.print(model.get("jsonString").toString());
        writer.close();
    }
}
