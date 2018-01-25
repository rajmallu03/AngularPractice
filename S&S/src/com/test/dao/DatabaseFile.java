package com.test.dao;

import details.LoginDetails;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.transaction.PlatformTransactionManager;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

/**
 * Created by Jerold Joel on 8/23/2017.
 */
public class DatabaseFile extends JdbcDaoSupport {
    private PlatformTransactionManager transactionManager;

    public void setTransactionManager(
            PlatformTransactionManager transactionManager) {
        this.transactionManager = transactionManager;
    }


    public PlatformTransactionManager getTransactionManager() {
        return this.transactionManager;
    }

    public void register(String name, String email, String mobileNumber, String createPassword, String confirmPassword) {
        String sql = "insert into smp (name,email,mobileNumber,createPassword,confirmPassword) VALUES(?,?,?,?,?)";
        Object[] paramsObj = new Object[]{name, email, mobileNumber, createPassword,confirmPassword};
        getJdbcTemplate().update(sql, paramsObj);
    }





    public LoginDetails login(String email, String createPassword) {

        String sql = "select name,email,mobileNumber,createPassword,confirmPassword from smp WHERE email=? AND createPassword=?";
        Object[] paramsObj = new Object[]{email, createPassword};
        List<LoginDetails> user =  getJdbcTemplate().query(sql, paramsObj, new ClientMapper());
        LoginDetails login = new LoginDetails();
        if (user.size() >= 1) {
            login = user.get(0);
        }
        return login;
    }


    private static final class ClientMapper implements RowMapper {

        public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
            LoginDetails login = new LoginDetails();
            login.setEmail(rs.getString("email"));
            login.setCreatePassword(rs.getString("createPassword"));
            return login;
        }
    }

    public List<LoginDetails> fetchusers() {
        String sql = "SELECT name,email,mobileNumber,createPassword,confirmPassword FROM smp";
        List clients = getJdbcTemplate().query(sql, new Object[]{}, new int[]{}, new ClientMapper2());
        return clients;
    }

    private final class ClientMapper2 implements RowMapper {

        public Object mapRow(ResultSet rs, int rowNum) throws SQLException {

            LoginDetails login = new LoginDetails();
            login.setName(rs.getString("name"));
            login.setEmail(rs.getString("email"));
            login.setMobileNumber(rs.getString("mobileNumber"));
            login.setCreatePassword(rs.getString("createPassword"));
            login.setConfirmPassword(rs.getString("confirmPassword"));
            return login;
        }
    }

    public boolean validation(String email) {

        String sql = "SELECT email FROM smp WHERE email=?";
        Object[] paramsObj = new Object[]{email};

        List user = getJdbcTemplate().query(sql, paramsObj, new ClientMapper3());
        boolean userExists = false;
        if (user.size() >= 1) {
            userExists = true;
        }
        return userExists;
    }

    private static final class ClientMapper3 implements RowMapper {
        public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
            HashMap map = new HashMap();
            map.put("email", rs.getString("email"));
            return map;
        }

    }

    public void update2(String createPassword,String email)
    {

        String sql= "UPDATE smp SET createPassword=? WHERE email=?";
        Object[] paramsObj = new Object[]{createPassword,email};
        getJdbcTemplate().update(sql, paramsObj);
    }

    public void update1(String name, String email, String mobileNumber, String createPassword, String confirmPassword) {
        String sql = "UPDATE smp SET name=?,email=?,mobileNumber=?,createPassword=?,confirmPassword=? WHERE email=?";
        Object[] paramsObj = new Object[]{name, email, mobileNumber, createPassword, confirmPassword};
        getJdbcTemplate().update(sql, paramsObj);
    }

    public void delete(String email) {
        String sql = "Delete from smp WHERE email=?";
        Object[] paramsObj = new Object[]{email};
        getJdbcTemplate().update(sql, paramsObj);
    }


    //onboard exhibitor, producer, entrepreneur

    public void onboards(String category, String theatre, String address, String country, String state, String city, String zip, String types, String counts, String cost, String email, String mobile, String USC) {
        String sql = "insert into onboard (category, theatre,address,country,state,city,zip,types,counts,cost,email,mobile,USC) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Object[] paramsObj = new Object[]{category, theatre,address,country,state,city,zip,types,counts,cost,email,mobile,USC};
        getJdbcTemplate().update(sql, paramsObj);
    }

    //about theatre

    public void about_theatres(String category,
                               String theatre_name,
                               String address,
                               String theatre_type,
                               String screen_count,
                               String staff_strength,
                               String F_and_B,
                               String amenities,
                               String ownership,
                               String mobile,
                               String total_capacity,
                               String stall,
                               String stall_capacity,
                               String stall_price,
                               String Ustall,
                               String Ustall_capacity,
                               String Ustall_price,
                               String dress_circle,
                               String dress_circle_capacity,
                               String dress_circle_price,
                               String balcony,
                               String balcony_capacity,
                               String balcony_price,
                               String box,
                               String box_capacity,
                               String box_price,
                               String spl_event_price,
                               String avg_price,
                               String per_walk_in,
                               String annual_avg,
                               String occupancy,
                               String rent_expectations,
                               String revenue_sources_f_and_b,
                               String F_and_B_rev,
                               String parking,
                               String parking_rev,
                               String local_adver,
                               String adver_rev,
                               String others,
                               String other_rev,
                               String perc_overall,
                               String additional_rev,
                               String eff_tax,
                               String avg_annual_rev,
                               String screening_system,
                               String digital_interest,
                               String ticket_booking_system,
                               String payment_type,
                               String successful_genres,
                               String best_release,
                               String worst_release,
                               String successful_stars,
                               String regional_films,
                               String english_films,
                               String dubbed_films,
                               String unique_case,
                               String business_insight,
                               String future_assessment,
                               String publicity,
                               String posters,
                               String distributors,
                               String producers,
                               String occupancy_levels
    ) {
        String sql = "insert into about_theatre (category,theatre_name,address,theatre_type,screen_count,staff_strength,F_and_B,amenities,ownership,mobile,total_capacity,stall,stall_capacity,stall_price,Ustall,Ustall_capacity,Ustall_price,dress_circle,dress_circle_capacity,dress_circle_price,balcony,balcony_capacity,balcony_price,box,box_capacity,box_price,spl_event_price,avg_price,per_walk_in,annual_avg,occupancy,rent_expectations,revenue_sources_f_and_b,F_and_B_rev,parking,parking_rev,local_adver,adver_rev,others,other_rev,perc_overall,additional_rev,eff_tax,avg_annual_rev,screening_system,digital_interest,ticket_booking_system,payment_type,successful_genres,best_release,worst_release,successful_stars,regional_films,english_films,dubbed_films,unique_case,business_insight,future_assessment,publicity,posters,distributors,producers,occupancy_levels)" +
                "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        Object[] paramsObj = new Object[]{category,theatre_name,address,theatre_type,screen_count,staff_strength,F_and_B,amenities,ownership,mobile,total_capacity,stall,stall_capacity,stall_price,Ustall,Ustall_capacity,Ustall_price,dress_circle,dress_circle_capacity,dress_circle_price,balcony,balcony_capacity,balcony_price,box,box_capacity,box_price,spl_event_price,avg_price,per_walk_in,annual_avg,occupancy,rent_expectations,revenue_sources_f_and_b,F_and_B_rev,parking,parking_rev,local_adver,adver_rev,others,other_rev,perc_overall,additional_rev,eff_tax,avg_annual_rev,screening_system,digital_interest,ticket_booking_system,payment_type,successful_genres,best_release,worst_release,successful_stars,regional_films,english_films,dubbed_films,unique_case,business_insight,future_assessment,publicity,posters,distributors,producers,occupancy_levels};
        getJdbcTemplate().update(sql, paramsObj);
    }




}



