##Simple Camera Tethering##

Here's a quaint little script I wrote that enables simple tethered DSLR shooting.
It uses gphoto2 to wait for you to shoot a picture, downloads it and then displays
the capture full screen.

####Usage####
Connect your camera via USB.
Run the following to see if gphoto2 detects you camera:

	gphoto2 --auto-detect

Your camera should be listed. If not, google it....

Navigate to an empty folder and copy to it both start_tether.sh and view_picture.sh. Using the command line run ./start_tether.sh and start shooting.

####Note####

The script depends on gphoto2 to interact with the camera and qiv to display the
images. On Ubuntu/Debian, use the following to install them:

	sudo apt-get update && sudo apt-get install qiv gphoto2

