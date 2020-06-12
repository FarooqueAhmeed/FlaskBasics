# 基于Flask和mysql的CRUD应用
## 结构
database.py 数据库连接单元，注意将password改为你自己的数据库密码

models.py mysql数据库描述

app.py 主文件

templates 前端文件

static 主要为css文件

## 启动

git clone https://github.com/yup8j/flasky.git

cd flasky

source venv/bin/activate

mysql -uroot -p

CREATE DATABASE e3_1;

mysql -u root -p e3_1 < /YOUR WORKING DIRECTORY/flasky/e3_1.sql

python app.py

进入http://127.0.0.1:5000/ 查看效果，目前后台管理略有问题，待修复

## 展示

以后做
