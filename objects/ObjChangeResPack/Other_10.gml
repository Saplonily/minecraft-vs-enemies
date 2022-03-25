var res;
res = get_open_filename("Resource Pack|*.zip","Res.zip");
if(res!="")
{
    ResourcePackLoad(res);
}

