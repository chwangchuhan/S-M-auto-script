check=1

mapIds = {84500,84502,84805}

bot_stop()

local function isitem()
	if item_if("����֮�Ǵ���ʯ")~=0 then --��û������֮�Ǵ���ʯ--
		return true
	end
	printgame(0,255,0,"û��[����֮�Ǵ���ʯ],��Lua����")
	return false
end

local function isInMap()
	for i=1,#mapIds do
			if getmapid() ==mapIds[i] then
				return true
			end
	end
	return false
end

if not isInMap() then
	sleep(2000)
	speak("ʹ��[����֮�Ǵ���ʯ]")
	item_use(430458240)
end

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "270����ÿ���ֽ�ҩ",
    mapCount = 1,
    planeId = nil,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {84500,84502,84805},
    overtime = 20, --��ʱʱ�䣬/����
    endMapIds = {84805}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_hit_range_max=100,
		tobot_hit_range_min=10,
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },
	isLuckyDog = true,
    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- 
       "",
       -- ��������
       "CFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323534342C3738332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333135322C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132322C313234372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039322C313234372CB2BBB1E42C",
       -- 1
	   "",
	},
	 onScriptRound = function (config) -- ����ÿ���л���ͼ�ص�
		if(getmapid()==84500)then
			repeat
				sleep(100)
				open_npc(833014)
				npc_plane(833014,833014,1,8330142,100)
				close_npc(833014)
			until(getmapid()~=84500)
		end
		if(getmapid()==84502)then
			ini_change("ban_hit_mob",1)
		end
		if(getmapid()==84805)then
			bot_stop()
			open_npc(833023)
			sleep(100)
			request_task(833023,9582901,1)
			sleep(100)
			submit_task(833023,9582901)
			sleep(100)
			close_npc(833023)
			sleep(100)
			item_use(430458211)
			sleep(1000)
			request_task(0,9582904,4)
			sleep(100)
			open_npc(833023)
			sleep(100)
			submit_task(833023,9582904)
			sleep(100)
			close_npc(833023)
			sleep(100)
			item_use(430458209)
			sleep(1000)
			request_task(0,9582902,4)
			sleep(100)
			open_npc(833023)
			sleep(100)
			submit_task(833023,9582902)
			sleep(100)
			close_npc(833023)
			sleep(100)
			item_use(430458210)
			sleep(1000)
			request_task(0,9582903,4)
			sleep(100)
			open_npc(833023)
			sleep(100)
			submit_task(833023,9582903)
			sleep(100)
			close_npc(833023)
			sleep(100)
			speak("�ֽ�ҩ����ȡ��10s�������lua")
			sleep(10000)
			plane(70)
		end
    end
})