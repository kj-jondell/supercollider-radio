# About this

A sc server in the cloud!

Create an icecast configuration called `icecast.xml`. An example can be found in the icecast-container under `/etc/icecast2/icecast.xml`

## Client side
To connect to sc server, run:
1. `Server.default = Server.remote(\remote, NetAddr(HOST, 50000), ServerOptions.new)`
and listen to `http://HOST:8000/supercollider`