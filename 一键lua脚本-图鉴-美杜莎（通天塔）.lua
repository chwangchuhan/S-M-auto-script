check=1

name="图鉴-美杜莎（通天塔）"
state=0
getbox=0
--1要箱子 0不要箱子--
mapname = {"暗之塔19层","暗之塔9层","金之塔19层","金之塔9层", "银之塔19层","银之塔9层","铁之塔19层","铁之塔9层","石之塔19层","石之塔9层"}
local function isInMap()
	for i=1,#mapname do
			if getmapname() ==mapname[i] then
				return true
			end
	end
	return false
end

while(true)
do   
	sleep(200)
	ini_change("find_zhiding","美杜沙;魔化美杜沙")
	ini_change("find_is_zhiding",1)
	if not isInMap() then
		state=indun_into("暗之塔19层")
		if(state==2) then
			state=indun_into("暗之塔9层")
			if(state==2) then
				state=indun_into("金之塔19层")
				if(state==2) then
					state=indun_into("金之塔9层")
					if(state==2) then
						state=indun_into("银之塔19层")
						if(state==2) then
							state=indun_into("银之塔9层")
							if(state==2) then
								state=indun_into("铁之塔19层")
								if(state==2) then
									state=indun_into("铁之塔9层")
									if(state==2) then
										state=indun_into("石之塔19层")
										if(state==2) then
											state=indun_into("石之塔9层")
											if(state==2) then
												break
											end
										end
									end
								end
							end
						end
					end
				end
			end
		end
	end
		
	if(state==1) then
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
	if(getmapname()=="暗之塔19层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="暗之塔9层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="金之塔19层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="金之塔9层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="银之塔19层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="银之塔9层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="铁之塔19层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="铁之塔9层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="石之塔19层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="石之塔9层") then --已经在这层--
		useskill(51801002,0)
		box_if=indun_box_if()--检测箱子状态--
		if(box_if==0) then
			bot_start()--启动挂机--
		end
		if(box_if==1) then --箱子出现--
			sleep(500)
			plane(801)
			wait_loadmap()
			break
		end
	end
end
bot_stop()
ini_change("find_is_zhiding",0)
if(state==2) then
	printgame(0,255,0,"土拨鼠提示通天塔："..name.."已经刷过且没有通天塔扫荡指令书~！")
elseif(state==3) then
	printgame(0,255,0,"土拨鼠提示：缺乏活力")
else
	printgame(0,255,0,"     土拨鼠提示通天塔："..name.."已完成！     ")
end
sleep(1000)