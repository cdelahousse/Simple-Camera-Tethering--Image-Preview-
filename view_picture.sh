#!/bin/sh

#Inspired by:
# http://photodoto.com/index.php/2008/02/25/tethered-shooting-with-linux/

case "$ACTION" in
	init)
		# gphoto2 has just been initialized. If the hook script returns
		#with a non-zero exit code now, gphoto2 will abort.

		;;

	start)
		#gphoto2 has just finished parsing the command line and is about
		#to start executing the commands given on the command line.


		;;

	download)
		#gphoto2 has just downloaded a file to the computer, storing it
		#in the file indicated by the environment variable ARGUMENT.
		#pkill gthumb
		#gthumb --fullscreen "$ARGUMENT" &
		pkill qiv
		qiv -mlf "$ARGUMENT" &
		;;

	stop)
		#gphoto2 has just downloaded a file to the computer, storing it
		#in the file indicated by the environment variable ARGUMENT.

		;;
esac
