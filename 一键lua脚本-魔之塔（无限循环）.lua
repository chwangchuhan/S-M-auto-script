check=1

name="魔之塔"
state=0
getbox=1
--1要箱子 0不要箱子--

while(true)
do   
	if(getmapname()==name) then --已经在这层--
		ini_change("tobot_hit_range_top",400)
		ini_change("tobot_hit_range_max",400)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			if(getbox==1) then
				indun_box_get()--拿箱子--
			end
		end
		if mob_if('大魔王分神')==1 then
			ini_change("tobot_hit_range_max",600)
			sleep(2000)
			if mob_if('大魔王分神')==0 then
				sleep(500)
				plane(801)
			end
		end
	else
		state=indun_into(name)
		if(state==2) then
			break
		elseif(state==1) then
			bot_start()--启动挂机--
		elseif(state==-1) then
			bot_start()--启动挂机--
		elseif(state==0) then
		elseif(state==3) then
			if(useitem("高级活力能量剂")==0) then
				if(useitem("中级活力能量剂")==0) then
					if(useitem("低级活力能量剂")==0) then
						break
					end
				end
			end
		end

	end
end
bot_stop()

if(state==2) then
	printgame(0,255,0,"土拨鼠提示通天塔："..name.."已经刷过且没有通天塔扫荡指令书~！")
elseif(state==3) then
	printgame(0,255,0,"土拨鼠提示：缺乏活力")
else
	printgame(0,255,0,"     土拨鼠提示通天塔："..name.."已完成！     ")
end
sleep(1000)