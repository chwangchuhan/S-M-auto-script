check = 1


local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.shendianStart({
    mapName = '神殿普通',
    isWaiting = true,                   -- 活动时间未到时是否等待
    mapMouseFile = '神殿普通入门(高).txt',   -- 鼠标脚本地址
    overtime = 5,                       -- 副本超时时间/分
    task = {
        npcId = 1301,
        taskIds = {43601201, 43601202, 43601203, 43601204, 43601205, 43601206},
    },
})

common.shendianStart({
    mapName = '神殿高级',
    isWaiting = true,                   -- 活动时间未到时是否等待
    mapMouseFile = '神殿高级入门(高).txt',   -- 鼠标脚本地址
    overtime = 5,                       -- 副本超时时间/分
    task = {
        npcId = 1301,
        taskIds = {43602201, 43602202, 43602203, 43602204, 43602205, 43602206},
    },
})

common.shendianStart({
    mapName = '神殿英雄',
    isWaiting = true,                   -- 活动时间未到时是否等待
    mapMouseFile = '神殿英雄入门(高).txt',   -- 鼠标脚本地址
    overtime = 15,                      -- 副本超时时间/分
    task = {
        npcId = 1301,
        taskIds = {43603201, 43603202, 43603203, 43603204, 43603205, 43603206},
    },
    onScriptRound = function  ()
        if (getmapid() == 68202 or getmapid() == 68203) then
            sleep(4000)
            if (common.checkMob('终极神殿二阶 英雄王')) then
                speak('遇到英雄王了')
                useskill(43501018,1) -- 使用猴子无敌
            end
        end
        
    end,
})
