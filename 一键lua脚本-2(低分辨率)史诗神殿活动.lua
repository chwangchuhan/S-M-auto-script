check = 1


local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")


common.shendianStart({
    mapName = '神殿英雄',
    isWaiting = true,                   -- 活动时间未到时是否等待
    mapMouseFile = '神殿史诗入门(低).txt',   -- 鼠标脚本地址
    overtime = 30,                       -- 副本超时时间/分
    task = {
        npcId = 1301,
        taskIds = {19012102, 20190801},
    },
    onTaskCallback = function ()
        -- 神殿史诗任务
        -- if (task_get_state(20190801) == 3) then
            common.doTask(1301, {20190801})
            wearitem('符文之靴')
            common.show('更换装备符文之靴')
            sleep(10)
            wearitem('秘法之袜')
            common.show('更换装备秘法之袜')
        -- end
    end
})

common.wearGongji()