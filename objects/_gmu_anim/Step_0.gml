if(instance_exists(_inst) || _inst==global)
{
    if(_delay<=0)
    {
        _time+=tick1;
        if(_time<_duration)
        {
            event_user(0);
        }
        else
        {
            if(_inst!=global)
            {
                variable_instance_set(_inst,_var_name,_start+_change);
            }
            else
            {
                variable_global_set(_var_name,_start+_change);
            }
            instance_destroy();
        }
    }else{
    _delay-=tick1;
    }
}else{
instance_destroy();
}

