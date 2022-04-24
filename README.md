# 说明
单节点部署ELK快速体验

基础环境，使用vagrant管理virtualbox虚拟机

部署脚本使用ansible。

vagrant目录下存放vagrant脚本。

ansible目录下存放部署els的ansible脚本。

# 使用
1. 使用vagrant或自建虚拟机
2. ansible-playbook download.yml 下载安装包
3. ansible-playbook -i inventory.ini elk.yml 
