$(window).load(function() {
    
     });
$(document).ready(function() {
GetPosts(3,"600");
    // ---- PG addition start ----
    fiximgs();
    $(".more_notes_link").click(function(){});
    // ---- PG addition end ----

});

var ScrollTopNumber;
$(window).scroll(function(){
ScrollTopNumber = $(document).height() / 4 - $(window).height();
if ($(window).scrollTop() > ScrollTopNumber)
{
    var ret = GetMorePosts();
    // ---- PG addition start ----
    fiximgs();
    // ---- PG addition end ----
 return ret;
}
})

// ---- PG addition start ----
function fiximgs(){
    $(".notes2, .notes3").each(function(i, e){
        var rblguis = $(e).children(".reblog_etc");
        rblguis.eq(0).find("img").attr("src", chrome.runtime.getURL("themecloud/reblog.png"));
        var reblgurl = rblguis.eq(0).children("a").attr("href");
        var likeimg = rblguis.eq(1).find("img");
        if (likeimg.attr("src").indexOf("like2") == -1) {
            likeimg.attr("src", chrome.runtime.getURL("themecloud/like.png"));
        } else {
            likeimg.attr("src", chrome.runtime.getURL("themecloud/like2.png"));
        }
        likeimg.unbind("click", likefx);
        if (likeimg.attr("src").indexOf("like2") == -1) likeimg.bind("click", likefx);
        rblguis.eq(2).css("background-image", "url('" + chrome.runtime.getURL("themecloud/left.png") + "')");
        rblguis.eq(3).css("background-image", "url('" + chrome.runtime.getURL("themecloud/middle.png") + "')");
        rblguis.eq(4).css("background-image", "url('" + chrome.runtime.getURL("themecloud/right.png") + "')");
    });
}

function likefx(){
    LikePost(this.id.replace("like_image_", ""), this.parentNode.parentNode.getElementsByClassName("reblog_etc")[0].firstChild.href, this);
    this.src = chrome.runtime.getURL("themecloud/like2.png");
    $(this).unbind("click", likefx);
}
// ---- PG addition end ----
