check = 1


local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.shendianStart({
    mapName = '�����ͨ',
    isWaiting = true,                   -- �ʱ��δ��ʱ�Ƿ�ȴ�
    mapMouseFile = '�����ͨ����.txt',   -- ���ű���ַ
    overtime = 5,                       -- ������ʱʱ��/��
})

common.shendianStart({
    mapName = '���߼�',
    isWaiting = true,                   -- �ʱ��δ��ʱ�Ƿ�ȴ�
    mapMouseFile = '���߼�����.txt',   -- ���ű���ַ
    overtime = 10,                       -- ������ʱʱ��/��
})

common.shendianStart({
    mapName = '���Ӣ��',
    isWaiting = true,                   -- �ʱ��δ��ʱ�Ƿ�ȴ�
    mapMouseFile = '���Ӣ������.txt',   -- ���ű���ַ
    overtime = 20,                      -- ������ʱʱ��/��
})
