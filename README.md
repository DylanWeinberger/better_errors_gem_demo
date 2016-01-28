<h1>Better_Errors Gem Demo</h1>
<h4>By Dylan Weinberger</h4>

<a href="https://github.com/charliesome/better_errors">Better_errors GitHub Page.</a>


<h3>Getting Started</h3>
<p>In your new Rails project go to your Gemfile and add gem 'better_errors'. It is important to add it under the development section of your Gemfile as you do not want unauthorized users to have access to this error screen. After bundle installing you shuld be good to go and ready to user better errors.</p>

<h3>Benefits and Features</h3>
<p>better_errors comes with many advantages over the default rails error screen. The first thing you will notice is how much better it looks.</p>
<br>
<img src="https://camo.githubusercontent.com/3fa6840d5e20236b4f768d6ed4b42421ba7c2f21/68747470733a2f2f692e696d6775722e636f6d2f367a42474141622e706e67" width="600px">
<br>

<p> Compare those calm colors and nice layout to the normal rails error screen.</p>
<br>
<img src="http://i.imgur.com/jSTqFAN.png" width="600px">
<br>
<p>Beyond having a nice layout and color scheme better errors also comes with way more information. You can first scroll down and see the entire stack trace and search for any errors instead of going into your terminal window that is running your server. Instead of searching through that better errors pulls up the exact application frames where your error occured and highlights the problematic lines. I have so far found that they are slightly more accurate than the normal rails error. Additionally you can review the entire file where the offense occured from the error page. This gives you context into fixing the problem. Perhaps the line that caused the error is not the problem. You would be able to find the problem within the error page.</p>
<br>
#Console on the Page
<p>My favorite feature in better errors is the console that comes with each error screen. Instead of having another terminal window running rails console you can enter anything you wanted to in the error screen. You can test any variables or models or controllers from that window. You can try out different methods on the variables on screen and test out what the answer is. This is extremely useful and will save a lot of time searching for that terminal window and making those calls in terminal.</p>
<br>
#Variables
<p>Another great feature is that better errors will show you all the variables you currently have on that page. If you have a current_user method running it will show you that and it will show you all the information on that user. If you are on a post's show page you can see the exact variables information.</p>
<br>
#Learn More About Rails
<p>An added benefit to better errors is that you really get to learn details about how rails works. By going into All Frames section on the error page you can look through your entire rails project. Additionally if the current error affected any of those pages they will be highlighted. You can see things like where error messages are created through string interpolation. Searching through those frames you can see the scope and the complexity of rails.</p>
<br><br>
<p>In the future I will be using better errors on all my rails projects. As this was my first project with the gem I was unable to really feel the true benefits of the gem but as my projects grow in complexity better errors will become more useful. I am already looking forward to getting my first error on my next project.</p>

#In this repository.
<p>This repository has a very basic rails blog app with models for users, profiles, and posts. There are a few errors sprinkled in for demo purposes. One error is in the User model. Users are not connected to profiles as I commented out the "has_one :profile" line in that file. Another error I added was in the edit action in the profile controller I set the paramters to finding the profile as user_id instead of just id. Another error is in my posts controller or my post's show view. In the controller the variable is set to @posts whereas in the view it is set to @post.</p>

#Resources
<p>For this project I used a couple of main resources. First I used the Better_Errors github page linked to at the top of this readme. I also watched the railscast linked to below for a quick tutorial and demonstration of its uses.</p>

<a href="https://www.youtube.com/watch?v=aPKy0Zd5AAs">RailsCast #402 Better_errors and RailsPanel</a>
