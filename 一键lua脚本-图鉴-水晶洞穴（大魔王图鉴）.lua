check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "水晶洞穴",
    mapCount = 9999999999999999,
    planeId = 601,
	--maxYSpeed = 1180,
	-- 结束地图id
    endMapIds = {70002},
    overtime = 60,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {70100,70000,70001,70002},
	initSettings = {  -- 脚本初始化时的配置参数 可以不设置
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
		tobot_hit_range_top = 120,
		tobot_hit_range_down = 120,
		tobot_hit_range_max=400,
	},
	
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
        --0
		"BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313035352C3632332CB2BBB1E42C0D0AD6D8D6C3B8B1B1BE2CD7F326D3D2CAB12C3936302C3632332CB2BBB1E42C",
        --1
		"CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C333032342C313037312CB2BBB1E42C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C333032342C313130302CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133302C313437322CD7F3C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C31303030",
        --2
		"D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3834302C3437392CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C313437302C3633392CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C313438302C3633392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313530302C3633392CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C323232342C3635352CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323232342C3635352CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323232342C3730302CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323039302C313037312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323032302C3635352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036352C313435352CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C313438302C3836332CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313032302C3939312CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C33322C3939312CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3438302C3831352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323135302C3635352CD3D2C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313739362C313434322CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C313838302C313435352CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313736302C313037312CD3D2C5DC2C",
        --3
		"BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3735332C313037312CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3830302C3834372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3830302C3834372CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3836332C3834372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3737302C3630372CB2BBB1E42C",
        --4
		"",
    },
	 onScriptRound = function  ()
		if getmapid()==70002 then
			useskill(43501018,1)
			sleep(1000)
			repeat
				sleep(100)
				ini_change("tobot_hit_range_top",120)
				ini_change("tobot_hit_range_down",120)
				local mobId = mob_obj_get('大魔王分神')
				local mobY = mob_obj_y(mobId)
				if isbuff('一花一世界，一叶一菩提')==0 then  --无敌
					useskill(5000420,1)	--灵宠
					sleep(10)
					if isbuff('灵宠技能效果')==0 then --魔免
						useskill(43501022,1)
						sleep(10)
						if isbuff('每天都要美美哒')==0 then --魔免
							useskill(43501025,1)
							sleep(10)
							if isbuff('破坏王技能')==0 then
								useskill(43501018,1)
								sleep(10)
							end
						end
					end
				end
				if gety()==1071 and door_if(750,1071)==1 then
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					jmp(1)
					bot_start()
					sleep(3000)
				end
				if gety()==847 then
					ini_change("ban_hit_mob",0)
				end
				if gety()==607 then
					useskill(51801002,0)
					ini_change("ban_hit_mob",0)
				end
			until(mobId==0)
		end
    end,
})
