 check=1
 
 -- 通用方法 --
 -- 游戏对话框输出 --
local function show(str)
    sleep(200)
    printgame(123, 1, 5, "☆☆ "..str.." ☆☆")
end

 -- 地图说明 --
 -- 初始化地图的说明console
 -- mapName：地图名称，mapCount：地图次数
local function mapInitDesc(mapName, mapCount)
    maketeam()
    show("此Lua为全自动["..mapName.."]"..mapCount.."次") 
    show("在任意地图载入启动 请放心使用 若按错 你有10秒时间停止载入")
    show("土拨鼠提示:请先设置好技能 加血 宠物捡东西 lua编写by:圣汐")
    show("----------有疑问联系qq:404833948----------")
end

-- 执行npm领任务 --
local function doTask (npcId, taskIds)
    show("任务领取/提交中 ...")
    sleep(1000)
    open_npc(npcId)

    for i,v in ipairs(taskIds) do
        -- request_task 任务接成功返回0，失败返回-1
        if request_task(npcId, v) ~= -1 then
             show("任务领取完成")
        end

        submit_task(npcId, v)
    end

    close_npc(npcId)
end

-- 脚本开始 --
local function start (config)
    mapInitDesc(config.mapName, config.mapCount)
    sleep(5000)

    -- 飞机启动执行 --
    plane(config.planeId)
    sleep(5000)
    

    doTask(config.taskData.npcId, config.taskData.taskIds)

    show("----------------------------------------------")
    show("["..config.mapName.."]已刷完"..config.mapCount.."次，此lua执行完毕")
    show("----------------------------------------------")

    sleep(200)
end
    

local config = {
    mapName = "通天塔领免费卷任务",
    mapCount = 1,
    planeId = 801,
    taskData = {
        npcId = 60079,
        taskIds = {60000364},
    },
}

start(config)