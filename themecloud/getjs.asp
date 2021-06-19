var _____WB$wombat$assign$function_____ = function(name) {return (self._wb_wombat && self._wb_wombat.local_init && self._wb_wombat.local_init(name)) || self[name]; };
if (!self.__WB_pmw) { self.__WB_pmw = function(obj) { this.__WB_source = obj; return this; } }
{
	let window = _____WB$wombat$assign$function_____("window");
	let self = _____WB$wombat$assign$function_____("self");
	let document = _____WB$wombat$assign$function_____("document");
	let location = _____WB$wombat$assign$function_____("location");
	let top = _____WB$wombat$assign$function_____("top");
	let parent = _____WB$wombat$assign$function_____("parent");
	let frames = _____WB$wombat$assign$function_____("frames");
	let opener = _____WB$wombat$assign$function_____("opener");

	// JavaScript Document
	var bHadPosted;
	var Cols;
	var CanPost;
	var ColWidth;
	var PostPadding = "";

	function replaceIfFlash(version, element_id, replacement_string) {
		document.getElementById(element_id).innerHTML = replacement_string;
	}

	function renderVideo(element_id,src,width,height,flashvars){
		var agent = navigator.userAgent.toLowerCase();
		var is_iphone = agent.indexOf("iphone") != -1;
		if (is_iphone) {
			document.getElementById(element_id).innerHTML = '<object classid="clsid:02BF25D5-8C17-4B23-BC80-D3488ABDDC6B" width="' + width + '" height="' + height + '" codebase="https://www.apple.com/qtactivex/qtplugin.cab"><param name="src" value="' + src + '"><param name="qtsrc" value="' + src + '"><param name="autoplay" value="false"><embed src="' + src + '" qtsrc="' + src + '" width="' + width + '" height="' + height + '" pluginspage="http://www.apple.com/quicktime/"></embed></object>'
		} else {
			replaceIfFlash(10, element_id, '<embed type="application/x-shockwave-flash" src="https://assets.tumblr.com/swf/video_player.swf?22" bgcolor="#000000" quality="high" class="video_player" allowfullscreen="true" height="' + height + '" width="' + width + '" flashvars="file=' + encodeURIComponent(src) + (flashvars ? "&amp;" + flashvars : "") + '"></embed>');
		}

		$(".video iframe").height(parseInt(ColWidth) * 0.8);
		$(".video iframe").width(parseInt(ColWidth));
		$(".video iframe").css("height",parseInt(ColWidth) * 0.8 + "px");
		$(".video embed").height(parseInt(ColWidth) * 0.8);
		$(".video embed").width(parseInt(ColWidth));
		$(".video embed").css("height",parseInt(ColWidth) * 0.8 + "px");	
	}

	function ShadowPad() {
		//alert(parseInt($("#post_padding").html() - (parseInt(ColWidth) * 0.04)) + "px");
		//alert($("#post_padding").val() - $(".drop_shadow").css("height") + "px");
		
		$(".post").css("margin-bottom","0px");
		$(".post").css("margin-top","0px");
		//$(".drop_shadow").css("margin-bottom",parseInt($("#post_padding").html() - (parseInt(ColWidth) * 0.04) - 1) + "px");

		if (PostPadding == "") {
			PostPadding = parseInt((ColWidth * 0.04));
		}

		//$(".drop_shadow").css("height", PostPadding + parseInt($("#post_padding").html() - (parseInt(ColWidth) * 0.04) - 1) + "px");
		$(".drop_shadow").css("height", $("#post_padding").html() + "px");
		$(".drop_shadow").css("margin-top","0 !important");
	}

	$(document).ready(function() {
		switch("14346") {
		case "73366":
			break;
		default:
			var newa = document.createElement('a');
			newa.setAttribute("href","https://www.themecloud.co/infinite-3-tumblr-theme.asp");
			newa.setAttribute("id","purchase_theme");
			var newimg = document.createElement('img');
			newimg.setAttribute("src","https://static.tumblr.com/2w7y46r/wuvmba8c2/installtheme.png");
			newimg.setAttribute("style","position:absolute; right:3px; top:50px;z-index:99999999;");
			newimg.setAttribute("border","0");
		
			newa.appendChild(newimg);
			document.body.appendChild(newa);
			//if ($("#" + Base64.decode("c3BvbnNvcg==") + " a").attr("href") != base64.decode("aHR0cDovL3d3dy5ib2F0aW5zdXJhbmNldWsuY28=")){$("#posts").css("display","none");}
		}

		if ($("#page_menu").html().indexOf("div") == -1) {
			$("#page_plus").hide();
		}
	});

	// PG addition start
	var pgidx = location.href.indexOf("/page/");
	var NextNum = pgidx == -1 ? 1 : parseInt(location.href.substring(pgidx + 6));
	// PG addition end
	//var NextNum = 1;
	function GetPosts(sCols, MinColWidth) {
		var MinusX;
		if (parseInt(sCols) > 7) {
			sCols = "7";
		}
		
		if ("" != "") {
			sCols = "";	
		}
	
		//alert(document.getElementById("container").style.width);
		if (document.getElementById("container").style.width == "100%") {
			ColWidth = $(window).width() -17;
			MinusX = 40;
			//alert(ColWidth);
		} else if(document.getElementById("container").style.width == "80%") {
			ColWidth = ($(window).width() * 0.8);
			MinusX = 0;
		} else if(document.getElementById("container").style.width == "90%") {
			ColWidth = ($(window).width() * 0.9);
			MinusX = 0;
		} else if(document.getElementById("container").style.width == "95%") {
			ColWidth = ($(window).width() * 0.95);
			MinusX = 0;
		} else if(document.getElementById("container").style.width == "85%") {
			ColWidth = ($(window).width() * 0.85);
			MinusX = 0;
		} else if(document.getElementById("container").style.width == "50%") {
			ColWidth = ($(window).width() * 0.5);
			MinusX = 0;
		} else {
			MinusX = 40;
			ColWidth = parseInt(document.getElementById("container").style.width.replace("px","")) -17;
		}

		if (parseInt(((ColWidth / sCols))) > parseInt(MinColWidth)) {
			if ("" == "") {
				ColWidth = MinColWidth;
			} else {
				ColWidth = parseInt((ColWidth / sCols));
			}
		} else {
			ColWidth = parseInt((ColWidth / sCols));
		}

		//document.getElementById("posts").style.width = ((ColWidth * sCols) + (sCols * 20)) - MinusX + "px";
		//alert((ColWidth * sCols));
		document.getElementById("posts").style.width = (ColWidth * sCols) + "px";
		//alert(ColWidth * sCols);
		Cols = sCols
		//alert(ColWidth);

		// Create columns 1st
		ColWidth = ColWidth - ((parseInt(document.getElementById("post_padding").innerHTML) * (parseInt(Cols) +1)) / parseInt(Cols)) 
		//alert(ColWidth);
		for(i = 0; i < Cols; i ++) {
			if (document.getElementById("column" + i) == null) {
				var newdiv = document.createElement("div");
				newdiv.setAttribute("id","column" + i);
				if (i == sCols -1) {
							newdiv.setAttribute("class","column columnlast");
				} else {
					newdiv.setAttribute("class","column column" + i);
				}
				newdiv.setAttribute("style","width:" + ColWidth + "px;");
				//if ($("#" + Base64.decode("c3BvbnNvcg==") + " a").attr("href") == Base64.decode("aHR0cDovL3d3dy5ib2F0aW5zdXJhbmNldWsuY28=")) {
					document.getElementById("posts").appendChild(newdiv);
				//}
			}
		}
		//GetMorePosts();
		GetMorePosts();
	}

	function DoOverlay() {
		//alert($(".photo").height());
		//$(".photo .notes2middle").css("margin-left",parseInt(ColWidth / 2) - 60 + "px");
		//$(".photo .notes2").css("margin-bottom",parseInt($(".photo .notes2 img").css("height") / 2) - 10 + "px");
		//alert((parseInt(ColWidth) - (parseInt($(".photo .notes").width())) / 2));
		//$("div").removeClass("notes2middle");
	}

	function GetMorePosts() {
		//document.getElementById("posts_hidden").innerHTML = document.getElementById("posts_hidden").innerHTML.replace("audio_player_","xx_audio_player_");
		if (parseInt(NextNum) >= 3) {
			ScrollTopNumber2 = $(document).height() * 0.75 - $(window).height();
			if ($(window).scrollTop() < ScrollTopNumber2) {
				return false;
			}
		}

		var LoadFlashFile = false;
		if (CanPost == false) {
			return false;
		}
		CanPost = false;

		var HTMLage;
		var sasync = true;
		if (NextNum == 1) {
			sasync = false;
		} else {
			sasync = true;	
		}
		
		var sPageName;

		if (document.getElementById("tag_page").innerHTML == "") {
			// ---- PG addition start ----
			if (location.href.indexOf("/search/") != -1) {
				var match = location.href.match(/\/search\/[^/]{0,}\//i);
				if (match) {
					sPageName = match[0] + "page/";
				} else {
					match = location.href.match(/\/search\/[^/]{0,}[?#]/i);
					if (match) {
						sPageName = match[0].replace(/[?#]/, "") + "/page/";
					} else {
						match = location.href.match(/\/search\/[^/]{0,}/i);
						sPageName = match[0] + "/page/";
					}
				}
			} else {
				// ---- PG addition end ----
				sPageName = "/page/";
				// ---- PG addition start ----
			}
			// ---- PG addition end ----
		} else {
			sPageName = "/tagged/" + document.getElementById("tag_page").innerHTML + "/page/";
		}

		$.ajax({
			url: sPageName + NextNum,
			async: true,
			success: function(data) {
				//alert(data.getElementById("posts_hidden").innerHTML);
				if (NextNum == 1) {
					async = false;
					data = document.getElementById("posts_hidden").innerHTML;
				}

				//data = data.replace(/audio_player_/g,"xx_audio_player_");
				data = data.replace(/<x>/g,"");
				data = data.replace(/divabc/g,"div");
				//data = data.replace(/xx_/g,"");
				data = data.replace(/<X>/g,"");
				data = data.replace(/&lt;x&gt;/g,"");
				data = data.replace(/&lt;X&gt;/g,"");
				if (data.indexOf("<POSTS>") >=0) {
					var sArr = data.split("<POSTS>")
				} else {
					var sArr = data.split("<posts>")		
				}
		
				if (sArr[1].indexOf("<SPLITTER>") >=0) {
					var sArray = sArr[1].split("<SPLITTER>");
				} else {
					var sArray = sArr[1].split("<splitter>");		
				}
				x = 0

				for(i = 0; i < sArray.length -1; i ++) {

					if (sArray[i].indexOf("audio") >= 0) {
						sArray[i] = sArray[i].replace("[<a href=\"http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash\" target=\"_blank\">Flash 9</a> is required to listen to audio.]","");
						sArray[i] = sArray[i].replace("<a href=\"http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash\" target=\"_blank\">Flash 9</a> is required to listen to audio.]","");
						sArray[i] = sArray[i].replace("[<A href=\"http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash\" target=\"_blank\">Flash 9</A> is required to listen to audio.]","");
						sArray[i] = sArray[i].replace("<A href=\"http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash\" target=\"_blank\">Flash 9</A> is required to listen to audio.]","");
					}

					if (sArray[i].indexOf("shadow_image") >= 0) {
						if (parseInt(document.getElementById("post_padding").innerHTML) < 10) {
							sArray[i] = sArray[i].replace("shadow_image","shadow_image_hide"); 
						}
					}
					if (sArray[i].indexOf("notes2") >= 0) { 
						// console.log(parseInt(ColWidth / 2) - 60 + "px'"); <-- PG Commented
						sArray[i] = sArray[i].replace("notes2\"","notes2\"" + " style='margin-left:" + parseInt(parseInt(ColWidth / 2) - 60) + "px'"); 
						//sArray[i] = sArray[i].replace("notes2\"","notes2\"" + " style='margin-left:15px'"); 
					}
					
					if (sArray[i].indexOf("video") >= 0) {
						sArray[i] = sArray[i].replace("height=","height='" + parseInt(ColWidth) * 0.8 + "'" + " oldheight=");
						sArray[i] = sArray[i].replace("width=","oldwidth=");		
					}
					
					if ("14346" == "45708") {
						/*if (NextNum == 1) {
							if (bHadPosted != true) {
								$('#column' + x).append("<div class='post photo'><a href='https://www.themecloud.co/narnia-tumblr-theme.asp'><img src='https://www.themecloud.co/narnia.jpg' border='0' /></a></div>");
								bHadPosted = true;
							}
						}*/
					}
					var sAppend;

					sAppend = "<div id='drop_shadow_id' class='drop_shadow'><img src='" + chrome.runtime.getURL("themecloud/shadow600.png") + "' width='100%'  ></div>"

					if ($("#post_shadow").html() == "YES") {
						$('#column' + x).append(sArray[i] + sAppend);
					} else {
						$('#column' + x).append(sArray[i]);
					}

					$(".video iframe").height(parseInt(ColWidth) * 0.8);
					$(".video iframe").width(parseInt(ColWidth));
					$(".video iframe").css("height",parseInt(ColWidth) * 0.8 + "px");
					$(".video embed").height(parseInt(ColWidth) * 0.8);
					$(".video embed").width(parseInt(ColWidth));
					$(".video embed").css("height",parseInt(ColWidth) * 0.8 + "px");	

					/* This is basic - uses default settings */
					//alert($('.quote_title').html());
					
					$("a#single_image").fancybox();
					
					/* Using custom settings */
					
					$("a#inline").fancybox({
						'hideOnContentClick': true
					});
					//$(sArray[i]).appendTo('#column' + x);
					x = x + 1
					if ($("#post_shadow").html() == "YES") {
						ShadowPad();
					}
					if (x == Cols) {
						x = 0;	
					}
				}
				CanPost = true;
				if (NextNum ==1) {
					NextNum = NextNum + 1;
					CanPost = true;
					GetMorePosts();
			
				} else {
					if (NextNum ==2) {
						NextNum = NextNum + 1;
						CanPost = true;
						if (document.getElementById("tag_page").innerHTML == "") {
							GetMorePosts();
						}
					} else {
						CanPost = true;
						NextNum = NextNum + 1;
					}
				}
			}
		});
	}
}
