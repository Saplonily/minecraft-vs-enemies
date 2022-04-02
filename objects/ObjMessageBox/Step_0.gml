event_inherited();
if lvl.Pause exit;
if !Always
{
    AlarmDisappear -= 1*tick1;
    if AlarmDisappear<=0
    {
        instance_destroy();
    }
}
event_user(0)
