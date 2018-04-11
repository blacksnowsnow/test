#!/bin/bash
clear
echo "###########################################################################"
echo "#                      ～～～！破冰游戏开始！～～～                           #"
echo "###########################################################################"                           
echo -e "\033[31m游戏规则 \033[0m"
echo -e "\033[31m随机生成一个100以内数字，每次回答会根据谜底数字进行范围收缩，玩家答对谜底，游戏结束！\033[0m"
Z=1
X=100
C=$Z-$X
while :
do
B=$[ RANDOM%100 ]
if [ "$B" -le  1 ];then
continue
else
####################
#echo $B； #作弊开启
####################
while :
do
echo ""
read -p "请输入$C以内的数字：" A V U
#if [ $# -gt 2 ];then
#echo 你输入的值有误，请重新输入！
#continue
if [ -z $A ];then
echo -e  "\n\033[34m你输入的值有误，请重新输入！\033[0m"
continue
elif [ ! -z $V ];then
echo -e  "\n\033[34m你输入的值有误，请重新输入！\033[0m"
continue
elif [ ! -z $U ];then
echo ""
echo -e  "\n\033[34m你输入的值有误，请重新输入！\033[0m"
continue
elif [ $ !=  `echo $A | sed 's#[0-9]##g' | cat -A` ];then
echo -e  "\n\033[34m你输入的值有误，请重新输入！\033[0m"
continue
elif [ $A -ge $X ];then
echo -e  "\n\033[34m你输入的值不在范围内，请重新输入！\033[0m"
continue
elif [ $A -le $Z ];then
echo -e  "\n\033[34m你输入的值不在范围内，请重新输入！\033[0m"
continue 
else
if [ $A -eq $B ];then
clear
for i in {1..100}
do
echo -e "\n\n\n\n\n"
line1="************GAME   OVER**************"
line2="*******1-2-3-4-5   上山打老虎********"
line3="THANK***********   **************PLAY"
A=1
while [ $A -ne  $i ]
do
echo -n " ";let A++
done
echo -en "\033[31m"$line1""
A=1
echo ""
while [ $A -ne  $i ]
do
echo -n " ";let A++
done
echo -en "\033[32m"$line2""
A=1
echo ""
while [ $A -ne  $i ]
do
echo -n " ";let A++
done
echo -en "\033[33m"$line3"\033[0m";sleep 0.1;clear
done
echo  -e   "\033[36mBLACKSNOW MAKE!THANK FOR FJH CQC OYLK LDJ...\033[0m"
sleep 2
#sl
exit
elif [ $A -gt $B ];then
X=$A ; C=$Z-$X
elif [ $A -lt $B ];then
Z=$A ; C=$Z-$X
fi
fi
done
fi
done
