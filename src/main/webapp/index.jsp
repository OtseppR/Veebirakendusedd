<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd" >
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html lang="en">

<head>

    <link rel="stylesheet" href="Styles.css">
    <script src="script.js"></script>


    <meta charset="UTF-8">
    <meta name="memes" content="memes">
    <title>Meme Exchange</title>


</head>
<body onload="resolution()"
      background="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu3TSQXAplExhow-h2xtZGSn9gfEtI2CdHVh6I2YeKtj19K9uB">

<!-- Google translate-->
<div id="google_translate_element"></div>
<script type="text/javascript">
    function googleTranslateElementInit() {
        new google.translate.TranslateElement({
            pageLanguage: 'en',
            includedLanguages: 'et,id,la,ru',
            layout: google.translate.TranslateElement.InlineLayout.SIMPLE,
            multilanguagePage: true
        }, 'google_translate_element');
    }
</script>
<script type="text/javascript"
        src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<!-- Google login-->

<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id" content="380538042349-mhl7ivq7si0t2ajgtothpkidmt271ieh.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>


<div class="g-signin2" data-onsuccess="onSignIn" data-theme = "dark"></div>

<script>
    function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
        $("#pic").attr('src',"http://i1.kym-cdn.com/photos/images/newsfeed/000/270/676/83b.png");
    };
</script>



<img id="pic" alt="" src="https://www.pngarts.com/files/1/Face-PNG-Background-Image.png" >


<!-- Google logout-->
<script>
    function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
            console.log('User signed out.');

        });
    }
</script>
<a href="#" onclick="signOut();">Sign out</a>


<div>
    <em class="css-3d-text">BUY, SELL, EXCHANGE MEMES</em>
</div>


<!-- HTML Code -->


<marquee class="GeneratedMarquee">Lil Fi$h - Better</marquee>
<p>

    <img src="https://i.imgur.com/Y7RVrdL.gif" alt="" width="25%" style="float:left">
    <iframe width="50%" height="300" scrolling="no" frameborder="0"
            src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/391069176&color=%2350eb6a&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>
    <img src="https://i.imgur.com/Y7RVrdL.gif" alt="" width="25%" style="float:right">
<div>
    <img src="https://i.imgur.com/BlRQDFF.gif" alt="" width="50%">
</div>



</p>


<marquee class="css-3d-text">She better than the rest</marquee>

<p>
    <marquee><img src="https://www.pngarts.com/files/1/Face-PNG-Background-Image.png" alt="" id="pic2">
        <img src="https://www.pngarts.com/files/1/Face-PNG-Background-Image.png" alt="">
        <img src="https://i.imgur.com/ka7taFq.png" alt="">
    </marquee>


</p>


<em class="css-3d-text2">Throwback memes</em>


<p>
    <img src="https://thechive.files.wordpress.com/2017/03/90s-memes-that-prove-life-was-tough-before-the-internet-58-photos-28.jpg"
         alt="">
    <img src="https://pics.me.me/smh-life-was-much-better-in-the-90s-stormy-atx-6730152.png" alt="">
    <img src="https://pics.me.me/baby-its-only-micro-microsoft-when-its-soft-%F0%9F%98%82%F0%9F%98%82-microsoft-9533785.png"
         alt="">
</p>


<p>
<h2><font color="white">Click here to give us your information</font></h2>
<input type="button" style="height:200px;width:200px" name="b1" value="User info" onclick="location.href='tekst.jsp'">
</p>
<p>
<h2><font color="aqua">Click here to see some lists</font></h2>
<input type="button" style="height:200px;width:200px" name="b1" value="Google maps"
       onclick="location.href='kasutajad.jsp'">
<h2><font color="#7fffd4">Click here in the future to upload pictures</font></h2>
<input type="button" style="height:200px;width:200px" name="b1" value="Upload" onclick="location.href='upload.php'">


</p>
<p>
<h2><font color="#f0f8ff">Stresstest URL Confirmation</font></h2>
<input type="button" style="height:200px;width:200px" name="b1" value="Click Me"
       onclick="location.href='loaderio-946c5f0bd08a7d43ba7885955bf1dc4e.txt'">
</p>


</body>

</html>
