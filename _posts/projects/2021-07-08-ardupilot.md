---
layout:	post
title:	"ardupilot"
date:   2021-07-08 02:17:05 -0700
categories:	jekyll update
permalink:	/ardupilot-companion-computer/
---
when it comes to flight controllers, pixhawk models are among the highest performing compared to others in the hobbyist market. the pixhawk 1 uses an ARM Cortex M4 CPU with a clock speed of 180 MHz -- this is sufficient for quick responses during flight.

however, with ardupilot, a mission planning software, we are able to also utilize a companion computer, like a raspberry pi. this allows us to allocate motor control and other basic functions to the pixhawk, while giving our vehicle more capabilities. we can think of the flight controller (pixhawk) like the brain's parietal lobe as well as the sensory and motor cortex: it's responsible for managing sensory information, which may be gained from a lidar, a gps, or an imu, and then acting in response to this information by controlling the vehicle motors. the companion computer (raspberry pi) is more like the frontal lobe; it is responsible for problem solving and judgment, among other things, so in a vehicle the companion computer may plan paths or classify objects from images.

in this section, we connect a pixhawk 1 flight controller to a raspberry pi zero w acting as a companion computer.

i used this tutorial https://www.youtube.com/watch?v=cZVNndOaYCE&t=209s
