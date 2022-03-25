if(MouseOnMe())
{
    image_index=1;
    if(mouse_check_button_pressed(mb_left))
    {
		audio_play_sound(SndClick,SdgrSound,NotLoop);
        event_user(0);
        io_clear();
    }
}
else
    image_index=0

