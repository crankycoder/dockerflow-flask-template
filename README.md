This is a skeleton project that should include all the parts required
to spin up a dockerized flask application that plays well with
Mozilla's docker infrastructure.


Requirements
============

You'll need docker and docker-compose installed on your computer.


Basics
======

A basic Makefile has been included to run most tasks.

Clone the respository and build the docker images using:

`make build`

You should get output that ends with :

```
Successfully tagged dockerflowflasktemplate_web:latest
```

Startup the container to run Flask on port 8000 with :

`make up`

You should be able to load http://localhost:8000 now.
