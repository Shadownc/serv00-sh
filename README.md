# serv00 sh

## pm2一键安装
```
bash <(curl -s https://raw.githubusercontent.com/Shadownc/serv00-sh/main/install-pm2.sh)
```
## 哪吒面板一键安装
```
bash <(curl -s https://raw.githubusercontent.com/Shadownc/serv00-sh/main/install_nezha.sh)
```
**说明：**
| 脚本内                 | 替换成                          |
|:-------------------:|:----------------------------:|
| USERNAME.serv00.com |  替换成`Add a New Website`定义的域名 |
| 端口13140、13141       | 替换成自己开放的端口                   |
## 哪吒面板agent一键安装
```
bash <(curl -s https://raw.githubusercontent.com/Shadownc/serv00-sh/main/install_agent.sh)
```
**说明：**
| 脚本内                 | 替换成                          |
|:-------------------:|:----------------------------:|
| USERNAME.serv00.com |  替换成`Add a New Website`定义的域名 |
| USERNAME            | 替换成`Serv00`的用户名                |
| password            | 替换成`dashboard`新增服务器生成的密钥       |  

## 随机壁纸api一键安装
```
bash <(curl -s https://raw.githubusercontent.com/Shadownc/serv00-sh/main/install_imgapi.sh)
```
**说明**
| 脚本内                 | 替换成                                                           |
|:-------------------:|:-------------------------------------------------------------:|
| USERNAME.serv00.net | 使用serv00的mysql一般有前缀 要带上                                       |
| 数据库用户名              | 使用serv00的mysql一般有前缀 要带上 |
| 数据库密码               | 自己的数据库密码                                                      |
| DB_HOST             | 如果使用的是serv00的mysql 要换成mysql10.serv00.com 你是s几就填几 我这里用的是s10    |
| 数据库名                | 使用serv00的mysql一般有前缀 要带上                                       |
| SERVER_PORT         | 自己定义或者随机生成的端口                                                 |


**查看详情访问[博客](https://blog.lmyself.top)**
