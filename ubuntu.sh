
command_info="
----------------------------------------------------
执行Termux安装unbuntu脚本
输入以下指令编号，执行具体任务
声明:此脚本出自bilibili:可对付
篡改此脚本，出现任何问题不负责
0-退出
1-安装云崽及依赖
2-启动云崽
3-教程
4-安装插件
5-安装ubuntu【先执行】
6-启动ubuntu
注意:先执行5 再启动ubuntu 最后安装云崽[脚本需多次执行]
警告:落开启ubuntu之后 提示:bash: curl: command not found
请运行以下命令解决:apt-get update -y && apt-get install curl -y
-----------------------------------------------------
"
echo "$command_info"
echo
echo
echo
# 根据指令执行具体任务
while :
do
	echo
	read -p "请输入指令：" command
	case $command in
		0)
			echo "已结束此次脚本"
			break
			;;
		1)





            echo "安装nodesource"

            curl -sL https://deb.nodesource.com/setup_17.x | bash -



            echo "安装node"

            apt-get install -y nodejs



            echo "安装redis"

            apt-get install redis -y



            echo "启动redis，这个是云崽的数据库，启动云崽时必须保证这个是开着的"

            redis-server



            echo "安装chromium"

            apt install chromium-browser -y



            apt install -y --force-yes --no-install-recommends fonts-wqy-microhei



            echo "安装git"

            apt install git -y



            echo "克隆云崽项目"

            echo "git clone --depth=1 https://gitee.com/yoimiya-kokomi/Yunzai-Bot.git"



            echo "进入云崽根目录"

            cd Yunzai-Bot



            echo "安装pnpm"

            npm install pnpm -g



            echo "安装依赖"

            pnpm install -P
            
            echo "请执行命令2"
            bash <(curl -L file:///storage/emulated/0/测试/ubuntu.sh)
			;;
	    2)
	      echo "准备开启ubuntu"
	      cd ~/Termux-Linux/Ubuntu
	      echo "开启ubuntu"
	      ./start-ubuntu.sh
	      echo "准备开启云崽"
	      cd Yunzai-Bot
	      echo "准备开启"
	      redis-server & node app
			;;	      
	     
 	      
        3)
        echo "请前往github.com查看"
         ;;
        4)
        echo "暂不支持，请等待后续更新(预计今日完成)"
        
         

         ;;
        5)
        echo "开始安装ubuntu"
        			# 开始安装
			pkg update -y



            pkg install proot git python -y



            git clone https://gitee.com/Le-niao/termux-install-linux.git



            cd termux-install-linux



            python termux-linux-install.py
             
             
            cd ~/Termux-Linux/Ubuntu
            
                        echo "更新软件包列表"

            apt update



            echo "安装curl"

            apt-get update -y && apt-get install curl -y
            
            echo "你已安装完ubuntu 请执行命令6（输入6即可）之后再次执行脚本"


			;;
		6)	
		cd ~/Termux-Linux/Ubuntu

            echo "启动Ubuntu"

            ./start-ubuntu.sh
 			;;

	esac
done

