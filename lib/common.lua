-- 通用脚本片段 --
-- 该模块仅用于脚本片段，无法直接执行 --
-- 模块代码引用在土拨鼠环境中不好使，可以直接复制整个模块然后copy到对应文件中执行需要的方法 --
-- 脚本片段可直接复制使用 --

-- 学习 --
-- #Array 表示数组长度
-- Array索引从1开始，所以要处理

local petSkillIds = dofile(path_scripts.."S-M-auto-script\\config\\pet-skill.lua")
local settings = dofile(path_scripts.."S-M-auto-script\\config\\init-settings.lua")

-- 一键换装配置
local gongjiConfig1 = loadfile(path_scripts.."攻击装.lua")
local gongjiConfig2 = loadfile(path_scripts.."S-M-auto-script\\config\\攻击装.lua")
local diaoluoConfig1 = loadfile(path_scripts.."掉落装.lua")
local diaoluoConfig2 = loadfile(path_scripts.."S-M-auto-script\\config\\掉落装.lua")
local jingyanConfig1 = loadfile(path_scripts.."经验装.lua")
local jingyanConfig2 = loadfile(path_scripts.."S-M-auto-script\\config\\经验装.lua")
local suduConfig1 = loadfile(path_scripts.."速度装.lua")
local suduConfig2 = loadfile(path_scripts.."S-M-auto-script\\config\\速度装.lua")
local tiaoyueConfig1 = loadfile(path_scripts.."跳跃装.lua")
local tiaoyueConfig2 = loadfile(path_scripts.."S-M-auto-script\\config\\跳跃装.lua")

SMCode = '35f03a61-31f7-4c1a-b18c-5f4e9f6a5aa1'

local defaultXMinSpeed = 550
local defaultXMaxSpeed = 1950
local defaultYMinSpeed = 1050
local defaultYMaxSpeed = 12500

local defaultLuckyDog = true

 -- 通用方法 --
-- 游戏配置初始化 --
local function gameConfigInit(initSettings)
    if (settings ~= nil) then
        for k,v in pairs(settings) do
            ini_change(k, v)
            sleep(10)
        end
    end

    -- 其他配置项赋值
    if (initSettings ~= nil) then
        for k,v in pairs(initSettings) do
            ini_change(k, v)
            sleep(10)
        end
    end
end

-- 重置游戏修改的配置，防止部分未停止的情况
local function resetConfig()
    ini_change("ban_hit_mob",0) -- 允许攻击
    ini_change("tobot_fastladder",1) --快速爬梯
    ini_change("tobot_changemapscript",1)--允许根据地图名切换脚本
end

 -- 游戏对话框输出 --
local function show(str)
    sleep(10)
    printgame(123, 1, 5, "☆☆ "..str.." ☆☆")
end

-- 查找数组index值，index从1开始 --
local function findIndex (array, value)
    -- 值检测
    if not array or not value then
        return -1
    end

    for i,v in ipairs(array) do
        if v == value then
            return i
        end
    end

    return -1
end

-- 数组是否包含值检测
local function include (array, value)
    if findIndex(array, value) ~= -1 then
        return true
    else
        return false
    end
end

-- 检测怪物是否存在
-- @mobIds: string | table 如传入string也识别
-- @returns: boolean
function checkMob(mobIds)
    if (type(mobIds) == 'string') then
        return mob_if(mobIds) == 1
    end

    if (type(mobIds) == 'table') then
        local res = {}

        for i,v in ipairs(mobIds) do
            res[i] = mob_if(v)
        end

        return include(res, 1)
    end

    return false
end

-- 检测怪物是否存在
-- @mobIds: string | table 如传入string也识别
-- @returns: boolean
function checkBuff(buffids)
    if (type(buffids) == 'string') then
        return isbuff(buffids) == 1
    end

    if (type(buffids) == 'table') then
        local res = {}

        for i,v in ipairs(buffids) do
            res[i] = isbuff(v)
        end

        return include(res, 1)
    end

    return false
end

 -- 地图说明 --
 -- 初始化地图的说明console
 -- mapName：地图名称，mapCount：地图次数
local function mapInitDesc(mapName, mapCount)
    maketeam()
    show("此Lua为全自动["..mapName.."]"..mapCount.."次")
    show("在任意地图载入启动 请放心使用 若按错 你有5秒时间停止载入")
    show("普通30元，高级50元，lua编写by:圣汐，莫里")
    show("-------有疑问联系qq:404833948、597673687------")
    show("-------脚本定制也请联系------")
    sleep(5000)
end

-- 检测当前地图是否在列表中 --
-- mapIdList: 地图id列表 --
local function checkInMap(mapIdList)
    if mapIdList == nil then
        return false
    end
	
    for k,v in pairs(mapIdList) do
        if getmapid() == v then
            return true
        end
    end

    return false
end

-- 判断地图刷的次数 --
local function isMapNumOver(mapName, mapCount)
    if mapName == nil or mapCount == nil then
        return true
    end

    --判断执行次数--
    if indun_get(mapName) >= mapCount then
		bot_stop()
        show("----------------------------------------------")
        show("["..mapName.."]已刷完"..mapCount.."次，此lua执行完毕")
        show("----------------------------------------------")
		sleep(500)
		return true
	end

    local leftCount = mapCount - indun_get(mapName)

    show("["..mapName.."]副本需执行"..leftCount.."次，当前副本已执行"..indun_get(mapName).."次")
	sleep(500)
	return false
end

-- 执行npm领任务 --
local function doTask (npcId, taskIds)
    bot_stop()
    show("任务领取/提交中 ...")
    sleep(1000)
    open_npc(npcId)
    sleep(1000)

    for i,v in ipairs(taskIds) do
        sleep(200)
        -- 任务不存在返回0
        if (task_get_state(v) == 0) then
            request_task(npcId, v)
            show("任务领取完成")
        elseif (task_get_state(v) == 3) then -- 任务已完成
            submit_task(npcId, v)
            show("任务提交成功")

            -- 再次领取任务
            request_task(npcId, v)
            show("任务领取完成")
        end
    end

    close_npc(npcId)
    sleep(2000)
	close_npc(npcId)
end

-- 放弃任务 --
local function dropTask(taskIds)
    show("放弃任务中 ...")

    for i,v in ipairs(taskIds) do
        sleep(200)
        -- 未完成任务
        if (task_get_state(v) == 2) then
            close_task(v)
        end
    end
end

-- 获取按照星期的时间戳
-- 时间戳每星期一重置
local function getTimeSpan ()
    local week = gettime(1) * 60 * 60 * 24 * 1000
    local hour = gettime(2) * 60 * 60 * 1000
    local minute = gettime(3) * 60 * 1000

    return week + hour + minute
end

-- 检测是否在血脉活动时间
-- 活动时间，每天晚上8:10-9点
local function checkInShendianTime ()
    local hour = gettime(2) * 60 * 60 * 1000
    local minute = gettime(3) * 60 * 1000

    -- 7点：68400000
    -- 8点：72000000
    if ((hour + minute) >= 72600000 and (hour + minute) <= 75540000) then
        return true
    end

    return false
end

-- 检测是否在血脉活动时间
-- 活动时间
    -- 周一：7:10-8.59
    -- 周三：7:10-8.59
    -- 周五：7:10-8.59
local function checkInXuemaiTime()
    local timeSpan = getTimeSpan()

    if (timeSpan == nil) then
        return false
    end

    if (timeSpan >= 155400000 and timeSpan <= 161940000) then --周一7-9点
        return true
    end

    if (timeSpan >= 328200000 and timeSpan <= 334740000) then --周三7-9点
        return true
    end

    if (timeSpan >= 501000000 and timeSpan <= 507540000) then --周五7-9点
        return true
    end

    return false
end

-- 执行鼠标脚本
-- filePath：脚本文件路径
-- num：执行次数
local function doMouseScript (filePath, num)
    if (filePath == nil) then
        show('鼠标脚本文件不存在，跳过执行')
        return
    end

    if (num == nil) then
        num = 1
    end

    for i=1,num do
        show("执行鼠标脚本"..filePath)
        script_mouse_load(filePath)
        sleep(1000)
    end
end

-- 使用宠物技能
local function doPetSkill()
    show('使用宠物技能中...')
    bot_stop()
    if (petSkillIds ~= nil) then
        for k,v in pairs(petSkillIds) do
            useskill(v, 0)
            sleep(1000)
        end
    end
    bot_stop()
end

-- 检测移动速度
local function checkXSpeed (minX, maxX)
    local speed = abs(getxspeed())

    -- 默认值速度
    if (maxX == nil) then
        maxX = defaultXMaxSpeed
    end

    if (minX == nil) then
        minX = defaultXMinSpeed
    end

    if (minX > maxX) then
        maxX = minX + 500
    end

    if (speed >= minX and speed <= maxX) then
        -- show('移动速度检测通过')
        return true
    else
        -- show('移动速度检测未通过，您的速度为：'..speed..'，当前副本需要速度：'..minX..'~'..maxX)
        return false
    end
end

-- 检测跳跃速度
local function checkYSpeed(minY, maxY)
    local speed = abs(getupspeed())

    -- 默认值速度
    if (maxY == nil) then
        maxY = defaultYMaxSpeed
    end

    if (minY == nil) then
        minY = defaultYMinSpeed
    end

    if (minY > maxY) then
        maxY = minY + 500
    end

    if (speed >= minY and speed <= maxY) then
        -- show('跳跃速度检测通过')
        return true
    else
        -- show('跳跃速度检测未通过，您的速度为：'..speed..'，当前副本需要跳跃速度：'..minY..'~'..maxY)
        return false
    end
end

-- 检测道具是否存在
-- 其中一个不存在就不行
-- @items 道具array
-- @returns 是否存在布尔值
local function checkItemExist(items)
    if (type(items) == 'table') then
        local res = {}

        for i,v in ipairs(items) do
            if (item_if(v) == 0) then
                return false
            end
        end

        return true
    end
    return false
end

-- 检测特定怪是否在身边
local function checkMobIsAside(mobId, xkew, ykew)
    if (not checkMob(mobId)) then
        return false
    end

    local mobId = mob_obj_get(mobId)
    local mobX = mob_obj_x(mobId)
    local mobY = mob_obj_y(mobId)
    local x = getx()
    local y = gety()

    local resX = x - mobX
    local resY = y - mobY

    if (not ykew) then
        ykew = 0
    end

    if (resX < 0) then
        resX = resX * -1
    end

    if (resY < 0) then
        resY = resY * -1
    end

    if (resX <= xkew and resY <= ykew) then
        return true
    end

    return false
end

-- 穿戴攻击装备
local function wearGongji()
    local wearConfig = nil

    if (gongjiConfig1 and gongjiConfig2) then
        wearConfig = gongjiConfig1()
    end

    if (not gongjiConfig1 and gongjiConfig2) then
        wearConfig = gongjiConfig2()
    end

    if (wearConfig ~= nil) then
        show('更换攻击装备')
        ini_change("ban_hit_mob",1) -- 禁止攻击，防止装备换不上
        sleep(500)

        for i,v in ipairs(wearConfig) do
            local nums = item_if(v)
            print(v)

            -- 判断装备数量，避免错误穿装备
            if (nums >= 1) then
                wearitem(v)
                show('更换装备'..v)
                sleep(10)
            end
        end
        ini_change("ban_hit_mob",0) -- 允许攻击
    end
end

-- 穿戴经验装备
local function wearJingyan()
    local wearConfig = nil

    if (jingyanConfig1 and jingyanConfig2) then
        wearConfig = jingyanConfig1()
    end

    if (not jingyanConfig1 and jingyanConfig2) then
        wearConfig = jingyanConfig2()
    end

    if (wearConfig ~= nil) then
        show('更换经验装备')
        ini_change("ban_hit_mob",1) -- 禁止攻击，防止装备换不上
        sleep(500)

        for i,v in ipairs(wearConfig) do
            local nums = item_if(v)
            print(v)

            -- 判断装备数量，避免错误穿装备
            if (nums >= 1) then
                wearitem(v)
                show('更换装备'..v)
                sleep(10)
            end
        end
        ini_change("ban_hit_mob",0) -- 允许攻击
    end
end

-- 穿戴速度装备
local function wearSudu()
    local wearConfig = nil

    if (suduConfig1 and suduConfig2) then
        wearConfig = suduConfig1()
    end

    if (not suduConfig1 and suduConfig2) then
        wearConfig = suduConfig2()
    end

    if (wearConfig ~= nil) then
        show('更换速度装备')
        ini_change("ban_hit_mob",1) -- 禁止攻击，防止装备换不上
        sleep(500)

        for i,v in ipairs(wearConfig) do
            local nums = item_if(v)
            print(v)

            -- 判断装备数量，避免错误穿装备
            if (nums >= 1) then
                wearitem(v)
                show('更换装备'..v)
                sleep(10)
            end
        end
        ini_change("ban_hit_mob",0) -- 允许攻击
    end
end

-- 穿戴跳跃装备
local function wearTiaoyue()
    local wearConfig = nil

    if (tiaoyueConfig1 and tiaoyueConfig2) then
        wearConfig = tiaoyueConfig1()
    end

    if (not tiaoyueConfig1 and tiaoyueConfig2) then
        wearConfig = tiaoyueConfig2()
    end

    if (wearConfig ~= nil) then
        show('更换跳跃装备')
        ini_change("ban_hit_mob",1) -- 禁止攻击，防止装备换不上
        sleep(500)

        for i,v in ipairs(wearConfig) do
            local nums = item_if(v)
            print(v)

            -- 判断装备数量，避免错误穿装备
            if (nums >= 1) then
                wearitem(v)
                show('更换装备'..v)
                sleep(10)
            end
        end
        ini_change("ban_hit_mob",0) -- 允许攻击
    end
end

-- 穿戴掉落
local function wearDiaoluo()
    local wearConfig = nil

    if (diaoluoConfig1 and diaoluoConfig2) then
        wearConfig = diaoluoConfig1()
    end

    if (not diaoluoConfig1 and diaoluoConfig2) then
        wearConfig = diaoluoConfig2()
    end

    if (wearConfig ~= nil) then
        show('更换掉落装备')
        ini_change("ban_hit_mob",1) -- 禁止攻击，防止装备换不上
        sleep(500)

        for i,v in ipairs(wearConfig) do
            local nums = item_if(v)
            print(v)

            -- 判断装备数量，避免错误穿装备
            if (nums >= 1) then
                wearitem(v)
                show('更换装备'..v)
                sleep(10)
            end
        end
        ini_change("ban_hit_mob",0) -- 允许攻击
    end
end

-- 获取数字次方
local function getNumExp(n, v)
    local res = 1
    for i=1,v-1 do
        res = res * n
    end
    return res
end

-- 获取随机数（根据时间戳伪随机）
local function getRandom(v1, v2)
    local time = getnowtime()
    local timeStr = getnowtime()..''
    local length = #timeStr - 2
    local skew = getNumExp(10, length)

    while(true) do
        if ((time - skew) > skew) then
            time = time - skew

        else
            if (time - skew) > 0 then
                time = time - skew
            end
            skew = skew / 10
        end

        if (time > v1 and time < v2) then
            return time
        end

        if (time < 0 or skew <= 1) then
            return 0
        end
    end
end

-- 脚本开始 --
local function simpleStart (config)
    -- 存在task的地图id
    local taskMaps = {}
    local preMapId = -1 -- 上一个地图的id，用于标记状态
    local runCount = indun_get(config.mapName) -- 脚本方法当前循环次数，mapId全跑一次为一个循环
    local lastMapId = config.mapIds[#config.mapIds]
    local firstMapId = config.mapIds[1]
    local endMapIds = {lastMapId}
    -- 地图激活时间
    local startTimeSpan = getTimeSpan()

	bot_stop() --站立启动，检测站街速度

    gameConfigInit(config.initSettings)
    mapInitDesc(config.mapName, config.mapCount)
    print(config.mapName..'启动时间为'..startTimeSpan)

    if (defaultLuckyDog and config.isLuckyDog) then
        if (getRandom(1, 1000) > 0) then
            item_horn("大喇叭","圣汐&莫里一键lua脚本 祭坛宝石全自动换装挖矿 新增秩序腐化 魔王 巨人图鉴 遗忘花园 皇帝戒指lua 莫里qq597673687 圣汐qq404833948")
			item_horn("小喇叭","圣汐&莫里一键lua脚本 祭坛宝石全自动换装挖矿 新增秩序腐化 魔王 巨人图鉴 遗忘花园 皇帝戒指lua 莫里qq597673687 圣汐qq404833948")
        end
    end

    -- 速度检测
    if (not checkXSpeed(config.minXSpeed, config.maxXSpeed) or not checkYSpeed(config.minYSpeed, config.maxYSpeed)) then
        show('脚本结束')
        sleep(3000)
        return
    end

    -- 任务地图map
    if (config.tasks and #config.tasks) then
        for i,v in ipairs(config.tasks) do
            taskMaps[i] = v.mapId
        end
    end

    -- 任务结束地图赋值
    if (config.endMapIds) then
        endMapIds = config.endMapIds
    end

    -- 如在地图中继续执行脚本
    if isMapNumOver(config.mapName, config.mapCount) then
        if not checkInMap(config.mapIds) then
            return
        end
    else
        if not checkInMap(config.mapIds) then
            -- 飞机启动执行 --
            plane(config.planeId)
            wait_loadmap()
			sleep(500)
        end
    end

    while(true)
    do
        local currentMapId = getmapid()

        -- 超时跳过脚本
        if (config.overtime) then
            if (getTimeSpan() - startTimeSpan < 0) then
                -- 由于时间戳为按周，因此<0表示周日-周日的节点
                -- 故此兼容此场景
                startTimeSpan = getTimeSpan()
            end
            -- 超时
            -- overtime时间为分
            if (getTimeSpan() - startTimeSpan > config.overtime * 60000) then
                print('检测时间为'..startTimeSpan)
                print('您在副本中的时间为'..(getTimeSpan() - startTimeSpan))
                -- 终止副本
                bot_stop()
                plane(70)
                wait_loadmap()
                show('脚本超时，终止脚本')
                resetConfig()

                -- 如换了掉落装需换回攻击装
                if (config.isAutoWearDiaoluo) then
                    wearGongji()
                end
				sleep(100)
                return
            end
        end

        if currentMapId ~= preMapId then
            local currentMapIndex = findIndex(config.mapIds, currentMapId)
            local currentScript = config.scripts[currentMapIndex]

            print(currentMapId.."地图是"..getmapname())

            -- 判断当前脚本是否存在
            if currentScript then
                if (#currentScript <= 30) then
                    -- 文件脚本
                    script_txt_load(currentScript, 0)
                else
                    -- hex 16进制脚本
                    script_txt_loaddata(currentScript, 0)
                end

            end

            -- 任务处理
            if include(taskMaps, currentMapId) then -- 存在任务
                local currentTaskIndex = findIndex(taskMaps, currentMapId)
                local taskData = config.tasks[currentTaskIndex]

                doTask(taskData.npcId, taskData.taskIds)

                -- 表示存在任务结束后飞机
                if (taskData.planeId) then
                    plane(taskData.planeId)
                    wait_loadmap()
					sleep(500)
                end
            else
            end

            -- 最终图换掉落装
            if (config.isAutoWearDiaoluo and include(endMapIds, currentMapId)) then
                wearDiaoluo()
            end

            -- 一轮循环结束进入下一轮
            if include(endMapIds, preMapId) then
                startTimeSpan = getTimeSpan()
                -- 超出任务循环次数
                if isMapNumOver(config.mapName, config.mapCount) then
                    -- 停止挂机
					sleep(500)
                    bot_stop()
                    resetConfig()

                    sleep(500)

                    -- 结束脚本回调
                    if (config.onScriptEnd) then
                        config.onScriptEnd()
                    end

                    -- 如换了掉落装需换回攻击装
                    if (config.isAutoWearDiaoluo) then
                        wearGongji()
                    end
					
					sleep(100)
                    return
                else
                    -- 如换了掉落装需换回攻击装
                    if (config.isAutoWearDiaoluo) then
                        wearGongji()
                    end

                    -- 副本初始化
                    indun_init()
                end
            else
            end

            -- 死亡或传送出副本
            if not checkInMap(config.mapIds) then
                bot_stop()
                resetConfig()

                -- 结束脚本回调
                if (config.onScriptEnd) then
                    config.onScriptEnd()
                end

                return
            end

            -- 前一次访问地图更新
            preMapId = currentMapId

            bot_start()

            -- 地图变更时执行回调
            if (config.onScriptRound) then
                -- 如果回调return true则表示跳出当前循环
                local roundRes = config.onScriptRound(config)
                if (roundRes) then
                    bot_stop()
					sleep(100)
					return
                end
            end
        end


        -- 每次while回调
        if (config.onScriptWhileCallback) then
            config.onScriptWhileCallback(config)
        end

        sleep(200)
    end

end

-- 神殿脚本开始 --
local function shendianStart (config)
    gameConfigInit()
    mapInitDesc(config.mapName, 1)
    show('----------------------------')
    show('由于神殿脚本需要模拟鼠标操作，分辨率在800*600为低分辨率，1024*768为中分辨率，1280*800为高分辨率')

    -- 地图激活时间
    local startTimeSpan = getTimeSpan()

    while (true)
    do
        sleep(500)

        -- 超时跳过脚本
        if (config.overtime) then
            if (getTimeSpan() - startTimeSpan < 0) then
                -- 由于时间戳为按周，因此<0表示周日-周日的节点
                -- 故此兼容此场景
                startTimeSpan = getTimeSpan()
            end
            -- 超时
            -- overtime时间为分
            if (getTimeSpan() - startTimeSpan > config.overtime * 60000) then
                -- 终止副本
                bot_stop()
                plane(70)
                show('脚本超时，终止脚本')
                resetConfig()
                return
            end
        end

        -- 处于活动时间
        if (checkInShendianTime()) then
            -- 检测是否在仓库
            if (checkInMap({28600.0})) then
                local lastMapId = getmapid()

                if (config.task) then
                    doTask(config.task.npcId, config.task.taskIds)
                end

                script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313832322E36362C3635362E34382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3639302E3039342C3637312E322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
                bot_start()
                sleep(5000)
                bot_stop()
                sleep(500)
                gotocoordinate(1, 3238, 1312) --走至传送门
                sleep(3000)
                bot_stop()


                -- 加载鼠标脚本
                -- 鼠标操作基础路径在scripts/mouse
                local mouseFilePath =  "..\\S-M-auto-script\\mouse\\"..config.mapMouseFile
                doMouseScript(mouseFilePath, 3)

                -- 进入地图后开始执行脚本挂机
                while (true)
                do
                    sleep(500)

                    -- 超时跳过脚本
                    if (config.overtime) then
                        if (getTimeSpan() - startTimeSpan < 0) then
                            -- 由于时间戳为按周，因此<0表示周日-周日的节点
                            -- 故此兼容此场景
                            startTimeSpan = getTimeSpan()
                        end
                        -- 超时
                        -- overtime时间为分
                        if (getTimeSpan() - startTimeSpan > config.overtime * 60000) then
                            -- 终止副本
                            bot_stop()
                            plane(70)
                            show('脚本超时，终止脚本')
                            resetConfig()

                            if (config.onScriptEnd) then
                                config.onScriptEnd()
                            end
                            return
                        end
                    end

                    -- 地图变更 且当前地图不为仓库，表示已进入神殿
                    if (getmapid() ~= lastMapId) and (getmapid() ~= 28600) then
                        -- 切地图一次回调
                        if (config.onScriptRound) then
                            config.onScriptRound(config)
                        end

                        -- 启动挂机
                        script_txt_loaddata('BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3937312E3335392C3634302CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 0)
                        bot_start()

                        lastMapId = getmapid()
                    end

                    -- 死的情况暂未考虑
                    if (getmapid() == 28600) and (lastMapId ~= 28600) then
                        -- 结束副本
                        if (config.onScriptEnd) then
                            config.onScriptEnd()
                        end

                        bot_stop()
                        resetConfig()

                        if (config.task) then
                            doTask(config.task.npcId, config.task.taskIds)
                        end
                        return
                    end
                end

                -- 终止整个循环
                return

            else
                plane(186)
                wait_loadmap()
				sleep(500)
            end
        else
            if (not config.isWaiting) then -- 不等待活动
                show('当前不处于活动时间，['..config.mapName..']自动跳过')
                return
            else
                -- 不处于活动时间则等待1分钟后查看
                local time = '星期'..gettime(1)..' '..gettime(2)..':'..gettime(3)
                show('正在等待活动时间，当前时间：'..time)
                startTimeSpan = getTimeSpan() -- 等待时间不计算超时时间
                sleep(10000)
            end
        end
    end
end

-- 血脉活动开始 --
local function xuemaiStart (config)
    -- 地图激活时间
    local startTimeSpan = getTimeSpan()

    while (true)
    do
        sleep(500)

        -- 超时跳过脚本
        if (config.overtime) then
            if (getTimeSpan() - startTimeSpan < 0) then
                -- 由于时间戳为按周，因此<0表示周日-周日的节点
                -- 故此兼容此场景
                startTimeSpan = getTimeSpan()
            end
            -- 超时
            -- overtime时间为分
            if (getTimeSpan() - startTimeSpan > config.overtime * 60000) then
                -- 终止副本
                bot_stop()
                plane(70)
                show('脚本超时，终止脚本')
                resetConfig()
                return
            end
        end

        -- 处于活动时间
        if (checkInXuemaiTime()) then
            -- 检测是否在圣域
            if (checkInMap({18400})) then
                open_npc(1500115)
                npc_plane(1500115,1500115,0,1500115,0)
                wait_loadmap()
                close_npc(1500115)

                gameConfigInit(config.initSettings)
                mapInitDesc(config.mapName, config.mapCount)

                local preMapId = -1
                local taskMaps = {}
                local lastMapId = config.mapIds[#config.mapIds]
                local endMapIds = {lastMapId}
                local currentNums = 1

                while(true) do
                    local currentMapId = getmapid()

                    -- 脚本执行
                    if preMapId ~= currentMapId then
                        local currentMapIndex = findIndex(config.mapIds, currentMapId)
                        local currentScript = config.scripts[currentMapIndex]

                        -- 判断当前脚本是否存在
                        if currentScript then
                            if (#currentScript <= 30) then
                                -- 文件脚本
                                script_txt_load(currentScript, 0)
                            else
                                -- hex 16进制脚本
                                script_txt_loaddata(currentScript, 0)
                            end
                        end

                        -- 一轮循环结束进入第二轮
                        if include(endMapIds, preMapId) then
                            -- 副本一轮结束清空倒计时
                            startTimeSpan = getTimeSpan()
                            -- 血脉记录不了次数，因此通过这个记录
                            currentNums = currentNums + 1

                            -- 超出任务循环次数
                            if (currentNums > 2) then
                                -- 停止挂机
                                bot_stop()
                                resetConfig()
                                return
                            end
                        end

                        preMapId = currentMapId
                        bot_start()
                    end

                    sleep(200)
                end

                return
            else
                plane(1210)
                wait_loadmap()
            end
        else
            if (not config.isWaiting) then -- 不等待活动
                show('当前不处于活动时间，['..config.mapName..']自动跳过')
                return
            else
                -- 不处于活动时间则等待1分钟后查看
                local time = '星期'..gettime(1)..' '..gettime(2)..':'..gettime(3)
                show('正在等待活动时间，当前时间：'..time)
                startTimeSpan = getTimeSpan() -- 等待时间不计算超时时间
                sleep(10000)
            end
        end
    end
end

return {
    show = show,
    gameConfigInit = gameConfigInit,
    findIndex = findIndex,
    include = include,
    checkInMap = checkInMap,
    isMapNumOver = isMapNumOver,
    simpleStart = simpleStart,
    getTimeSpan = getTimeSpan,
    checkInShendianTime = checkInShendianTime,
    checkInXuemaiTime = checkInXuemaiTime,
    shendianStart = shendianStart,
    doMouseScript = doMouseScript,
    doPetSkill = doPetSkill,
    doTask = doTask,            -- 领取任务
    dropTask = dropTask,        -- 放弃任务
    checkMob = checkMob,
    checkBuff = checkBuff,      -- 检测buf
    xuemaiStart = xuemaiStart,
    wearGongji = wearGongji,    -- 穿攻击装备
    wearDiaoluo = wearDiaoluo,  -- 穿掉落装备
    wearJingyan = wearJingyan,  -- 穿经验装备
    wearSudu = wearSudu,  		-- 穿速度装备
	wearTiaoyue = wearTiaoyue,  -- 穿速度装备
    checkItemExist = checkItemExist,             -- 检测道具是否存在
    checkMobIsAside = checkMobIsAside,
}
