check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "�ɿ�����԰(��Խ)",
    mapCount = 1,
    planeId = 269,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {18403,18402},
    overtime = 5, --��ʱʱ�䣬/����
    endMapIds = {35006}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
	},
	isLuckyDog = true,

    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "D6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3732302C3932372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3133382C313837322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130382C313837322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C37382C313837322CB2BBB1E42C",
       -- ����1
       "",
	},
	tasks = {
        {
            mapId = 18402,
            npcId = 1007,
            taskIds = {164003046},
        }
    },
	 onScriptRound = function () -- ����ÿ���л���ͼ�ص�
		repeat
			sleep(200)
			if (getmapid() == 18402) then
			  sleep(4000)
			  ini_change("ban_hit_mob",0)
			  plane(269)
			  return true
			end
		until(getmapid() ~= 35500)
    end
})
