-- ͨ�ýű�Ƭ�� --
-- ��ģ������ڽű�Ƭ�Σ��޷�ֱ��ִ�� --
-- ģ����������������󻷾��в���ʹ������ֱ�Ӹ�������ģ��Ȼ��copy����Ӧ�ļ���ִ����Ҫ�ķ��� --
-- �ű�Ƭ�ο�ֱ�Ӹ���ʹ�� --

-- ѧϰ --
-- #Array ��ʾ���鳤��
-- Array������1��ʼ������Ҫ����

local petSkillIds = dofile(path_scripts.."S-M-auto-script\\config\\pet-skill.lua")
local settings = dofile(path_scripts.."S-M-auto-script\\config\\init-settings.lua")

SMCode = '35f03a61-31f7-4c1a-b18c-5f4e9f6a5aa1'

local defaultXMinSpeed = 550
local defaultXMaxSpeed = 1500
local defaultYMinSpeed = 1050
local defaultYMaxSpeed = 1500

 -- ͨ�÷��� --
-- ��Ϸ���ó�ʼ�� --
local function gameConfigInit(initSettings)
    if (settings ~= nil) then
        for k,v in pairs(settings) do
            ini_change(k, v)
            sleep(10)
        end
    end

    -- ���������ֵ
    if (initSettings ~= nil) then
        for k,v in pairs(initSettings) do
            ini_change(k, v)
            sleep(10)
        end
    end
end

-- ������Ϸ�޸ĵ����ã���ֹ����δֹͣ�����
local function resetConfig()
    ini_change("ban_hit_mob",0) -- ������
    ini_change("tobot_fastladder",1) --��������
    ini_change("tobot_changemapscript",1)--������ݵ�ͼ���л��ű�
end

 -- ��Ϸ�Ի������ --
local function show(str)
    sleep(200)
    printgame(123, 1, 5, "��� "..str.." ���")
end

-- ��������indexֵ��index��1��ʼ --
local function findIndex (array, value)
    -- ֵ���
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

-- �����Ƿ����ֵ���
local function include (array, value)
    if findIndex(array, value) ~= -1 then
        return true
    else
        return false
    end
end

-- �������Ƿ����
-- @mobIds: string | table �紫��stringҲʶ��
-- @returns: boolean
function checkMob(mobIds)
    if (mobIds == 'string') then
        return mob_if(mobIds) == 1
    end

    if (type(mobIds) == 'table') then
        local res = {}

        for i,v in ipairs(mobIds) do
            res[i] = mob_if(v)
        end

        return common.include(res, 1)
    end

    return false
end

 -- ��ͼ˵�� --
 -- ��ʼ����ͼ��˵��console
 -- mapName����ͼ���ƣ�mapCount����ͼ����
local function mapInitDesc(mapName, mapCount)
    maketeam()
    show("��LuaΪȫ�Զ�["..mapName.."]"..mapCount.."��") 
    show("�������ͼ�������� �����ʹ�� ������ ����5��ʱ��ֹͣ����")
    show("��ͨ30Ԫ���߼�50Ԫ��lua��дby:ʥϫ��Ī��")
    show("-------��������ϵqq:404833948��597673687------")
    show("-------�ű�����Ҳ����ϵ------")
    sleep(5000)
end

-- ��⵱ǰ��ͼ�Ƿ����б��� --
-- mapIdList: ��ͼid�б� --
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

-- �жϵ�ͼˢ�Ĵ��� --
local function isMapNumOver(mapName, mapCount)
    if mapName == nil or mapCount == nil then
        return true
    end

    --�ж�ִ�д���--
    if indun_get(mapName) >= mapCount then
        show("----------------------------------------------")
        show("["..mapName.."]��ˢ��"..mapCount.."�Σ���luaִ�����")
        show("----------------------------------------------")
		return true
	end

    local leftCount = mapCount - indun_get(mapName)

    show("["..mapName.."]����ͼ��ִ��"..leftCount.."�Σ���ǰ��ͼ��ִ��"..indun_get(mapName).."��")
	return false
end

-- ִ��npm������ --
local function doTask (npcId, taskIds)
    bot_stop()
    show("������ȡ/�ύ�� ...")
    sleep(5000)
    open_npc(npcId)

    for i,v in ipairs(taskIds) do
        -- request_task ����ӳɹ�����0��ʧ�ܷ���-1
        if request_task(npcId, v) ~= -1 then
             show("������ȡ���")
        else
            sleep(500)
            submit_task(npcId, v)
            show("�����ύ�ɹ�")

            -- �ٴ���ȡ����
            request_task(npcId, v)
            show("������ȡ���")
        end
    end

    close_npc(npcId)
end

-- ��ȡ�������ڵ�ʱ���
-- ʱ���ÿ����һ����
local function getTimeSpan ()
    local week = gettime(1) * 60 * 60 * 24 * 1000
    local hour = gettime(2) * 60 * 60 * 1000
    local minute = gettime(3) * 60 * 1000

    return week + hour + minute
end

-- ����Ƿ���Ѫ���ʱ��
-- �ʱ�䣬ÿ������8-9��
local function checkInShendianTime ()
    local hour = gettime(2) * 60 * 60 * 1000
    local minute = gettime(3) * 60 * 1000

    -- 7�㣺68400000
    -- 8�㣺72000000
    -- -- 1�֣�60000
    -- -- 59�֣�3540000
    if ((hour + minute) >= 72060000 and (hour + minute) <= 75540000) then 
        return true
    end

    return false
end

-- ����Ƿ���Ѫ���ʱ��
-- �ʱ��
    -- ��һ��154860000 ~ 161940000
    -- ������327660000 ~ 334740000
    -- ���壺500460000 ~ 507540000
local function checkInXuemaiTime()
    local timeSpan = getTimeSpan()

    if (timeSpan == nil) then
        return false
    end

    if (timeSpan >= 154860000 and timeSpan <= 161940000) then --��һ7-9��
        return true
    end

    if (timeSpan >= 327660000 and timeSpan <= 334740000) then --����7-9��
        return true
    end

    if (timeSpan >= 500460000 and timeSpan <= 507540000) then --����7-9��
        return true
    end

    return false
end

-- ִ�����ű�
-- filePath���ű��ļ�·��
-- num��ִ�д���
local function doMouseScript (filePath, num)
    if (filePath == nil) then
        show('���ű��ļ������ڣ�����ִ��')
        return
    end
    
    if (num == nil) then
        num = 1
    end

    for i=1,num do
        show("ִ�����ű�"..filePath)
        script_mouse_load(filePath)
        sleep(1000)
    end
end

-- ʹ�ó��＼��
local function doPetSkill()
    show('ʹ�ó��＼����...')
    bot_stop()
    if (petSkillIds ~= nil) then
        for k,v in pairs(petSkillIds) do
            useskill(v, 0)
            sleep(1000)
        end
    end
    bot_stop()
end

-- ����ƶ��ٶ�
local function checkXSpeed (minX, maxX)
    local speed = abs(getxspeed())
  
    -- Ĭ��ֵ�ٶ�
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
        show('�ƶ��ٶȼ��ͨ��')
        return true
    else
        show('�ƶ��ٶȼ��δͨ���������ٶ�Ϊ��'..speed..'����ǰ������Ҫ�ٶȣ�'..minX..'~'..maxX)
        return false
    end
  end
  
  -- �����Ծ�ٶ�
  local function checkYSpeed(minY, maxY)
    local speed = abs(getupspeed())
  
    -- Ĭ��ֵ�ٶ�
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
        show('��Ծ�ٶȼ��ͨ��')
        return true
    else
        show('��Ծ�ٶȼ��δͨ���������ٶ�Ϊ��'..speed..'����ǰ������Ҫ��Ծ�ٶȣ�'..minY..'~'..maxY)
        return false
    end
  end

-- �ű���ʼ --
local function simpleStart (config)
    -- ����task�ĵ�ͼid
    local taskMaps = {}
    local preMapId = -1 -- ��һ����ͼ��id�����ڱ��״̬
    local runCount = indun_get(config.mapName) -- �ű�������ǰѭ��������mapIdȫ��һ��Ϊһ��ѭ��
    local lastMapId = config.mapIds[#config.mapIds]
    local firstMapId = config.mapIds[1]
    local endMapIds = {lastMapId}
    -- ��ͼ����ʱ��
    local startTimeSpan = getTimeSpan()

    gameConfigInit(config.initSettings)
    mapInitDesc(config.mapName, config.mapCount)

    -- �ٶȼ��
    if (not checkXSpeed(config.minXSpeed, config.maxXSpeed) or not checkYSpeed(config.minYSpeed, config.maxYSpeed)) then
        show('�ű�����')
        sleep(3000)
        return 
    end

    -- �����ͼmap
    if (config.tasks and #config.tasks) then
        for i,v in ipairs(config.tasks) do
            taskMaps[i] = v.mapId
        end
    end

    -- ���������ͼ��ֵ
    if (config.endMapIds) then
        endMapIds = config.endMapIds
    end

    -- ���ڵ�ͼ�м���ִ�нű�
    if isMapNumOver(config.mapName, config.mapCount) then
        if not checkInMap(config.mapIds) then
            return
        end
    else
        if not checkInMap(config.mapIds) then
            -- �ɻ�����ִ�� --
            plane(config.planeId)
            wait_loadmap()
        end
    end

    while(true)
    do
        local currentMapId = getmapid()

        -- ��ʱ�����ű�
        if (config.overtime) then
            if (getTimeSpan() - startTimeSpan < 0) then
                -- ����ʱ���Ϊ���ܣ����<0��ʾ����-���յĽڵ�
                -- �ʴ˼��ݴ˳���
                startTimeSpan = getTimeSpan()
            end
            -- ��ʱ
            -- overtimeʱ��Ϊ��
            if (getTimeSpan() - startTimeSpan > config.overtime * 60000) then
                -- ��ֹ����
                bot_stop()
                plane(70)
                wait_loadmap()
                show('�ű���ʱ����ֹ�ű�')
                resetConfig()
                return
            end
        end
        
        if currentMapId ~= preMapId then
            local currentMapIndex = findIndex(config.mapIds, currentMapId)
            local currentScript = config.scripts[currentMapIndex]

            print(currentMapId.."��ͼ��"..getmapname())

            -- �жϵ�ǰ�ű��Ƿ����
            if currentScript then
                if (#currentScript <= 30) then
                    -- �ļ��ű�
                    script_txt_load(currentScript, 0)
                else
                    -- hex 16���ƽű�
                    script_txt_loaddata(currentScript, 0)
                end
                
            end

            -- ������
            if include(taskMaps, currentMapId) then -- ��������
                local currentTaskIndex = findIndex(taskMaps, currentMapId)
                local taskData = config.tasks[currentTaskIndex]
                
                doTask(taskData.npcId, taskData.taskIds)

                -- ��ʾ�������������ɻ�
                if (taskData.planeId) then
                    plane(taskData.planeId)
                    wait_loadmap()
                end
            else
            end

            -- һ��ѭ����������ڶ���
            if include(endMapIds, preMapId) then
                -- ����һ�ֽ�����յ���ʱ
                startTimeSpan = getTimeSpan()

                -- ��������ѭ������
                if isMapNumOver(config.mapName, config.mapCount) then
                    -- ֹͣ�һ�
                    bot_stop()  
                    resetConfig()

                    -- �����ű��ص�
                    if (config.onScriptEnd) then
                        config.onScriptEnd()
                    end

                    return
                else
                    -- ������ʼ��
                    indun_init()
                end
            else
            end

            -- �������ͳ�����
            if not checkInMap(config.mapIds) then
                bot_stop()  
                resetConfig()
                
                -- �����ű��ص�
                if (config.onScriptEnd) then
                    config.onScriptEnd()
                end

                return
            end
            
            -- ǰһ�η��ʵ�ͼ����
            preMapId = currentMapId

            bot_start()

            -- ��ͼ���ʱִ�лص�
            if (config.onScriptRound) then
                -- ����ص�return true���ʾ������ǰѭ��
                local roundRes = config.onScriptRound(config)
                if (roundRes) then
                    bot_stop()
                    return
                end
            end
        end

        sleep(200)
    end

end

-- ���ű���ʼ --
local function shendianStart (config)
    gameConfigInit()
    mapInitDesc(config.mapName, 1)
    show('----------------------------') 
    show('�������ű���Ҫģ��������������Ʒֱ�����800*600')

    -- ��ͼ����ʱ��
    local startTimeSpan = getTimeSpan()

    while (true) 
    do
        sleep(500)

        -- ��ʱ�����ű�
        if (config.overtime) then
            if (getTimeSpan() - startTimeSpan < 0) then
                -- ����ʱ���Ϊ���ܣ����<0��ʾ����-���յĽڵ�
                -- �ʴ˼��ݴ˳���
                startTimeSpan = getTimeSpan()
            end
            -- ��ʱ
            -- overtimeʱ��Ϊ��
            if (getTimeSpan() - startTimeSpan > config.overtime * 60000) then
                -- ��ֹ����
                bot_stop()
                plane(70)
                show('�ű���ʱ����ֹ�ű�')
                resetConfig()
                return
            end
        end

        -- ���ڻʱ��
        if (checkInShendianTime()) then
            -- ����Ƿ��ڲֿ�
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
                gotocoordinate(1, 3238, 1312) --����������
                sleep(3000)
                bot_stop()


                -- �������ű�
                -- ����������·����scripts/mouse
                local mouseFilePath =  "..\\S-M-auto-script\\mouse\\"..config.mapMouseFile
                doMouseScript(mouseFilePath, 3)
                
                -- �����ͼ��ʼִ�нű��һ�
                while (true)
                do
                    sleep(500)

                    -- ��ʱ�����ű�
                    if (config.overtime) then
                        if (getTimeSpan() - startTimeSpan < 0) then
                            -- ����ʱ���Ϊ���ܣ����<0��ʾ����-���յĽڵ�
                            -- �ʴ˼��ݴ˳���
                            startTimeSpan = getTimeSpan()
                        end
                        -- ��ʱ
                        -- overtimeʱ��Ϊ��
                        if (getTimeSpan() - startTimeSpan > config.overtime * 60000) then
                            -- ��ֹ����
                            bot_stop()
                            plane(70)
                            show('�ű���ʱ����ֹ�ű�')
                            resetConfig()
                            return
                        end
                    end

                    -- ��ͼ��� �ҵ�ǰ��ͼ��Ϊ�ֿ⣬��ʾ�ѽ������
                    if (getmapid() ~= lastMapId) and (getmapid() ~= 28600) then
                        -- �е�ͼһ�λص�
                        if (config.onScriptRound) then
                            config.onScriptRound(config)
                        end

                        -- �����һ�
                        script_txt_loaddata('BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3937312E3335392C3634302CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 0)
                        bot_start()
                        
                        lastMapId = getmapid()
                    end

                    -- ���������δ����
                    if (getmapid() == 28600) and (lastMapId ~= 28600) then
                        -- ��������
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
                
                -- ��ֹ����ѭ��
                return

            else
                plane(186)
                wait_loadmap()
            end
        else
            if (not config.isWaiting) then -- ���ȴ��
                show('��ǰ�����ڻʱ�䣬['..config.mapName..']�Զ�����')
                return
            else
                -- �����ڻʱ����ȴ�1���Ӻ�鿴
                local time = '����'..gettime(1)..' '..gettime(2)..':'..gettime(3)
                show('���ڵȴ��ʱ�䣬��ǰʱ�䣺'..time)
                startTimeSpan = getTimeSpan() -- �ȴ�ʱ�䲻���㳬ʱʱ��
                sleep(10000)
            end
        end
    end
end


return {
    show = show,
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
    doTask = doTask,
    checkMob = checkMob,
}