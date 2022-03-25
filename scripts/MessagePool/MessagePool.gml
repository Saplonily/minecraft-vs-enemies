//向信息池发送信息
function MessagePoolSend(mid,msg)
{
	global.MessagePool[?mid] = msg;	
}
//获取信息,不存在返回undefied
//成功返回消息,并会清除消息池的那一条!
function PopMessagePool(mid)
{
	if(ds_map_exists(global.MessagePool,mid))
	{
		var find = ds_map_find_value(global.MessagePool,mid);
		if(is_undefined(find))
		{
			return undefined;
		}
		else
		{
			ds_map_delete(global.MessagePool,mid);
			return find;
		}
	}
}