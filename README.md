# docker-knife4j-desktop
knife4j桌面独立部署版
相关文件地址
[github](https://github.com/hjl2626/docker-knife4j-desktop)

## 内部挂载目录

- /data/knife4j/config  配置文件
- /data/knife4j/data 离线openapi文件
- /data/knife4j/logs 日志文件


## 启动
docker run -itd \
-v /data/knife4j/config:/data/knife4j/config \
-v /data/knife4j/data:/data/knife4j/data \
-v /data/knife4j/logs:/data/knife4j/logs \
-p 8006:8006 knife4j-bin:tagname
