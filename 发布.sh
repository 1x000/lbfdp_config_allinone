#!/bin/bash
echo "当前目录：$(pwd)"
echo

echo "正在执行：git add ."
git add .
echo

read -p "请输入 commit 的信息：" message
git commit -m "$message"
echo

echo "正在执行：git pull origin main"
git pull origin main
echo

echo "正在执行：git push origin main"
git push origin main
echo

read -p "按任意键继续..." -n1 -s