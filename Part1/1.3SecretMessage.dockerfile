C:\Users\lyytijo>docker run -d -it --name looper devopsdockeruh/simple-web-service:ubuntu
7caebe7ed2ab4a744243c2e06745a33699729ca9f16fd87f81823c7a0862403a

C:\Users\lyytijo>docker container ls
CONTAINER ID   IMAGE                                      COMMAND                 CREATED              STATUS              PORTS     NAMES
7caebe7ed2ab   devopsdockeruh/simple-web-service:ubuntu   "/usr/src/app/server"   About a minute ago   Up About a minute             looper
53bf8335762f   ubuntu                                     "bash"                  About an hour ago    Up About an hour              bold_mayer

C:\Users\lyytijo>docker logs -f looper
Starting log output
Wrote text to /usr/src/app/text.log


C:\Users\lyytijo>docker attach --no-stdin looper
Wrote text to /usr/src/app/text.log

C:\Users\lyytijo>docker exec -it looper bash
root@7caebe7ed2ab:/usr/src/app# ps aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.0 708912  9560 pts/0    Ssl+ 07:38   0:00 /usr/src/app/server
root        11  0.5  0.0   4112  3440 pts/1    Ss   07:42   0:00 bash
root        20  0.0  0.0   5900  2952 pts/1    R+   07:42   0:00 ps aux


root@7caebe7ed2ab:/usr/src/app# tail -f ./text.log
2022-04-06 07:42:41 +0000 UTC
2022-04-06 07:42:43 +0000 UTC
Secret message is: 'You can find the source code here: https://github.com/docker-hy'