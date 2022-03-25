event_inherited();
if(
    (Left&&(keyboard_check_pressed(vk_left)||keyboard_check_pressed(ord("A"))))||
    (!Left&&(keyboard_check_pressed(vk_right)||keyboard_check_pressed(ord("D"))))
)
{
    event_user(0)
}

