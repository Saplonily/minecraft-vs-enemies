if InLevel()&&lvl.Pause exit;
if instance_exists(ObjDialog) exit;
var c = ObjCharacter;
if
(
    c.OnTalk &&
    !c.Arrving&&
    c.BlankAni==1
)
{
    event_user(0);
}
io_clear();

