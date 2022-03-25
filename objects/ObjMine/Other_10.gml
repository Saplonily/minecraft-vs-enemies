if lvl.GUIExists
{
    with instance_create_depth(x,y+10,depth,ObjRedstone) //时间到了生产红石
    {
        //设置行数
        Row = other.Row;
        //x坐标偏移速度
        xspeed = (3+random(1))*sign(choose(1,-1))
        zspeed = 2;
    }
    Timer = irandom_range(15,20)*30;
}

