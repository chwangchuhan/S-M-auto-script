check=1

mapIds = {84500,84502,84805}

bot_stop()

local function isitem()
	if item_if("遗忘之城传送石")~=0 then --有没有遗忘之城传送石--
		return true
	end
	printgame(0,255,0,"没有[遗忘之城传送石],此Lua结束")
	return false
end

local function isInMap()
	for i=1,#mapIds do
			if getmapid() ==mapIds[i] then
				return true
			end
	end
	return false
end

if not isInMap() then
	sleep(2000)
	speak("使用[遗忘之城传送石]")
	item_use(430458240)
end

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "270遗忘每日现金药",
    mapCount = 1,
    planeId = nil,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {84500,84502,84805},
    overtime = 20, --超时时间，/分钟
    endMapIds = {84805}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_hit_range_max=100,
		tobot_hit_range_min=10,
		tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
    },
	isLuckyDog = true,
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 
       "",
       -- 副本进门
       "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323534342C3738332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333135322C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132322C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039322C313234372CB2BBB1E42C",
       -- 1
	   "",
	},
	 onScriptRound = function (config) -- 副本每次切换地图回调
		if(getmapid()==84500)then
			repeat
				sleep(100)
				open_npc(833014)
				npc_plane(833014,833014,1,8330142,100)
				close_npc(833014)
			until(getmapid()~=84500)
		end
		if(getmapid()==84502)then
			ini_change("ban_hit_mob",1)
		end
		if(getmapid()==84805)then
			bot_stop()
			open_npc(833023)
			sleep(100)
			request_task(833023,9582901,1)
			sleep(100)
			submit_task(833023,9582901)
			sleep(100)
			close_npc(833023)
			sleep(100)
			item_use(430458211)
			sleep(1000)
			request_task(0,9582904,4)
			sleep(100)
			open_npc(833023)
			sleep(100)
			submit_task(833023,9582904)
			sleep(100)
			close_npc(833023)
			sleep(100)
			item_use(430458209)
			sleep(1000)
			request_task(0,9582902,4)
			sleep(100)
			open_npc(833023)
			sleep(100)
			submit_task(833023,9582902)
			sleep(100)
			close_npc(833023)
			sleep(100)
			item_use(430458210)
			sleep(1000)
			request_task(0,9582903,4)
			sleep(100)
			open_npc(833023)
			sleep(100)
			submit_task(833023,9582903)
			sleep(100)
			close_npc(833023)
			sleep(100)
			speak("现金药已领取，10s后结束此lua")
			sleep(10000)
			plane(70)
		end
    end
})