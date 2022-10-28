#!/bin/bash

/usr/bin/jackd -R -d dummy &
/usr/bin/gst-launch-1.0 jackaudiosrc connect=2 ! audioconvert ! opusenc ! oggmux ! shout2send mount=/supercollider port=8000 username=source password=apelsin ip=icecast & 
/usr/local/bin/scsynth -B 0.0.0.0 -u $SC_PORT -D 0 -l 32