check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "不动心黑月城",
    mapCount = 1,
    planeId = 94701,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {83100,9500,9501,9502,9503,9504,9505,9506,9507,9508,9509,9510,9511,9512,9513,9514,9515},
    overtime = 30, --超时时间，/分钟
    endMapIds = {9512,9513,9514}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_giveitemif=1,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323435302C313335392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323432302C313335392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323438302C313335392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323230302C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323630302C313335392CD7F3C5DC2C",
       -- 副本1
       "CFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323936302C3535392CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C323435362C313331312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323237302C313035352CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323330302C313035352CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323334302C313035352CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313835362C3739392CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323233392C3630372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313930302C3431352CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313038382C3434372CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3730332C3739392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3237322C3739392CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3532382C313138332CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3532382C313434302CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3434382C313138332CD7F3C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3139322C3739392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3536332C313138332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3539332C313138332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3632332C313138332CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323038302C3932372CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3430302C3534332CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3237322C3739392CD7F3C5DC2C",
       -- 副本2
       "D7F3CCF82CD7F326D3D2CAB12C313633322C313435352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530332C313231352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313532332C313231352CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313534332C313231352CB2BBB1E4",
       -- 副本3
       "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C38302C313035352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323938302C3336372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030302C3336372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032302C3336372CD7F3C5DC2C",
       -- 副本4
       "D3D2CCF82CD7F326D3D2CAB12C323037392C313032332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C343338332C313032332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C353237392C313032332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353530302C313030372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C353430302C313030372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363232302C313030372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363235302C313030372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363238302C313030372CD3D2C5DC2C",
       -- 副本5
       "CFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323939322C3534332CD3D2C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CCFC2CCDDD7D32C323939322E39362C3638372E3133322CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD3D2C5DCCAB12C333130302C313433392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD7F326D3D2CAB12C323933332C313234372CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD7F326D3D2CAB12C323932332C313234372CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AC9CFCCF82CD7F326D3D2CAB12C323931332C313234372CD7F3C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323330302C313035352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323332302C313035352CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323335322C313035352CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323137352C313433392CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323237312C313234372CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313332382C313433392CD7F3C5DC2CCAB9D3C3BCBCC4DC2C34333530313031380D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3538302C313035352CD3D2C5DC2C0D0AD3D2CCF82CC9CFCCDDD7D32C3237322C3830322CD3D2C5DC2C0D0AD3D2CCF82CC9CFCCDDD7D32C3237322C3830332CD3D2C5DC2C0D0AD3D2CCF82CC9CFCCDDD7D32C3237322C3830342CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313330302C3730332CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3431362C313433392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3338302C3238372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3430302C3238372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3432302C3238372CB2BBB1E42C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C313332382C313035352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313735392C313433392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C313838372C313335392CD3D2C5DC2C",
       -- 副本6  
       "D7F3CCF82CD7F326D3D2CAB12C323539322C313437312CD7F3C5DC0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C313432342C313433392CD7F3C5DC0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3638382C313035352CD7F3C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3330302C313433392CD7F3C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3332302C313433392CD7F3C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3334302C313433392CD7F3C5DC0D0AC9CFCCF82CD7F326D3D2CAB12C3736372C313433392CD3D2C5DC",
       -- 副本7  
       "",
       -- 副本8
       "D3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323238302C3531312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323932302C3931312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934302C3931312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323936302C3931312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323433302C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323433302C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323435302C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323437302C313437312CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3537362C3730342CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3939312C3730342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313032352C3637312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313034302C3637312CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313437322C313231352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313530302C313035352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832302C313339312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3830302C313339312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3738302C313339312CD3D2C5DC2C",
       -- 副本9  --
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323433302C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323435302C313437312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323437302C313437312CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3537362C3730342CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3939312C3730342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313032352C3637312CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313034302C3637312CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313437322C313231352CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313530302C313035352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832302C313339312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3830302C313339312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3738302C313339312CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323332302C3531312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935302C313138332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937302C313138332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323939302C313138332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323430302C3531312CD7F3C5DC",
	   -- 副本10 11
	   "C9CFCCF82CD7F326D3D2CAB12C33322C323537352CB2BBB1E42C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3131322C323237312CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C313334342C313433392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323039362C313331312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323031302C323535392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323033302C323535392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323035302C323535392CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313630352C3338332CD7F3C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3136302C3733352CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3730302C3338332CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C323137352C3733352CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313034302C3534332CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313334352C3534332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313134302C3534332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313136302C3534332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313138302C3534332CD3D2C5DC2C",
	   -- 副本11 
	   "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3633302C3836332CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3635302C3836332CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3637302C3836332CB2BBB1E4",
	   -- 副本12
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035302C313131392CD3D2C5DC",
	   -- 副本13
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035302C313131392CD3D2C5DC",
	   -- 副本14
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035302C313131392CD3D2C5DC",
	   -- 副本15
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035302C313131392CD3D2C5DC",
	   -- 副本16
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C313131392CD3D2C5DC0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333035302C313131392CD3D2C5DC",
	   -- 副本17
	   "",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
   
    onScriptRound = function () -- 副本每次切换地图回调
    if (getmapid() == 9502) then
		ini_change("tobot_hit_range_down",50)
        repeat
			sleep(100)
			if getx()>1900 and gety()==1439 then
				bot_stop()
				ini_change("tobot_scriptbot",0)
				gotocoordinate(1,680,1439)
				sleep(500)
				gotocoordinate(1,680,1439)
				sleep(500)
				gotocoordinate(1,680,1439)
				sleep(500)
				useskill(5000005,0)
				sleep(800)
				useskill(5000005,0)
				sleep(4000)
			end
			if getx()<1000 and gety()==1439 then
				bot_start()
				ini_change("tobot_scriptbot",1)
				ini_change("tobot_hit_range_max",250)
				ini_change("tobot_hit_range_ignore",2000)
			end
			if getx()>=573 and getx()<=703 and gety()<=320 and gety()>=319 then
				bot_start()
				ini_change("tobot_scriptbot",1)
				ini_change("tobot_hit_range_max",1500)
				ini_change("tobot_hit_range_ignore",2000)
			end
		until(door_if(3000,367)==1 or getmapid() ~= 9502)
    end
	if (getmapid() == 9503) then
		ini_change("tobot_hit_range_max",300)
		ini_change("tobot_hit_range_ignore",2000)
        repeat
			sleep(100)
			if getx()>1100 and getx()<1400 and gety()==1007 then
				bot_stop()
				ini_change("tobot_scriptbot",0)
				sleep(1000)
				useskill(43501018,1)
				bot_start()
				ini_change("tobot_scriptbot",1)
				sleep(4000)
			end
		until(door_if(6260,1007)==1 or getmapid() ~= 9503)
    end
	if (getmapid() == 9504) then
		ini_change("tobot_hit_range_max",300)
		ini_change("tobot_hit_range_ignore",2000)
        repeat
			sleep(100)
			if getx()>=1312 and getx()<=1759 and gety()==1439 then
				local mobId = mob_obj_get('不动心白影忍者')
				if (mobId > 0) then
					local mobX = mob_obj_x(mobId)
					local mobY = gety()
					bot_stop()
					gotocoordinate(1, mobX, mobY)
					sleep(500)
					bot_start()
				end	
			end
		until( mobId ==0 or getmapid() ~= 9504 or door_if(400,287)==1)
    end
	if getmapid()==9506 then
		sleep(500)
		script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3338302C313131392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3339302C313131392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313933302C313131392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C313131392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C313131392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313134302C313131392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313136302C313131392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313138302C313131392CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313530302C313131392CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313630302C313131392CD7F3C5DC2C",2)
	end
	if getmapid()==9509 then
	labelfanhui=0
		repeat
			sleep(200)
			if getx()>=925 and getx()<=1450 and gety()==543 and mob_if("未被触发的机关")==1 then
				bot_stop()
				ini_change("tobot_scriptbot",0)
				gotocoordinate(1,1360,543)
				sleep(1000)
				useskill(5000005,1)
				ini_change("tobot_scriptbot",1)
				labelfanhui=1
			end
		until(labelfanhui==1 or getmapid()~=9509)
    end
	end
})