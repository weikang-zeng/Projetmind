# Projetmind
projetmind_fortheserveur

连接一级服务器
ssh zengw@access-gricad.univ-grenoble-alpes.fr

连接二级集群
ssh dahu


运行指令
oarsub -l /nodes=1/core=32,walltime=18:00:00 --project pr-mind "source /applis/site/guix-start.sh; java -jar EvoAgentZENG.jar -nog ./Minds/T7/Tasks/learningTasks/learnAvoid.simbatch"

需要注意，经测试似乎多节点对学校效率并没有帮助

可以看运行状态
oarstat -f -j 任务序号 


测试ssh密钥是否生效
ssh -i ~/Projetmind/id_rsa_dahu -T git@github.com

成功则显示
Hi weikang-zeng! You've successfully authenticated, but GitHub does not provide shell access.

让ssh默认使用密钥
GIT_SSH_COMMAND="ssh -i ~/Projetmind/id_rsa_dahu -o IdentitiesOnly=yes" git pull

生成ssh密钥，且需要在github网页端添加对应密钥内容

把 key 从项目目录移到标准位置
mkdir -p ~/.ssh
mv ~/Projetmind/id_rsa_dahu ~/.ssh/
mv ~/Projetmind/id_rsa_dahu.pub ~/.ssh/
chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa_dahu
chmod 644 ~/.ssh/id_rsa_dahu.pub

然后再编辑加入设定
nano ~/.ssh/config

Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_dahu
    IdentitiesOnly yes

给予权限
chmod 600 ~/.ssh/config

测试是否成功设定
ssh -T git@github.com
