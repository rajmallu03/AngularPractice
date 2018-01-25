
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@page session="true"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Login Form</title>
    <link rel="stylesheet" href="resources/screen1/styles/form_basic.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



</head>

<form class="form-basic" id="msform" method="post" action="sampleController.htm?action=about_theatres">
    <!-- progressbar -->
    <ul id="progressbar">

        <li class="active"><span class="fa-stack fa-2x">
  <i class="fa fa-circle fa-stack-2x icon-background1"></i><i class="fa fa-film fa-stack-1x" aria-hidden="true" style="font-size:30px;color:white;"></i></span><br></li>
        <li><span class="fa-stack fa-2x">
  <i class="fa fa-circle fa-stack-2x icon-background1"></i><i class="fa fa-cubes fa-stack-1x" aria-hidden="true" style="font-size:30px;color:white;"></i></span><br></li>
        <li><span class="fa-stack fa-2x">
  <i class="fa fa-circle fa-stack-2x icon-background1"></i><i class="fa fa-inr fa-stack-1x" aria-hidden="true" style="font-size:30px;color:white;"></i></span><br></li>
        <li><span class="fa-stack fa-2x">
  <i class="fa fa-circle fa-stack-2x icon-background1"></i><i class="fa fa-cogs fa-stack-1x" aria-hidden="true" style="font-size:30px;color:white;"></i></span><br></li>
        <li><span class="fa-stack fa-2x">
  <i class="fa fa-circle fa-stack-2x icon-background1"></i><i class="fa fa-eye fa-stack-1x" aria-hidden="true" style="font-size:30px;color:white;"></i></span><br></li>
        <li><span class="fa-stack fa-2x">
  <i class="fa fa-circle fa-stack-2x icon-background1"></i><i class="fa fa-circle-o-notch fa-stack-1x" aria-hidden="true" style="font-size:30px;color:white;"></i></span><br></li>
    </ul>

    <div id="field_size">

        <fieldset>

            <div class="form-title-row">
                <h1>About Theatre</h1>
            </div>
            <div class="auto">
                <div class="form-row">
                    <label>
                        <span>Category:</span>
                        <input type="text" name="category" Value="Entrepreneur" readonly>
                    </label>
                </div>
            <div class="form-row">
                <label>
                    <span>Theatre Name:</span>
                    <input type="text" name="theatre_name" Value="APPORVA" readonly>
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Address:</span>
                    <textarea name="address" style="height: 60px;" readonly>Ameerpet, Bahadurpura, Telangana,Hyderabad- 500264, India</textarea>
                </label>
            </div>
            <div class="form-row">
                <label><span>Theatre Type:</span></label>
                <div class="form-radio-buttons">

                    <div>
                        <label>
                            <input type="radio" name="theatre_type" value="single">
                            <span>Single&nbsp&nbsp</span>
                        </label>
                        <label>
                            <input type="radio" name="theatre_type" value="multiple"checked>
                            <span>Multiple</span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <label>
                    <span>Screen Count:</span>
                    <input type="text" name="screen_count" Value="20" readonly>
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Staff Strength:</span>
                    <input type="text" name="staff_strength">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>F&B Business:</span>
                    <select name="F_and_B">
                        <option>Self Owned</option>
                        <option>Out Sourced</option>
                        <option>Partnered</option>
                    </select>
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Other Amenities:</span>
                    <input type="text" name="amenities">
                </label>
            </div>
            <div class="form-row">
                <label><span>Ownership:</span></label>
                <div class="form-radio-buttons">

                    <div>
                        <label>
                            <input type="radio" name="ownership" value="Proprietary">
                            <span>Proprietary&nbsp&nbsp</span>
                        </label>
                        <label>
                            <input type="radio" name="ownership" value="Partnership">
                            <span>Partnership&nbsp&nbsp</span>
                        </label>
                        <label>
                            <input type="radio" name="ownership">
                            <span>Company</span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <label>
                    <span>Contact Details:</span>
                    <input type="text" name="mobile">
                </label>
            </div>
            </div>

            <input type="button" name="next" class="next action-button" value="Next" />


        </fieldset>

        <fieldset>

            <div class="form-title-row">
                <h1>About The Inventory</h1>
            </div>
            <div class="auto">
            <div class="form-row">
                <label>
                    <span>Total Capacity:</span>
                    <input type="text" name="total_capacity">
                </label>
            </div>
            <div>
                <table id="form-table">
                    <tr>

                        <th>Seating&nbspCategory</th>
                        <th>Category Capacity</th>
                        <th>Ticket Price</th>
                    </tr>
                    <tr>
                        <td><span>Stall&nbsp&nbsp</span><input type="checkbox" name="stall" value="Stall"/></td>
                        <td><input type="text" name="stall_capacity" style="width: 130px;"/></td>
                        <td><input type="text" name="stall_price"style="width: 130px;"/></td>
                    </tr>
                    <tr>
                        <td><span>U Stall&nbsp&nbsp</span><input type="checkbox" name="Ustall" value="U Stall"/></td>
                        <td><input type="text" name="Ustall_capacity" style="width: 130px;" /></td>
                        <td><input type="text" name="Ustall_price" style="width: 130px;"/></td>
                    </tr>
                    <tr>
                        <td><span>Dress&nbspCircle&nbsp&nbsp</span><input type="checkbox" name="dress_circle" value="Dress Circle"/></td>
                        <td><input type="text" name="dress_circle_capacity" style="width: 130px;"/></td>
                        <td><input type="text" name="dress_circle_price" style="width: 130px;"/></td>
                    </tr>
                    <tr>
                        <td><span>Balcony&nbsp&nbsp</span><input type="checkbox" name="balcony" value="Balcony"/></td>
                        <td><input type="text" name="balcony_capacity" style="width: 130px;"/></td>
                        <td><input type="text" name="balcony_price" style="width: 130px;"/></td>
                    </tr>
                    <tr>
                        <td><span>Box&nbsp&nbsp</span><input type="checkbox" name="box" value="Box"/></td>
                        <td><input type="text" name="box_capacity" style="width: 130px;"/></td>
                        <td><input type="text" name="box_price" style="width: 130px;"/></td>
                    </tr>

                </table>
            </div>
            <div class="form-row">
                <label>
                    <span>Spl. Event Price(If):</span>
                    <input type="text" name="spl_event_price">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Avg. Price Realization:</span>
                    <input type="text" name="avg_price">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>% of Walk-In Vs. Advance:</span>
                    <input type="text" name="per_walk_in">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Annual Avg. Occupancy:</span>
                    <input type="text" name="annual_avg">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Occupancy for break even show:</span>
                    <input type="text" name="occupancy">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Minimum Rent Expectations:</span>
                    <input type="text" name="rent_expectations">
                </label>
            </div>
            </div>
            <input type="button" name="previous" class="previous action-button" value="Previous" />
            <input type="button" name="next" class="next action-button" value="Next" />


        </fieldset>

        <fieldset>

            <div class="form-title-row">
                <h1>About  Revenues</h1>
            </div>
            <div class="auto">
            <div>
                <table id="form-table">
                    <tr>

                        <th>Revenue&nbspSources</th>
                        <th>% of Revenues</th>
                    </tr>
                    <tr>
                        <td><span>F&B&nbsp&nbsp</span><input type="checkbox" name="revenue_sources_f_and_b" value="F&B"/></td>
                        <td><input type="text" name="F_and_B_rev"/></td>

                    </tr>
                    <tr>
                        <td><span>Parking&nbsp&nbsp</span><input type="checkbox" name="parking" value="Parking"/></td>
                        <td><input type="text" name="parking_rev"/></td>
                    </tr>
                    <tr>
                        <td><span>Local&nbspAdvertising&nbsp&nbsp</span><input type="checkbox" name="local_adver" value="Local Advertising"/></td>
                        <td><input type="text" name="adver_rev"/></td>
                    </tr>
                    <tr>
                        <td><span>Others&nbsp&nbsp</span><input type="checkbox" name="others" value="Others"/></td>
                        <td><input type="text" name="other_rev"/></td>
                    </tr>
                </table>
            </div>
            <div class="form-row">
                <label>
                    <span>% of overall Revenues:</span>
                    <input type="text" name="perc_overall">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Additional Revenues:</span>
                    <input type="text" name="additional_rev">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Effective Tax Rate:</span>
                    <input type="text" name="eff_tax">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>3 Year Avg. Annual Rev:</span>
                    <input type="text" name="avg_annual_rev">
                </label>
            </div>
            </div>
            <input type="button" name="previous" class="previous action-button" value="Previous" />
            <input type="button" name="next" class="next action-button" value="Next" />

        </fieldset>

        <fieldset>

            <div class="form-title-row">
                <h1>About  Technology</h1>
            </div>
            <div class="auto">
            <div class="form-row">
                <label><span>Present Screening System:</span></label>
                <div class="form-radio-buttons">

                    <div>
                        <label>
                            <input type="radio" name="screening_system" value="Analogue">
                            <span>Analogue&nbsp&nbsp</span>
                        </label>
                        <label>
                            <input type="radio" name="screening_system" value="Digital">
                            <span>Digital</span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <label><span>Interest in Digital:</span></label>
                <div class="form-radio-buttons">

                    <div>
                        <label>
                            <input type="radio" name="digital_interest" value="Yes">
                            <span>Yes</span>
                        </label>
                        <label>
                            <input type="radio" name="digital_interest" value="No">
                            <span>No</span>
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <label>
                    <span>Ticket Booking System:</span>
                    <select name="ticket_booking_system">
                        <option>Manual Chart</option>
                        <option>BMS</option>
                        <option>In-House Digital</option>
                    </select>
                </label>
            </div>
            <div class="form-row">
                <label><span>Accepted Payment type:</span></label>
                <div class="form-radio-buttons">

                    <div>
                        <label>
                            <input type="radio" name="payment_type" value="Cash">
                            <span>Cash Only&nbsp&nbsp</span>
                        </label>
                        <label>
                            <input type="radio" name="payment_type" value="Card">
                            <span>Accept Card&nbsp&nbsp</span>
                        </label>
                        <label>
                            <input type="radio" name="payment_type" value="Online">
                            <span>Online&nbsp&nbsp</span>
                        </label>
                        <label>
                            <input type="radio" name="payment_type" value="All">
                            <span>All</span>
                        </label>
                    </div>
                </div>
            </div>
            </div>
            <input type="button" name="previous" class="previous action-button" value="Previous" />
            <input type="button" name="next" class="next action-button" value="Next" />

        </fieldset>
        <fieldset>

            <div class="form-title-row">
                <h1>About Local Insights</h1>
            </div>
            <div class="auto">
            <div class="form-row">
                <label>
                    <span>Successful Genres:</span>
                    <input type="text" name="successful_genres">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Best Release Period:</span>
                    <select name="best_release">
                        <option>1990-1992</option>
                        <option>1993-1995</option>
                        <option>1996-1998</option>
                    </select>
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Worst Release Period:</span>
                    <select name="worst_release">
                        <option>1992-1994</option>
                        <option>1995-1996</option>
                        <option>1997-1998</option>
                    </select>
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>List Successful Stars:</span>
                    <input type="text" name="successful_stars">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>About Regional Films:</span>
                    <input type="text" name="regional_films">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>About English Films:</span>
                    <input type="text" name="english_films">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>About Dubbed Films:</span>
                    <input type="text" name="dubbed_films">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Unique Case:</span>
                    <input type="text" name="unique_case">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Business Insight:</span>
                    <input type="text" name="business_insight">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>Future Assessment:</span>
                    <input type="text" name="future_assessment">
                </label>
            </div>
            </div>

            <input type="button" name="previous" class="previous action-button" value="Previous" />
            <input type="button" name="next" class="next action-button" value="Next" />

        </fieldset>

        <fieldset>

            <div class="form-title-row">
                <h1>About  Other Things</h1>
            </div>
            <div class="auto">
            <div class="form-row">
                <label>
                    <span>About Publicity:</span>
                    <input type="text" name="publicity">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>About Posters:</span>
                    <input type="text" name="posters">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>About Distributors:</span>
                    <input type="text" name="distributors">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>About Producer Deals:</span>
                    <input type="text" name="producers">
                </label>
            </div>
            <div class="form-row">
                <label>
                    <span>About Occupancy Levels:</span>
                    <input type="text" name="occupancy_levels">
                </label>
            </div>
            </div>
            <input type="button" name="previous" class="previous action-button" value="Previous" />
            <input type="submit" name="submit"  value="Submit" />

        </fieldset>
    </div>
</form>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>

<script  src="resources/screen1/js/Processing.js"></script>


</body>

</html>
