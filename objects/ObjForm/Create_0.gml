include = ds_list_create();
moveable = true;
moving = 0;
ms_x = 0;
ms_y = 0;
focus = 0;
pfocus = 0;
//tryIgnore 当鼠标点击窗口外界时或者聚焦其他窗口时执行
tryIgnore = function(){return true};
//doNoticeNoteIgnore  窗口拒绝被忽略聚焦时执行
doNoticeNotIgnore = function(){};
//onFocus 窗口被聚焦时执行
onFocus = function(){};
destory_event = null;
SignForm(id);