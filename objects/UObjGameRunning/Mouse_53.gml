/// @description 检测全局窗口事件(其实是对焦)
//先获取一个能被点到的窗口列表
var fd = global.FormsDepth;
var list = ds_list_create();
ds_list_copy(list,fd);
for(var i = 0;i < ds_list_size(list);i++)
{
	var can = false;
	with(list[|i])
	{
		if(MouseInRec(x,y,sprite_width,sprite_height))
			can = true;
	}
	if(!can)
	{
		ds_list_delete(list,i);
		i--;
	}
}
//检测一下是不是删完了,删完了就是啥也没点到,聚焦-1完事
if(ds_list_size(list)==0)
{
	tryFocusOn(-1);
	ds_list_destroy(list);
	exit;
}
//现在我们获取了很多可被聚焦的窗口
//现在获取在这里面排列最高的
var maxID = -1;
var minDepth = 114514;
for(var i = 0;i < ds_list_size(list);i++)
{
	var temp = list[|i].depth;
	if(temp<minDepth)
	{
		minDepth = temp;
		maxID = i;
	}
}
if(maxID==-1)
{
	show_error("获取最低深度窗口失败!",true);	
}
//现在我们获取了那个窗口,很简单,聚焦它就行了
tryFocusOn(list[|maxID]);

//记得销毁列表
ds_list_destroy(list);