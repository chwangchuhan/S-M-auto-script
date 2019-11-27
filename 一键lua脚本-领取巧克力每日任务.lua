check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "巧克力花园(超越)",
    mapCount = 1,
    planeId = 269,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {18403,18402},
    overtime = 5, --超时时间，/分钟
    endMapIds = {35006}, -- 结束一轮的地图id 默认为最后一张图，设置则以此值为准，没有可以不设置
    initSettings = {  -- 脚本初始化时的配置参数 可以不设置
        tobot_fastladder = 0, -- 取消快速爬梯，防止大桥下楼梯不稳定
	},
	isLuckyDog = true,

    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 副本进门
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3732302C3932372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3133382C313837322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130382C313837322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C37382C313837322CB2BBB1E42C",
       -- 副本1
       "",
	},
	tasks = {
        {
            mapId = 18402,
            npcId = 1007,
            taskIds = {164003046},
        }
    },
	 onScriptRound = function () -- 副本每次切换地图回调
		repeat
			sleep(200)
			if (getmapid() == 18402) then
			  sleep(4000)
			  ini_change("ban_hit_mob",0)
			  plane(269)
			  return true
			end
		until(getmapid() ~= 35500)
    end
})
