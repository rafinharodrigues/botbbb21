CoordMode, Pixel, Screen

Loop
{

Sleep, 1500

Loop
{
  PixelSearch, x1, y1, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x64081a, 3, Fast RGB 
  if (errorlevel = 0)
  {
	x1 := x1 - 300

	Click, %x1%, %y1%
	break

  }
}			

Loop
{
  PixelSearch, x2, y2, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x58c2d5, 3, Fast RGB 
  if (errorlevel = 0)
  {
	y2 := y2 + 20
	x2 := x2 - 150

	Click, %x2%, %y2%
	break

  }
}	

Loop
{
  PixelSearch, x3, y3, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xf9411c, 3, Fast RGB 
  if (errorlevel = 0)
  {
	y3 := y3 - 95

	Click, %x3%, %y3%
	break

  }
}					

}

~^v::pause
