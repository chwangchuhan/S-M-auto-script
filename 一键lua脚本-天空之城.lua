check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "���֮��",
    mapCount = 5,
    planeId = 745,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {93002,93100,93101,93102,93103},
    overtime = 20, --��ʱʱ�䣬/����
    endMapIds = {93103}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },
	isLuckyDog = true,
    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313538392C313437312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- ���֮��	1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630382C313438372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- ���֮��	2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832322C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- ���֮��	3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630382C313438372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- ���֮��	4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3832322C3935392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- ���֮��	5
       "",
       -- 6
       "",
       -- 7
       "",
       -- 8
       "",
	   -- 9
	   "",
	   -- 10
	   "",
	   -- 11
	   "",
	   -- 12
	   "",
	   -- 13
	   "",
	   --  14
	   "",
	   --  15
	   "",
	   --  16
	   "",
	   -- ����17
	   "",
	},
})