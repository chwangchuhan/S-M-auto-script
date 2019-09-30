check=1

xingzhiyaolan = {}
xingzhiyaolan.chname = "星之摇篮" --副本名称--
xingzhiyaolan.donum = 4 --副本次数--
xingzhiyaolan.buffname = nil --为nil表示没有BUFF要求--
xingzhiyaolan.warning = nil --为nil表示没有提示--
xingzhiyaolan.version = "1.1.0.06142" --版本号--

local function isInMap()
	if getmapid() == 21100.0 
	or getmapid() == 21101.0 
	or getmapid() == 21102.0
	or getmapid() == 21103.0 
	or getmapid() == 21104.0 then
		return true
	end
	return false
end

local function isNumEnd()
	if indun_get(xingzhiyaolan.chname) == xingzhiyaolan.donum 
		and not isInMap() then
		return true
	end
	
	return false
end

local function planeToEntry()
	if getmapid() ~= 21001.0 then
		plane(125)
		if getmapid() ~= 21000.0 then
			wait_loadmap()
		end
	end
end

function xingzhiyaolan.begin()
	bot_stop()--停止挂机--
	
	printgame(0,255,255,"此Lua为全自动["..xingzhiyaolan.chname.."]"..xingzhiyaolan.donum.."次 在任意地图载入启动 若按错 你有5秒时间停止载入")
	local printtime = 2000
	sleep(30)
	printtime = printtime - 30
	if xingzhiyaolan.warning then
		printgame(255,255,0,"提示："..xingzhiyaolan.warning)
		sleep(30)
		printtime = printtime - 30
	end
	
	maketeam()
	sleep(3000)

	if isNumEnd() then
		printgame(0,255,255,"["..xingzhiyaolan.chname.."]已刷完"..xingzhiyaolan.donum.."次，此Lua执行完毕")
		return
	end

	ini_change("tobot_scriptbot",1)--启动脚本挂机--

	if xingzhiyaolan.buffname then
	
	end
	
	if not isInMap() then
		planeToEntry()
	end

	while(true)
	do
		sleep(30)	
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then--防止加载地图崩溃--
			mapid_last = mapid_now
			if getmapid() == 21001.0 then
				bot_stop()--停止挂机--
				if isNumEnd() then
					ini_change("tobot_scriptbot", 0)--停止脚本挂机--
					ini_change("ban_hit_mob",0)--允许攻击--
					printgame(0,255,255,"["..xingzhiyaolan.chname.."]已刷完"..xingzhiyaolan.donum.."次，此Lua执行完毕")
					return
				end
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3738342E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313530332E32362C3738342E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3938342E3138362C3738342E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--启动挂机--
			end

			if getmapid() == 21100.0 then --进入副本--
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C323838302E30342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C323838302E30342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 21100.0 then
						break
					end
					
					if door_if(3050,2880) == 1 then --检测门口出来没有--
						bot_stop()--停止挂机--
						ini_change("ban_hit_mob",1)--禁止攻击--
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C323838302E30342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C323838302E30342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035302E38392C323838302E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
						bot_start()--启动挂机--
						break
					end
				end	
			end

			if getmapid() == 21101.0 then
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3235362E32342C3630382E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323037392E38362C3630382E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313933362E32362C3630372E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313430382E36362C313234382E35362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323834372E31382C313337362E35362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323730342E31342C313337352E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3839362E3231322C323031362E322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333133352E34312C323031362E322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 21101.0 then
						break
					end
					
					if door_if(3013,2016) == 1 then --检测门口出来没有--
						bot_stop()--停止挂机--
						ini_change("ban_hit_mob",1)--禁止攻击--
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3235362E32342C3630382E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323037392E38362C3630382E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313933362E32362C3630372E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313430382E36362C313234382E35362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323834372E31382C313337362E35362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323730342E31342C313337352E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3839362E3231322C323031362E322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333133352E34312C323031362E322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031332E30312C323031362E36382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
						bot_start()--启动挂机--
						break
					end
				end	
			end

			if getmapid() == 21102.0 then
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C323838302E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C323839362E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 21102.0 then
						break
					end
					
					if door_if(1510,2992) == 1 then --检测门口出来没有--
						bot_stop()--停止挂机--
						ini_change("ban_hit_mob",1)--禁止攻击--
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C323838302E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C323839362E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313531302E37372C323939322E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
						bot_start()--启动挂机--
						break
					end
				end	
			end

			if getmapid() == 21103.0 then
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3235362E3730362C3630382E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323037392E36362C3630382E342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313933362E38392C3630372E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333130332E32352C313337362E38382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3438302E3137322C313337362E38382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3632342E3934332C313337352E38382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3132382E3534322C323031362E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C323031362E33362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 21103.0 then
						break
					end
					
					if door_if(3016,2016) == 1 then --检测门口出来没有--
						bot_stop()--停止挂机--
						ini_change("ban_hit_mob",1)--禁止攻击--
						script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3235362E3730362C3630382E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323037392E36362C3630382E342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313933362E38392C3630372E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333130332E32352C313337362E38382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3438302E3137322C313337362E38382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3632342E3934332C313337352E38382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3132382E3534322C323031362E33362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C323031362E33362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333031362E37342C323031362E33362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
						bot_start()--启动挂机--
						break
					end
				end	
			end
			
			if getmapid() == 21104.0 then
				bot_stop()--停止挂机--
				ini_change("ban_hit_mob",0)--允许攻击--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3537362E3030392C323939322E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323535392E36372C323939322E39322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--启动挂机--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 21104.0 then
						break
					end
					
					if door_if(1536,2992) == 1 then --检测门口出来没有--
						printgame(0,255,255,"英雄王已死~")
						bot_stop()--停止挂机--
						ini_change("ban_hit_mob",1)--禁止攻击--
						sleep(2000)
						planeToEntry()
						break
					end
				end	
			end
		end
	end
end

xingzhiyaolan.begin()

return xingzhiyaolan