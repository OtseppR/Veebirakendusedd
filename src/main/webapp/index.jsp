<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%!public static Connection connect (){
    try{

        Class.forName("org.postgresql.Driver").newInstance();
        return DriverManager.getConnection("jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2","vkzivsefpcoxqi","dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");


    }catch(Exception e){
       throw new Error(e);
    }
}


    public static boolean close(Connection c){

        try{
            c.close();
            return true;
        }catch (Exception e){
            return false;
        }

    }





%>


<html>
<body  bgcolor="#7ac968">



<P ALIGN=CENTER><h1>MEEMIDE OST, MÜÜK, VAHETUS</h1></P>

<div><span style="color:#ff0000;">U</span><span style="color:#ff2a00;">p</span><span style="color:#ff5500;"> </span><span style="color:#ff7f00;">a</span><span style="color:#ff9f00;">n</span><span style="color:#ffbf00;">d</span><span style="color:#ffdf00;"> </span><span style="color:#ffff00;">c</span><span style="color:#aaff00;">o</span><span style="color:#55ff00;">m</span><span style="color:#00ff00;">i</span><span style="color:#00ff55;">n</span><span style="color:#00ffaa;">g</span><span style="color:#00ffff;"> </span><span style="color:#00bfff;">f</span><span style="color:#0080ff;">i</span><span style="color:#0040ff;">s</span><span style="color:#0000ff;">h</span><span style="color:#2e00ff;"> </span><span style="color:#5d00ff;">></span><span style="color:#8b00ff;">P</span></div>
<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/391069176&color=%2350eb6a&auto_play=true&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>



<img src="https://i.imgur.com/QKwl1jm.gif" height="200" width="200" style="float:left">
<p></p>
<img class="middle-img" src="https://i.imgur.com/QKwl1jm.gif" height="200" width="200"style="float:left">
<p></p>
<img src="https://i.imgur.com/QKwl1jm.gif" height="200"style="float:left">
<p></p>

<h2>Niisama V2ike nunnu Randolfus</h2>
<img src="https://i.imgur.com/3P2eI25.jpg">
<h4>Viimase nädala kõige sõgedamad meemid on</h4>
<<img src="https://i.imgur.com/4rU2l2T.jpg" >

<img src="https://i.redd.it/qcwrcbhy4gs01.png">
<p><img src="https://i.redd.it/wpozn1bapfs01.png"></p>


<div>
    <h4><a href="http://allinthehead.com/" data-gravatar-hash="13734b0cb20708f79e730809c29c3c48">
        Drew McLellan
    </a></h4>
    <p>This is a great article!</p>
</div>

<script type="text/javascript">
    $(window).load(function() {
        $('a[data-gravatar-hash]').prepend(function(index){
            var hash = $(this).attr('data-gravatar-hash')
            return '<img width="100" height="100" alt="" src="http://www.gravatar.com/avatar.php?size=100&gravatar_id=' + hash + '">'
        })
    })
</script>




Siia sisesta oma info kui soovid luua kasutajat
<form name="myForm" action="tekst.jsp" method="post" >
    <input type="submit" >
</form>
Siia vajutades saad ligi kasutajate nimekirjale
<form name="myForm" action="kasutajad.jsp" method="post" >
    <input type="submit" >
</form>

Vajuta siia et laadida pilti
<form name="myForm" action="PildiLaadimine.jsp" method="post" >
    <input type="submit" >
</form>




<%
    Connection c = connect();
    out.print(c);
    close(c);
%>

</body>
</html>
