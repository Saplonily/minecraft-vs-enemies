/// @description FileReadAll(File)
/// @param File
function FileReadAll(argument0) {
		//打开要读取的文件
		var File = file_text_open_read(argument0);
		if File==-1
		{
		    var error = format("打开文件 {0} 时发生错误",argument0)
		    if !file_exists(argument0) error+=",可能是文件不存在";
		    show_error(error,0);
		    DebugOut(error);
		}
		//要返回的文本
		var Text = "";
		//重复读取文件直到文件读取到了末尾
		while (!file_text_eof(File))
		{
		    //让Text加入读取到的文本
		    Text += file_text_readln(File);
		}
		//关闭文件
		file_text_close(File);
		//返回Text
		return Text;



}