#!/bin/sh

# 进入用户的主目录或者任意希望的工作目录
cd ~/domains/USERNAME.serv00.net/public_html

# 下载 imgapi-freebas-amd64.zip
fetch https://github.com/Shadownc/serv00-sh/releases/download/imgapi/imgapi-freebas-amd64.zip

# 解压文件
unzip -P blog.lmyself.top imgapi-freebas-amd64.zip

# 赋予 imgapi 可执行权限
chmod +x imgapi

# 创建 .env 文件并写入配置
cat <<EOT >> .env
DB_USERNAME=数据库用户名
DB_PASSWORD=数据库密码
DB_HOST="localhost"
DB_PORT="3306"
DB_NAME=数据库名
TABLE_NAME=apis
SERVER_PORT=20958
IMG_APIKEY=
EOT

# 使用 nohup 后台运行 imgapi
nohup ./imgapi &

echo "imgapi 已经在后台运行"
