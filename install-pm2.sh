#!/bin/bash

# 检查是否已安装 Node.js 和 npm
if ! command -v node &> /dev/null || ! command -v npm &> /dev/null
then
    echo "Node.js or npm is not installed. Please install Node.js first."
    exit 1
fi

# 设置 npm 全局安装路径为用户目录
mkdir -p ~/.npm-global
npm config set prefix '~/.npm-global'

# 将 npm 全局 bin 添加到 PATH
if ! grep -q "PATH=~/.npm-global/bin:\$PATH" ~/.profile; then
    echo "export PATH=~/.npm-global/bin:\$PATH" >> ~/.profile
    echo "PATH has been updated. Please run 'source ~/.profile' or log out and log back in for the changes to take effect."
fi

# 保存原始镜像地址
original_registry=$(npm config get registry)

# 设置淘宝镜像
echo "Setting npm registry to CNPM mirror for faster installation..."
npm config set registry https://registry.npmmirror.com

# 安装 pm2
echo "Installing pm2. This may take a few moments..."
npm install -g pm2 &

# 获取后台进程的 PID
bg_pid=$!

# 显示进度动画
spin='-\|/'
i=0
while kill -0 $bg_pid 2>/dev/null
do
    i=$(( (i+1) %4 ))
    printf "\r${spin:$i:1} Installing... (Press Ctrl+C to cancel)"
    sleep .1
done

# 检查 pm2 是否成功安装
if command -v pm2 &> /dev/null
then
    echo -e "\npm2 has been successfully installed."
    pm2 --version
else
    echo -e "\nFailed to install pm2. Please check your permissions and try again."
    exit 1
fi

# 切换回原来的镜像
echo "Switching back to the original npm registry..."
npm config set registry "$original_registry"
echo "Npm registry has been set back to the original: $original_registry"

echo "安装成功。如有问题请联系Q365172043。"