check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "һ����ȡ�����̳����",
    mapCount = 1,
    planeId = 274,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {35404,35403,35400,35500},
    overtime = 20, --��ʱʱ�䣬/����
    endMapIds = {35500}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        ban_hit_mob=1,
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },

    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- �׶�5
       "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323531322E392C313035352E30342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134302C313435352E33312CD7F3C5DC2C",
       -- �׶�4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134302C313435352E33312CD7F3C5DC2C",
       -- �׶�1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3134302C313435352E33312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3136302C313435352E33312CD7F3C5DC2C",
	},
	 tasks = {
        {
            mapId = 35500,
            npcId = 7168,
            taskIds = {172000148,172000149},
        }
    },
	onScriptRound = function  ()
		repeat
			sleep(200)
			if (getmapid() == 35500) then
			  sleep(10000)
			  ini_change("ban_hit_mob",0)
			  return true
			end
		until(getmapid() ~= 35500)
    end
})