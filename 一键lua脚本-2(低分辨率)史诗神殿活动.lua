check = 1


local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")


common.shendianStart({
    mapName = '���Ӣ��',
    isWaiting = true,                   -- �ʱ��δ��ʱ�Ƿ�ȴ�
    mapMouseFile = '���ʷʫ����(��).txt',   -- ���ű���ַ
    overtime = 30,                       -- ������ʱʱ��/��
    task = {
        npcId = 1301,
        taskIds = {19012102, 20190801},
    },
    onTaskCallback = function ()
        -- ���ʷʫ����
        -- if (task_get_state(20190801) == 3) then
            common.doTask(1301, {20190801})
            wearitem('����֮ѥ')
            common.show('����װ������֮ѥ')
            sleep(10)
            wearitem('�ط�֮��')
            common.show('����װ���ط�֮��')
        -- end
    end
})

common.wearGongji()