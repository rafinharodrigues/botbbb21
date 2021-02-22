CoordMode, Pixel, Screen

Loop
{
Sleep, 3000
Loop
{
  PixelSearch, x1, y1, 0, 0, A_ScreenWidth, A_ScreenHeight, 0xdeacc8, 3, Fast RGB 
  if (errorlevel = 0)
  {
	y1 := y1 + 90
	x1 := x1 - 300

	Click, %x1%, %y1%
	break

  }
}			
Sleep, 2000
Loop
{
  PixelSearch, x2, y2, 0, 0, A_ScreenWidth, A_ScreenHeight, 0x0584be, 3, Fast RGB 
  if (errorlevel = 0)
  {
	y2 := y2 + 20
	x2 := x2 - 150

	Click, %x2%, %y2%
	break

  }
}	
Sleep, 2000
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
