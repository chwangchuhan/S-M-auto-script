check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "地铁中枢",
    mapCount = 3,
    planeId = 156,
    -- 地图名称列表，需和mapIds一一对应
    mapIds = {8924.0, 28500.0, 28501.0},
    overtime = 20, --超时时间，/分钟
    -- 脚本名称列表，需和mapIds一一对应
    -- 支持16进制hex编码脚本
    -- 由于正则不通用，因此判断是否用hex的地方是字符串长度大于30
    scripts = {
       -- 地铁中枢
       "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343036302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343034302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343032302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343038302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313230302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313232302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313138302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313136302C3730342CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C343030302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333830302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333930302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333935302C3730342CB2BBB1E42C",
       "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343036302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343034302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343032302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343038302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313230302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313232302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313138302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313136302C3730342CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C343030302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333830302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333930302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333935302C3730342CB2BBB1E42C",
       "BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343036302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343034302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343032302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C343038302C3730342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313230302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313232302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313138302C3730342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313136302C3730342CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C343030302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333830302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333930302C3730342CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C333935302C3730342CB2BBB1E42C",
    },
    -- 任务列表
    -- 任务会在跳转到对应地图时执行，因此如mapId中未配置或者初始飞机不在任务地点则无法领取任务
    -- 不同npc或不同地图的任务请配置多个task
    tasks = {
        {
            mapId = 8924.0,
            npcId = 6076,
            taskIds = {134001021, 134001022, 134001023, 134001024, 134001025, 134001026, 134001027, 134001028, 134001029, 134001030, 134001031},
        }
    },
	onScriptRound = function () -- 副本每次切换地图回调
        if (getmapid() == 28500) then
			ini_change("ban_hit_mob",1)
        end
    end
})