package com.gmail.ddzhunenko.demo.servlets;

import com.gmail.ddzhunenko.demo.model.User;
import com.gmail.ddzhunenko.demo.services.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/regservlet")
public class RegistrationServlet extends HttpServlet {
    public RegistrationServlet() {
    }

    private User user = new User();
    private UserServiceImpl userService;

    public RegistrationServlet(UserServiceImpl userService) {
        this.userService = userService;
    }




//    private void getData(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//        user.setFirstName(req.getParameter("first_name"));
//        String result = req.getParameter("first_name");
//        user.setSecondName((req.getParameter("last_name")));
//        user.setUserName(req.getParameter("username"));
//        userService.save(user);
//        resp.setContentType("text/html");
//        PrintWriter out = resp.getWriter();
//        out.println("<h3>result is +" + result + "+ </h3>");
//        out.close();
//    }

//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        getData(req, resp);
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String result = req.getParameter("first_name");
//        resp.setContentType("text/html");
//        PrintWriter out = resp.getWriter();
//        out.println("<h3>result is +" + result + "+ </h3>");
//        out.close();

        PrintWriter out = resp.getWriter();
        out.print("<h1>Hello Servlet</h1>");
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String result = req.getParameter("first_name");
        resp.setContentType("text/html");


        PrintWriter out = resp.getWriter();
        out.print("<h1>Hello Servlet +"+result+"+</h1>");

//        https://coderanch.com/t/290863/java/Save-data-JSP-text-box
    }


}
