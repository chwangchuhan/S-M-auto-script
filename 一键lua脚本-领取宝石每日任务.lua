check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")
 
common.simpleStart({
    mapName = "��ȡ��ʯÿ������",
    mapCount = 1,
    planeId = 289,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {38004,38003,38000,36801,36800},
	endMapIds = {36800}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
	initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
	},
    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
	isLuckyDog = true,
    scripts = {
	--����5
        "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C3635362C3637312CD7F3C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C323131322C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C39302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C33322C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134332C313433392CD7F3C5DC2C",
	--����4
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C39302C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C33322C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134332C313433392CD7F3C5DC2C",
	--����1
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C37392C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132352C313433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3137312C313433392CD7F3C5DC2C",
	--����ܲ�
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3636372C313331332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3730342C313331312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3734332C313331312CD3D2C5DC2C",
		"",
	},
    -- �����б�
    -- ���������ת����Ӧ��ͼʱִ�У������mapId��δ���û��߳�ʼ�ɻ���������ص����޷���ȡ����
    -- ��ͬnpc��ͬ��ͼ�����������ö��task
    tasks = {},
	 onScriptRound = function  ()
		if getmapid()==36800 then
			ini_change("find_is_zhiding",0)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			open_npc(7198)
			sleep(20)
			request_task(7198,174001050,1)
			sleep(20)
			close_npc(7198)
			sleep(1000)
			bot_stop()
			sleep(2000)
			plane(283)
		else
			ini_change("find_zhiding","")
			ini_change("find_is_zhiding",1)
			ini_change("find_is_youhao",0)
			ini_change("find_is_ewai",0)
		end
    end
})
 