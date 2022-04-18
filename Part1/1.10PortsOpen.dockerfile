C:\Users\lyytijo>docker run -p 127.0.0.1:8080:8080 web-server server
[GIN-debug] [WARNING] Creating an Engine instance with the Logger and Recovery middleware already attached.

[GIN-debug] [WARNING] Running in "debug" mode. Switch to "release" mode in production.
 - using env:   export GIN_MODE=release
 - using code:  gin.SetMode(gin.ReleaseMode)

[GIN-debug] GET    /*path                    --> server.Start.func1 (3 handlers)
[GIN-debug] Listening and serving HTTP on :8080
[GIN] 2022/04/11 - 08:11:28 | 200 |        33.1µs |      172.17.0.1 | GET      "/"
[GIN] 2022/04/11 - 08:11:29 | 200 |        38.2µs |      172.17.0.1 | GET      "/favicon.ico"
[GIN] 2022/04/11 - 08:11:30 | 404 |         600ns |      172.17.0.1 | POST     "/"
