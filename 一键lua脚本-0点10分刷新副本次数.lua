check=1

mapIds = {600,403}

bot_stop()

local function isInMap()
	for i=1,#mapIds do
			if getmapid() ==mapIds[i] then
				return true
			end
	end
	return false
end
if not isInMap() then
		speak("S&M һ��lua���ѣ�0��10��ˢ�¸�������lua����")
		sleep(1000)
		plane(95800)
end

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")
 
common.simpleStart({
    mapName = "0��ˢ�¸�������",
    mapCount = 1,
    planeId = 95800,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {600,403},
	endMapIds = {403}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
	initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
	},
    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
	isLuckyDog = true,
    scripts = {
	
        "",
	
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323634322C3932372CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323631322C3932372CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323538322C3932372CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323535322C3932372CB2BBB1E4",
	
        "",
	
        "",
		"",
	},
    -- �����б�
    -- ���������ת����Ӧ��ͼʱִ�У������mapId��δ���û��߳�ʼ�ɻ���������ص����޷���ȡ����
    -- ��ͬnpc��ͬ��ͼ�����������ö��task
    tasks = {},
	 onScriptRound = function  ()
		if getmapid()==600 then
			bot_stop()
			labelstop=0
			gotocoordinate(1,4367,1455)
			repeat
				sleep(60000)
					if gettime(2)<=23 and gettime(2)>=12 then
						speak("S&M 0��10��ˢ�¸�������lua����ǰʱ��"..gettime(2).."��"..gettime(3).."�֣�0��10�ֿ�ʼˢ�£���ȴ�����ͷ�������nmsl")
						bot_stop()
					end
					if gettime(2)>=0  and gettime(2)<12 and gettime(3)>=10 then
						speak("S&M 0��10��ˢ�¸�������lua����ǰʱ��"..gettime(2).."��"..gettime(3).."�֣�10�뿪ʼˢ�¸�������")
						sleep(10000)
						plane(4)
						labelstop=1
					end
			until(labelstop==1)
		end
    end
})
 