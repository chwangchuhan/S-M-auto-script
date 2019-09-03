check = 1


local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.shendianStart({
    mapName = '神殿普通',
    isWaiting = true,                   -- 活动时间未到时是否等待
    mapMouseFile = '神殿普通入门.txt',   -- 鼠标脚本地址
    overtime = 5,                       -- 副本超时时间/分
})

common.shendianStart({
    mapName = '神殿高级',
    isWaiting = true,                   -- 活动时间未到时是否等待
    mapMouseFile = '神殿高级入门.txt',   -- 鼠标脚本地址
    overtime = 10,                       -- 副本超时时间/分
})

common.shendianStart({
    mapName = '神殿英雄',
    isWaiting = true,                   -- 活动时间未到时是否等待
    mapMouseFile = '神殿英雄入门.txt',   -- 鼠标脚本地址
    overtime = 20,                      -- 副本超时时间/分
})
