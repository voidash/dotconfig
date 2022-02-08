def multiple_screen [] {
	xrandr --output eDP1 --mode 1920x1080 --right-of HDMI2
	xrandr --output eDP1 --mode 1920x1080 --left-of HDMI2
	wal -i ~/wallpapers/lone.jpg
}
