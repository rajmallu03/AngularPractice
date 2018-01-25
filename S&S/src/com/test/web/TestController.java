package com.test.web;

import com.test.service.SampleService;
import com.test.test.domain.TestJsonView;
import details.LoginDetails;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.multiaction.MultiActionController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;


/**
 * Created by Jerold Joel on 8/23/2017.
 */
public class TestController extends MultiActionController {
    private SampleService sampleService;

    public MailSender getMailsender() {
        return mailsender;
    }

    public void setMailsender(MailSender mailsender) {
        this.mailsender = mailsender;
    }

    private MailSender mailsender;


    public SampleService getSampleService() {
        return sampleService;
    }

    public void setSampleService(SampleService sampleService) {
        this.sampleService = sampleService;
    }

    //To view the Register page
    public ModelAndView showregister(HttpServletRequest request,
                                     HttpServletResponse response) {
        ModelAndView testModel = new ModelAndView();
        testModel.setViewName("showregister");
        return testModel;
    }


    //To insert the registration values into DB
    public ModelAndView register(HttpServletRequest request,
                                 HttpServletResponse response) {
        ModelAndView success = new ModelAndView();

        String name = request.getParameter("name");

        String email = request.getParameter("email");

        String mobileNumber = request.getParameter("mobileNumber");

        String createPassword = request.getParameter("createPassword");

        String confirmPassword = request.getParameter("confirmPassword");


        sampleService.register(name, email, mobileNumber, createPassword, confirmPassword);
        success.setViewName("register1");
        System.out.println("success");

        return success;

    }
    // To view the login page
    public ModelAndView showlogin(HttpServletRequest request,
                                  HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("showlogin");
        return testModel1;
    }

    //To validate the login page

    public ModelAndView login(HttpServletRequest request,
                              HttpServletResponse response) throws SQLException {
        ModelAndView login = new ModelAndView();

        String email = request.getParameter("email");
        String createPassword = request.getParameter("createPassword");
        HttpSession session = request.getSession();

        LoginDetails user = sampleService.login(email, createPassword);
        if (user.getEmail() != null) {
            session.setAttribute("user", user);
            login.setViewName("Grid");
            System.out.println("success");
        } else {
            login.setViewName("login");
            login.addObject("Data", "Invalid UserName/Password");
            System.out.println("failure");
        }

        return login;

    }

    public ModelAndView Listtable(HttpServletRequest request,
                                  HttpServletResponse response) {
        TestJsonView jsonView = new TestJsonView();
        String jsonString = "";
        ModelMap map = new ModelMap();
        HashMap result = new HashMap();
        ObjectMapper mapper = new ObjectMapper();

        try {
            List list = new ArrayList();

            list = sampleService.fetchusers();
            // result.put("isSuccess",true);
            result.put("result", list);
            jsonString = mapper.writeValueAsString(result);
        } catch (Exception e) {
            logger.error(e);
            e.printStackTrace();
        }
        map.addObject("jsonString", jsonString);
        return new ModelAndView(jsonView, map);
    }

    public ModelAndView Grid(HttpServletRequest request,
                             HttpServletResponse response) {
        ModelAndView grid = new ModelAndView();
        List list = new ArrayList();


        list = sampleService.fetchusers();
        grid.addObject("List", list);
        grid.setViewName("Grid");
        return grid;
    }


    //To Edit the values
    public ModelAndView update1(HttpServletRequest request,
                                HttpServletResponse response) {
        ModelAndView view = new ModelAndView();
        String name = request.getParameter("name");

        String email = request.getParameter("email");

        String mobileNumber = request.getParameter("mobileNumber");

        String createPassword = request.getParameter("createPassword");

        String confirmPassword = request.getParameter("confirmPassword");
        //  String passwords = request.getParameter("passwords");

        sampleService.update1(name, email, mobileNumber, createPassword, confirmPassword);

        view.setViewName("Grid");
        return view;
    }
    public ModelAndView delete(HttpServletRequest request,
                               HttpServletResponse response) {
        ModelAndView view = new ModelAndView();


        String email = request.getParameter("email");
        System.out.println(email);

        sampleService.delete(email);

        view.setViewName("Grid");
        return view;
    }
    public ModelAndView logout(HttpServletRequest request,
                               HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();
        HttpSession session = request.getSession();

        session.setAttribute("user", null);
        testModel1.setViewName("showlogin");
        return testModel1;
    }

    public ModelAndView showuser(HttpServletRequest request,
                                  HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("showuser");
        return testModel1;
    }

    // To view the admin_login page
    public ModelAndView showadminlogin(HttpServletRequest request,
                                       HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("showadminlogin");
        return testModel1;
    }




    // To view the sales_agent_login page
    public ModelAndView showsalesagentlogin(HttpServletRequest request,
                                       HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("showsalesagentlogin");
        return testModel1;
    }

    // To view the user_creation_login page
    public ModelAndView showusercreationlogin(HttpServletRequest request,
                                            HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("showusercreationlogin");
        return testModel1;
    }

    // To view the dashboard
    public ModelAndView dashboard(HttpServletRequest request,
                                              HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("dashboard");
        return testModel1;
    }

    // To view the salesAgent
    public ModelAndView salesAgent(HttpServletRequest request,
                                  HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("salesAgent");
        return testModel1;
    }

    // To view the customers
    public ModelAndView customers(HttpServletRequest request,
                                  HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("customers");
        return testModel1;
    }

    // To view the settings
    public ModelAndView settings(HttpServletRequest request,
                                  HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("settings");
        return testModel1;
    }

    // To view the onBoard Entrepreneur
    public ModelAndView entrepreneur(HttpServletRequest request,
                                 HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("entrepreneur");
        return testModel1;
    }

    // To view the onBoard exhibitor
    public ModelAndView exhibitor(HttpServletRequest request,
                                     HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("exhibitor");
        return testModel1;
    }

    //To insert the onboards values into DB
    public ModelAndView onboards(HttpServletRequest request,
                                 HttpServletResponse response) {
        ModelAndView success = new ModelAndView();

        String category = request.getParameter("category");

        String theatre = request.getParameter("theatre");

        String address = request.getParameter("address");

        String country = request.getParameter("country");

        String state = request.getParameter("state");

        String city = request.getParameter("city");

        String zip = request.getParameter("zip");

        String types = request.getParameter("types");

        String counts = request.getParameter("counts");

        String cost = request.getParameter("cost");

        String email = request.getParameter("email");

        String mobile = request.getParameter("mobile");

        String USC = request.getParameter("USC");

        sampleService.onboards(category,theatre,address,country,state,city,zip,types,counts,cost,email,mobile,USC);
        success.setViewName("onboard1");
        System.out.println("success");

        return success;

    }

    // To view the onBoard producer
    public ModelAndView producer(HttpServletRequest request,
                                  HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("producer");
        return testModel1;
    }

    // To view the about Theatre
    public ModelAndView aboutTheatre_en(HttpServletRequest request,
                                 HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("aboutTheatre_en");
        return testModel1;
    }

    public ModelAndView aboutTheatre_ex(HttpServletRequest request,
                                        HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("aboutTheatre_ex");
        return testModel1;
    }

    public ModelAndView aboutTheatre_pr(HttpServletRequest request,
                                        HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("aboutTheatre_pr");
        return testModel1;
    }

    //To insert the about_theatres values into DB
    public ModelAndView about_theatres(HttpServletRequest request,
                                   HttpServletResponse response) {
        ModelAndView success = new ModelAndView();

        String category = request.getParameter("category");
        String theatre_name = request.getParameter("theatre_name");
        String address = request.getParameter("address");
        String theatre_type = request.getParameter("theatre_type");
        String screen_count = request.getParameter("screen_count");
        String staff_strength = request.getParameter("staff_strength");
        String F_and_B = request.getParameter("F_and_B");
        String amenities = request.getParameter("amenities");
        String ownership = request.getParameter("ownership");
        String mobile = request.getParameter("mobile");
        String total_capacity = request.getParameter("total_capacity");
        String stall = request.getParameter("stall");
        String stall_capacity = request.getParameter("stall_capacity");
        String stall_price = request.getParameter("stall_price");
        String Ustall = request.getParameter("Ustall");
        String Ustall_capacity = request.getParameter("Ustall_capacity");
        String Ustall_price = request.getParameter("Ustall_price");
        String dress_circle = request.getParameter("dress_circle");
        String dress_circle_capacity = request.getParameter("dress_circle_capacity");
        String dress_circle_price = request.getParameter("dress_circle_price");
        String balcony = request.getParameter("balcony");
        String balcony_capacity = request.getParameter("balcony_capacity");
        String balcony_price = request.getParameter("balcony_price");
        String box = request.getParameter("box");
        String box_capacity = request.getParameter("box_capacity");
        String box_price = request.getParameter("box_price");
        String spl_event_price = request.getParameter("spl_event_price");
        String avg_price = request.getParameter("avg_price");
        String per_walk_in = request.getParameter("per_walk_in");
        String annual_avg = request.getParameter("annual_avg");
        String occupancy = request.getParameter("occupancy");
        String rent_expectations = request.getParameter("rent_expectations");
        String revenue_sources_f_and_b = request.getParameter("revenue_sources_f_and_b");
        String F_and_B_rev = request.getParameter("F_and_B_rev");
        String parking = request.getParameter("parking");
        String parking_rev = request.getParameter("parking_rev");
        String local_adver = request.getParameter("local_adver");
        String adver_rev = request.getParameter("adver_rev");
        String others = request.getParameter("others");
        String other_rev = request.getParameter("other_rev");
        String perc_overall = request.getParameter("perc_overall");
        String additional_rev = request.getParameter("additional_rev");
        String eff_tax = request.getParameter("eff_tax");
        String avg_annual_rev = request.getParameter("avg_annual_rev");
        String screening_system = request.getParameter("screening_system");
        String digital_interest = request.getParameter("digital_interest");
        String ticket_booking_system = request.getParameter("ticket_booking_system");
        String payment_type = request.getParameter("payment_type");
        String successful_genres = request.getParameter("successful_genres");
        String best_release = request.getParameter("best_release");
        String worst_release = request.getParameter("worst_release");
        String successful_stars = request.getParameter("successful_stars");
        String regional_films = request.getParameter("regional_films");
        String english_films = request.getParameter("english_films");
        String dubbed_films = request.getParameter("dubbed_films");
        String unique_case = request.getParameter("unique_case");
        String business_insight = request.getParameter("business_insight");
        String future_assessment = request.getParameter("future_assessment");
        String publicity = request.getParameter("publicity");
        String posters = request.getParameter("posters");
        String distributors = request.getParameter("distributors");
        String producers = request.getParameter("producers");
        String occupancy_levels = request.getParameter("occupancy_levels");



        sampleService.about_theatres(category,theatre_name,address,theatre_type,screen_count,staff_strength,F_and_B,amenities,ownership,mobile,total_capacity,stall,stall_capacity,stall_price,Ustall,Ustall_capacity,Ustall_price,dress_circle,dress_circle_capacity,dress_circle_price,balcony,balcony_capacity,balcony_price,box,box_capacity,box_price,spl_event_price,avg_price,per_walk_in,annual_avg,occupancy,rent_expectations,revenue_sources_f_and_b,F_and_B_rev,parking,parking_rev,local_adver,adver_rev,others,other_rev,perc_overall,additional_rev,eff_tax,avg_annual_rev,screening_system,digital_interest,ticket_booking_system,payment_type,successful_genres,best_release,worst_release,successful_stars,regional_films,english_films,dubbed_films,unique_case,business_insight,future_assessment,publicity,posters,distributors,producers,occupancy_levels);
        success.setViewName("about_theatre1");
        System.out.println("success");

        return success;

    }
    //otp process

    public ModelAndView otpprocess(HttpServletRequest request,
                                        HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("otpprocess");
        return testModel1;
    }


    public ModelAndView process(HttpServletRequest request,
                                   HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("process");
        return testModel1;
    }

    public ModelAndView otp(HttpServletRequest request,
                                HttpServletResponse response) {
        ModelAndView testModel1 = new ModelAndView();

        testModel1.setViewName("otp");
        return testModel1;
    }



    public ModelAndView showemail(HttpServletRequest request,
                                  HttpServletResponse response)
    {
        ModelAndView testModel1 = new ModelAndView();
        testModel1.setViewName("resetpwrd");
        return testModel1;
    }

    public ModelAndView sendEmail(final HttpServletRequest request,
                                  HttpServletResponse response)
    {

        ModelAndView testModel3 = new ModelAndView();
        testModel3.setViewName("resetpwrd");
        String email = request.getParameter("email");
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject("Change Password");
        message.setText(("Hello,\n\nClick the below link to change password :\n\n http://192.168.137.106:8080/RegistrationSample/sampleController.htm?action=resetpwrd&email="+email+" \n\nThanks,"));

        mailsender.send(message);
        boolean user = sampleService.validation(email);
        if (user)
        {
            testModel3.addObject("Data5", "Mail sent Successfully");
            testModel3.setViewName("resetpwrd");
        }
        else
        {
            mailsender.send(message);
            testModel3.setViewName("resetpwrd");
            System.out.println("success");
        }
        return testModel3;
    }
    public ModelAndView resetpwrd(HttpServletRequest request,
                                  HttpServletResponse response)
    {
        ModelAndView testModel1 = new ModelAndView();
        testModel1.setViewName("newpwrd");
        return testModel1;
    }

    public ModelAndView update2(HttpServletRequest request,
                                HttpServletResponse response)
    {
        ModelAndView view1 = new ModelAndView();
        String email = request.getParameter("email");
        String createPassword = request.getParameter("createPassword");

        sampleService.update2( createPassword,email);
        {
            view1.addObject("Data2", "Password Changed successfully");
        }       view1.setViewName("resetpwrdsucces");
        return view1;
    }


}