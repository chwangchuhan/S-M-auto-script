 check=1
 
 -- ͨ�÷��� --
 -- ��Ϸ�Ի������ --
local function show(str)
    sleep(200)
    printgame(123, 1, 5, "��� "..str.." ���")
end

 -- ��ͼ˵�� --
 -- ��ʼ����ͼ��˵��console
 -- mapName����ͼ���ƣ�mapCount����ͼ����
local function mapInitDesc(mapName, mapCount)
    maketeam()
    show("��LuaΪȫ�Զ�["..mapName.."]"..mapCount.."��") 
    show("�������ͼ�������� �����ʹ�� ������ ����10��ʱ��ֹͣ����")
    show("��������ʾ:�������úü��� ��Ѫ ������� lua��дby:ʥϫ")
    show("----------��������ϵqq:404833948----------")
end

-- ִ��npm������ --
local function doTask (npcId, taskIds)
    show("������ȡ/�ύ�� ...")
    sleep(1000)
    open_npc(npcId)

    for i,v in ipairs(taskIds) do
        -- request_task ����ӳɹ�����0��ʧ�ܷ���-1
        if request_task(npcId, v) ~= -1 then
             show("������ȡ���")
        end

        submit_task(npcId, v)
    end

    close_npc(npcId)
end

-- �ű���ʼ --
local function start (config)
    mapInitDesc(config.mapName, config.mapCount)
    sleep(5000)

    -- �ɻ�����ִ�� --
    plane(config.planeId)
    sleep(5000)
    

    doTask(config.taskData.npcId, config.taskData.taskIds)

    show("----------------------------------------------")
    show("["..config.mapName.."]��ˢ��"..config.mapCount.."�Σ���luaִ�����")
    show("----------------------------------------------")

    sleep(200)
end
    

local config = {
    mapName = "ͨ��������Ѿ�����",
    mapCount = 1,
    planeId = 801,
    taskData = {
        npcId = 60079,
        taskIds = {60000364},
    },
}

start(config)