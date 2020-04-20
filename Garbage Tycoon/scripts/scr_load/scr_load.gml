if file_exists("Save.ini")
{
	ini_open("Save.ini")
	score=ini_read_real("Degerler","money",0);
	ini_close();
}
else
{}