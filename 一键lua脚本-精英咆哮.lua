check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "克杜卡的咆哮",
    mapCount = 1,
    planeId = 94801,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {83100,9300,9301,9302,9303,9304,9305,9306,9307,9308},
    overtime = 30, --超时时间，/分钟
    endMapIds = {9306,9307,9308}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
	},
	
	isLuckyDog = true,

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313930302C313335392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313932302C313335392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313838302C313335392CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313730302C313335392CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323130302C313335392CD7F3C5DC2C",
       -- 副本1
       "D7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323335302C3733362CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323035302C3836342CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3839352C313531392CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313236342C313032302CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313236342C313036302CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C313236342C313032302CD3D2C5DC2C0D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C313236342C313036302CD3D2C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323931322C313531392CD3D2C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313530302C313339312CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313931392C3939312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C313531392CB2BBB1E42C",
       -- 副本2
       "CFC2C5C0CCDDD7D32CD7F3C5DCCAB12C323936302C3434372CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C323936302C3435302CD7F3C5DC2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3130302C313531392CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3335302C313133352CB2BBB1E42C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313530302C313531392CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C313531392CB2BBB1E42C",
       -- 副本3
       "D3D2CCF82CD3D2C5DCCAB12C313730302C3436332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313930302C3436332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333032302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333030302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034302C313531392CB2BBB1E42C",
       -- 副本4
       "D3D2CCF82CD7F326D3D2CAB12C323134332C313531392CD7F3C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323430302C313332372CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323330302C3935392CD7F3C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323430302C313332372CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C313730302C3831352CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C313730302C3436332CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3833312C3934332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323937302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323939302C313531392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935302C313531392CB2BBB1E42C",
       -- 副本5
       "D3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3338342C323939312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3732302C323039352CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C3932372C323939312CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C333136372C323939312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034302C323633392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036302C323633392CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038302C323633392CB2BBB1E42C",
       -- 副本6
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313030302C323836332CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3638382C323431352CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3237322C323036332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313635302C323537352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3832302C323431352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323330302C323036332CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C313430382C323836332CD7F3C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C313832332C323836332CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C323134342C323836332CD7F3C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323339392C323836332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333034352C323836332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333036352C323836332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038352C323836332CB2BBB1E42C0D0AD7F3CCF82CD7F326D3D2CAB12C323638382C323139312CD7F3C5DC2C0D0ACBC9BFAACCDDD7D32CD7F326D3D2CAB12C313737302C323036342CD3D2C5DC2CCAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313833302C323036342CD7F3C5DC2C0D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C313737302C323036342CD3D2C5DC2CCAB9D3C3BCBCC4DC2C393837393939390D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323238302C313737352CD7F3C5DC2C0D0AD7F3CCF82CD7F3C5DCCAB12C323830302C323836332CD7F3C5DC2C",
       -- 副本7
       "BDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333034352C313531392CB2BBB1E42C0D0ABDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333036352C313531392CB2BBB1E42C0D0ABDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333038352C313531392CB2BBB1E42C",
       -- 副本8
       "BDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333034352C313531392CB2BBB1E42C0D0ABDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333036352C313531392CB2BBB1E42C0D0ABDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333038352C313531392CB2BBB1E42C",
       -- 副本9
       "BDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333034352C313531392CB2BBB1E42C0D0ABDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333036352C313531392CB2BBB1E42C0D0ABDF8CDBCB4ABCBCDC3C52CD7F326D3D22C333038352C313531392CB2BBB1E42C",
	   -- 副本10
	   "",
	   -- 副本11
	   "",
	   -- 副本12
	   "",
	   -- 副本13
	   "",
	   -- 副本14
	   "",
	   -- 副本15
	   "",
	   -- 副本16
	   "",
	   -- 副本17
	   "",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
   
    onScriptRound = function () -- 副本每次切换地图回调
    if (getmapid() == 9300) then
        ini_change("tobot_hit_range_down",20)
		ini_change("tobot_hit_range_top",400)
		ini_change("tobot_hit_range_max",300)
    end
	if (getmapid() == 9300) then
        ini_change("tobot_hit_range_down",20)
		ini_change("tobot_hit_range_top",150)
		ini_change("tobot_hit_range_max",300)
    end
	if (getmapid() == 9302) then
		repeat
			sleep(100)
			if mob_if("机关-开启传送门")==1 then
			speak("机关-开启传送门")
			ini_change("tobot_hit_range_max",1500)
			ini_change("tobot_hit_range_ignore",2000)
			end
			if mob_if("机关-开启传送门")==0 then
			ini_change("tobot_hit_range_max",250)
			ini_change("tobot_hit_range_ignore",400)
			end
		until(door_if(3000,1519)==1)
	end
	if (getmapid() == 9303) then
		repeat
			sleep(100)
			if mob_if("机关-开启传送门")==1 then
			speak("机关-开启传送门")
			ini_change("tobot_hit_range_max",1500)
			ini_change("tobot_hit_range_ignore",2000)
			end
			if mob_if("机关-开启传送门")==0 then
			ini_change("tobot_hit_range_max",250)
			ini_change("tobot_hit_range_ignore",400)
			end
		until(door_if(2970,1519)==1)
	end
	if (getmapid() == 9304) then
	   ini_change("tobot_hit_range_max",250)
	   ini_change("tobot_hit_range_ignore",400)
	end
	if (getmapid() == 9305) then
	   ini_change("find_showname",1)
	   ini_change("find_showhp",1)
	end
	if (getmapid() == 9306) then
		ini_change("find_showname",0)
		ini_change("find_showhp",0)
		repeat 
			sleep(100)
				if door_if(3065,1519) == 1 then 
					bot_stop()--停止挂机--
					sleep(2000)
					plane(94801)
				end
		until (getmapid() ~= 9306)
    end
	if (getmapid() == 9307) then
		ini_change("find_showname",0)
		ini_change("find_showhp",0)
		repeat 
			sleep(100)
				if door_if(3065,1519) == 1 then 
					bot_stop()--停止挂机--
					sleep(2000)
					plane(94801)
				end
		until (getmapid() ~= 9307 )
    end
	if (getmapid() == 9308) then
		ini_change("find_showname",0)
		ini_change("find_showhp",0)
		repeat 
			sleep(100)
				if door_if(3065,1519) == 1 then 
					bot_stop()--停止挂机--
					sleep(2000)
					plane(94801)
				end
		until (getmapid() ~= 9308 )
    end
    end
})