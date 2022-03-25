/// @description 
if ( image_index == 0 && ctc.ViewMoving == 0)
{
    DebugOut("GoToMoreOptions!")
    image_index = 1
    var Snd = choose(46, 42, 1, 45, 44)
    audio_play_sound(Snd, 0, false)
    with (ctc)
    {
        ViewMoving = 1
        ViewToxPos = 0
        ViewToyPos = 664
    }
}