check = 1


local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.shendianStart({
    mapName = '�����ͨ',
    isWaiting = true,                   -- �ʱ��δ��ʱ�Ƿ�ȴ�
    mapMouseFile = '�����ͨ����(��).txt',   -- ���ű���ַ
    overtime = 5,                       -- ������ʱʱ��/��
    task = {
        npcId = 1301,
        taskIds = {43601201, 43601202, 43601203, 43601204, 43601205, 43601206},
    },
})

common.shendianStart({
    mapName = '���߼�',
    isWaiting = true,                   -- �ʱ��δ��ʱ�Ƿ�ȴ�
    mapMouseFile = '���߼�����(��).txt',   -- ���ű���ַ
    overtime = 5,                       -- ������ʱʱ��/��
    task = {
        npcId = 1301,
        taskIds = {43602201, 43602202, 43602203, 43602204, 43602205, 43602206},
    },
})

common.shendianStart({
    mapName = '���Ӣ��',
    isWaiting = true,                   -- �ʱ��δ��ʱ�Ƿ�ȴ�
    mapMouseFile = '���Ӣ������(��).txt',   -- ���ű���ַ
    overtime = 15,                      -- ������ʱʱ��/��
    task = {
        npcId = 1301,
        taskIds = {43603201, 43603202, 43603203, 43603204, 43603205, 43603206},
    },
    onScriptRound = function  ()
        if (getmapid() == 68202 or getmapid() == 68203) then
            sleep(4000)
            if (common.checkMob('�ռ������� Ӣ����')) then
                speak('����Ӣ������')
                useskill(43501018,1) -- ʹ�ú����޵�
            end
        end
        
    end,
})
