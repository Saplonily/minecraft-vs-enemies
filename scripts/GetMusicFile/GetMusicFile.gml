/// @function                GetMusicFile(MusicId)
/// @description             MusicId
function GetMusicFile(MusicId)
{
	return format("LIB\\Music\\{}",global.MusicRc[|MusicId]);
}