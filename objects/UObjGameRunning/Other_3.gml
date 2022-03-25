DebugOut("-----Game Closing....");


ini_open(format("Users\\{0}",global.User));

SaveUserAllInfos();

ini_close();

ini_open("GameSettings.ini")

ini_write_string("Users","Select",global.User)



ini_close();
DebugOut("-----Game Closed correctly!");
file_text_close(DebugFile)

