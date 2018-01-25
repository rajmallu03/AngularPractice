package com.test.service;

import com.test.dao.DatabaseFile;
import details.LoginDetails;

import java.sql.SQLException;
import java.util.List;


/**
 * Created by Jerold Joel on 8/23/2017.
 */
public class SampleService{
    public DatabaseFile databaseFile;
    public DatabaseFile getDatabaseFile()
    {
        return databaseFile;
    }

    public void setDatabaseFile(DatabaseFile databaseFile) {
        this.databaseFile = databaseFile;
    }


    public void register(String name, String email, String mobileNumber, String createPassword, String confirmPassword)
    {
        databaseFile.register(name, email, mobileNumber, createPassword, confirmPassword);
    }


    public  void delete(String email){
        databaseFile.delete(email);
    }

    public LoginDetails login(String email, String createPassword) throws SQLException {

        return databaseFile.login(email, createPassword);
    }

    public  void update1(String name, String email, String mobileNumber, String createPassword, String confirmPassword){
        databaseFile.update1(name, email, mobileNumber, createPassword, confirmPassword);
    }

    public List<LoginDetails> fetchusers() { return databaseFile.fetchusers(); }

//onboard exhibitor

    public void onboards(String category, String theatre, String address, String country, String state, String city, String zip, String types, String counts, String cost, String email, String mobile, String USC)
    {
        databaseFile.onboards(category,theatre,address,country,state,city,zip,types,counts,cost,email,mobile,USC);
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
                               )
    {
        databaseFile.about_theatres(category,theatre_name,address,theatre_type,screen_count,staff_strength,F_and_B,amenities,ownership,mobile,total_capacity,stall,stall_capacity,stall_price,Ustall,Ustall_capacity,Ustall_price,dress_circle,dress_circle_capacity,dress_circle_price,balcony,balcony_capacity,balcony_price,box,box_capacity,box_price,spl_event_price,avg_price,per_walk_in,annual_avg,occupancy,rent_expectations,revenue_sources_f_and_b,F_and_B_rev,parking,parking_rev,local_adver,adver_rev,others,other_rev,perc_overall,additional_rev,eff_tax,avg_annual_rev,screening_system,digital_interest,ticket_booking_system,payment_type,successful_genres,best_release,worst_release,successful_stars,regional_films,english_films,dubbed_films,unique_case,business_insight,future_assessment,publicity,posters,distributors,producers,occupancy_levels);
    }
    public boolean validation(String email) {
        return databaseFile.validation(email);
    }
    public  void update2(String createPassword ,String email){
        databaseFile.update2(createPassword,email);
    }

}
