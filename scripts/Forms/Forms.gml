
#region 操作
//form id : >0视为正常
//-1 为无窗口
//-2 为关闭一个窗口后的临界状态
//-3 为禁用窗口互动,任何窗体不得进行互动,但tryfocuson的有效性和-1一致

//注意!!
//tryFocusOn会未来在窗体的本体点击事件里调用,如果点击了外围会执行tryFocusOn(-1)
//2022-3-5 22:37:26 我tm第一次看不懂我写了些啥
//2022-3-21 06:37:19 focus -1仅在无窗口时(-2或-1时)可用，否则无法focus
//所以这条注意就被写了出来
function DestoryForm(FormID)
{
	//删除时直接完全删除
	//删除后如果还有窗口则聚焦对象为-2,tryfocus特殊处理,但BigNature(-1)还是不能点
	//2022-3-19 17:29:42
	with FormID
	{
		if destory_event!=null
			destory_event();
		for(var i = 0;i<ds_list_size(include);i++)
		{
			instance_destroy(include[|i]);
			
		}
		instance_destroy();
	}
	tryFocusOn(-2);
}
function tryFocusOn(form)
{
	if(form>0)
	{
		var toformobjname = object_get_name(form.object_index);
		if global.DoDebugOutFormsInfo DebugOut("try to focus on ->"+toformobjname);
		var gf = global.FormFocus;
		if(gf==-1||gf==-2) 
		{
			global.FormFocus = form;
			form.onFocus();
			return true;
		}
		else if(gf==-3)
		{
			if global.DoDebugOutFormsInfo DebugOut("Form focus failed,currently focus on -3");
			return false;	
		}
		else 
		{
			var suc = gf.tryIgnore();
			if suc
			{
				//此时global.FormFocus为旧窗口
				//form为新窗口
				//删了那个再舔回来
				ds_list_delete(global.FormsDepth,ds_list_find_index(global.FormsDepth,form));
				ds_list_add(global.FormsDepth,form);
					
				global.FormFocus = form;
				form.onFocus();
				if global.DoDebugOutFormsInfo DebugOut("Refresh now")
				with form RefreshFormDepth();
				return true;
			}
			else
			{
				global.FormFocus.doNoticeNotIgnore();
				return false;
			}
		}
	}
	else if(form==-1)
	{
		if global.DoDebugOutFormsInfo DebugOut("Try to focus on -1. There's no other form now");
		//尝试聚焦到BigNature
		//想pitch呢
		//只有当没窗口但是聚焦状态为-2时才可以
		//当然你是-3态也可以聚焦
		//不,-3态不可以聚焦-1,-3态锁死的
		if(
			(global.FormFocus==-2&&instance_number(ObjForm))
		)
		{
			global.FormFocus=-1;
			return true;
		}
		return false;
	}
	else if(form==-2)
	{
		//窗口摧毁了,看看谁要聚焦
		if global.DoDebugOutFormsInfo DebugOut("Try to focus on -2");
		//警告,更改此处代码记得更改NoForms
		global.FormFocus = -1;
		//2022-3-19 17:30:28,更新
		//查找删除窗口后的最前窗口作为聚焦对象
		if(ds_list_size(global.FormsDepth)!=0)
		{
			tryFocusOn(global.FormsDepth[|(ds_list_size(global.FormsDepth)-1)]);
		}
		else
		{
			tryFocusOn(-1);	
		}
		
		return true;
	}
	else if(form==-3)
	{
		if global.DoDebugOutFormsInfo DebugOut("Focus on -3,disable all GUI")
		global.FormFocus = form;
		return true;
	}
	
	
}
function DisableNeg3()
{
	if global.DoDebugOutFormsInfo DebugOut("Force to disable -3 focus mode...");
	global.FormFocus = -1;
	return true;
}
//将一个窗口签入窗口列表
function SignForm(form)
{
	if global.DoDebugOutFormsInfo DebugOut("Sign a form now..")
	ds_list_add(global.FormsDepth,form.id);
}
function SetFormDepth(form,dep)
{
	if global.DoDebugOutFormsInfo DebugOut("one set,depth is "+string(dep))
	form.depth = dep;
	for(var i = 0;i<ds_list_size(form.include);i++)
	{
		(form.include[|i]).depth = dep - 1;
	}
}
function RefreshFormDepth()
{
	if global.DoDebugOutFormsInfo DebugOut("Refresh form depth...")
	//最顶层的Depth为GUIDepth
	//最顶层的contorl Depth为GUIDepth-1
	//列表越靠后,越靠前
	//0 : -0
	//1 : -2
	//2 : -4
	//3 : -6
	//size = 4
	var size = ds_list_size(global.FormsDepth);
	var ls = global.FormsDepth;
	for(var i = 0;i<size;i++)
	{
		SetFormDepth(ls[|i],-2*i+GUIDepth);
	}
	if global.DoDebugOutFormsInfo 
	{
		DebugOut("Here is the signed forms:");
		DebugOutList(global.FormsDepth);
		DebugOut("Here is the depth information:")
		DebugOut("-------")
	}
	if global.DoDebugOutFormsInfo
	{
		for(var i = 0;i<ds_list_size(global.FormsDepth);i++)
		{
			DebugOut(global.FormsDepth[|i].depth)	
		}
		DebugOut("-------")
	}
	
}
function SignOutForm(form)
{
	var index = ds_list_find_index(global.FormsDepth,form.id);
	if(index != -1)
	{
		ds_list_delete(global.FormsDepth,index);
	}
	else
	{
		DebugOut("Warning : Sign out form failed,form not exists.");	
	}
}

#endregion
#region 获取
function IsBaseGUIAble()
{
	//底层GUI(即游戏内嵌GUI的等级(卡牌什么的))
	return (global.FormFocus!=-3)&&(instance_number(ObjForm)==0);	
}

#endregion
#region easyForms
//返回点击的按钮
//0 : 取消
//1 : 确认
//关于这种异步的弹窗:
//调用函数出现弹窗，获取信息,函数返回唯一的信息池id
//然后global.MessagePool (map)
function CreateFormMessage(msgText)
{
	var of = instance_create_depth(0,0,GUIDepth-2,ObjForm);
	of.sprite_index = SprBlankSmall;
	SetToCenter(of);
	of.tryIgnore = function()
	{
		if global.DoDebugOutFormsInfo DebugOut("tryIgnore function refused the focus request.")
		return false;
	}
	var ct;
	//Text,点在中央
	ct = instance_create_depth(of.x+of.sprite_width/2,of.y+45,GUIDepth-3,ObjLable);
	with ct
	{
		ha = fa_middle;
		va = fa_top;
		text = msgText;
		font = FTBlockBig;
		scale = 0.75;
		color = c_black;
		texfl = 0;
	}
	AddToForm(ct,of);
	//确认
	ct = instance_create_depth(of.x+20,of.y+156,GUIDepth-3,ObjButtonAccept);
	AddToForm(ct,of);
	//取消
	ct = instance_create_depth(of.x+298,of.y+156,GUIDepth-3,ObjButtonCancel);
	AddToForm(ct,of);
	//计算一个唯一id然后发送至信息池
	//信息池返回undefined意思为本信息池已被注册但没有信息
	var mid = get_timer();
	of.mid = mid;
	MessagePoolSend(mid,undefined);
	tryFocusOn(of);
	return of;
}

#endregion