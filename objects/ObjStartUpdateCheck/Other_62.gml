/// @description 
var out = function(txt)
{
	show_message(txt)	
}
var fn = "versionOnline.txt";
var ex = file_exists(fn);
if async_load[?"id"]==file
{
	if ex
	{
		var text = FileReadAll(fn);
		if(text!=""&&!(string_count("<",text)>=1))
		{
			var st = json_decode(text);
			var cur = versionA==st[?"VersionA"];
			var cur2 = versionB==st[?"VersionB"];
			var cur3 = versionC==st[?"VersionC"];
			var cur4 = st[?"VersionEx"];
			if cur4!="Alpha"
			{
				if(cur&&cur2&&cur3)
				{
					out("最新版本!");	
				}
				else
				{
					out("版本过旧!")	
				}
			}
			if cur4=="Alpha"
			{
				out("Alpha版本")	
			}
		}
		else
		{
			if(text=="")
			out("又是红粒没开服务器的一天呢")	
			if(string_count("<",text))
			out("今天红粒的服务器出问题了呢")
		}
	}
	else
	{
		out("HTTP Version request failed...");
	}
}
else
{
	out("HTTP get file failed...")	
}
instance_destroy();