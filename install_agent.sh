#!/bin/sh

# 下载并解压 Nezha agent
wget -O ~/nezha-agent_freebsd_amd64.zip https://github.com/nezhahq/agent/releases/download/v0.16.7/nezha-agent_freebsd_amd64.zip
unzip ~/nezha-agent_freebsd_amd64.zip -d ~/domains/gulang.serv00.net/public_html/nezhapanel

# 创建 tmp 目录
mkdir -p ~/tmp

# 切换到 nezhapanel 目录
cd ~/domains/gulang.serv00.net/public_html/nezhapanel

# 赋予 nezha-agent 可执行权限
chmod +x nezha-agent

# 创建 agent.sh 脚本
cat > agent.sh << EOF
#!/bin/sh

export TMPDIR=/home/gulang/tmp

/home/gulang/domains/gulang.serv00.net/public_html/nezhapanel/nezha-agent -s tz.xsjcloud.cn:47321 -p qPbBWP6kVChoJNdtiX -d
EOF

# 赋予 agent.sh 可执行权限
chmod +x agent.sh

# 后台运行 agent.sh 脚本
nohup ./agent.sh &
