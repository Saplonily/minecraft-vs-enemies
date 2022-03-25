/// @description 关卡结束
event_inherited();
//2022-1-18 14:26:37

//清理不需要的粒子

part_system_destroy(PsDeath)//摧毁自己的系统 
part_type_destroy(PtDeath)//摧毁自己的粒子种类
//摧毁全部物体,使全部物体执行自己的释放内存代码
with all
{
if !persistent
    instance_destroy();
}
ds_list_destroy(ListTid);
room_goto(RoomAwardInfo);

