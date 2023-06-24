---
layout: post
title:  "I have about 16,000 days left before I die"
--- 

It's nice for motivation reasons to pay attention to streaks (like 'How long have you been vegan?') or memories ('How much of your life have you spent with the woman you love?'). It's also nice for motivation to know how many more sunrises I will get to see ([Kevin Kelly](https://kk.org/ct2/my-life-countdown-1/) gives a much more well written set of reasons for this than I ever will), and how many more wonderful mornings I'll have with my kids before they move out.   

The list below updates daily thanks to the wonders of Javascript. Some count up, some count down. 

<script type="text/javascript">
document.addEventListener('readystatechange', () => {    
  if (document.readyState == 'complete') makelist();
});
function makelist(){
add_to_list("Vegan",'2010-02-01');
add_to_list("Kat Vegan",'2016-03-19');
add_to_list("Relationship length",'2014-12-31');
//add_to_list("Juice",'2014-06-24');
add_to_list("Nova",'2018-01-26');
add_to_list("Leo",'2020-05-03');
add_to_list("Stopped being sick",'2020-01-14');
//add_to_list("Klout",'2014-04-28');
add_to_list("Cold Showers",'2023-05-16');//date messaged Pete about it
add_to_list("Mornings with Nova",'2036-09-22');//Assuming Uni or something? 
add_to_list("Mornings with Leo",'2038-09-22');//Assuming Uni or something? 
add_to_list("Death",'2064-09-22');//Assuming Uni or something? 
add_to_list("Caffine",'2023-05-16');
}



function add_to_list(label,date){
var today = new Date();
var date_to_reply = new Date(date);
var timeinmilisec = today.getTime() - date_to_reply.getTime();
days=Math.floor(timeinmilisec / (1000 * 60 * 60 * 24)) ;
if (days<0){
days=-days
document.getElementById("list").innerHTML += "<li> "+label+": "+days+" days left";
}else
{
document.getElementById("list").innerHTML += "<li> "+label+": "+days+" days";
}

}
</script>

<ul>
<div id="list">
</div>
</ul>

