check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "���ص��Թ��������",
    mapCount = 3,
    planeId = 435,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {69200,69300,69301,69303,69304,69305},
    overtime = 30, --��ʱʱ�䣬/����
    endMapIds = {69304}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },
    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313534382C313339322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313537352C313339322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530332C313339322CB2BBB1E42C",
       -- ����1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323239322C3733362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323236352C3733362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323331302C3733362CB2BBB1E42C",
       -- ����2
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830342C3733362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2CC3BBD3D0B8BDBCD3B2CECAFD",
       -- ����3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313333392E32362C3833322E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- ����4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323238302C3733362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323237302C3733362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323239302C3733362CB2BBB1E42C",
       -- ����5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323238302C3733362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323237302C3733362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323239302C3733362CB2BBB1E42C",
       -- ����6
       "",
       -- ����7
       "",
       -- ����8
       "",
	   -- ����9
	   "",
	   -- ����10
	   "",
	   -- ����11
	   "",
	   -- ����12
	   "",
	   -- ����13
	   "",
	   -- ����14
	   "",
	   -- ����15
	   "",
	   -- ����16
	   "",
	   -- ����17
	   "",
	},
	 onScriptRound = function () -- ����ÿ���л���ͼ�ص�
        if (getmapid() == 69300) then
			bot_stop()--��ֹ�һ�--
			repeat 
					gotocoordinate(1,393,736)
					sleep(200)
					useskill(5000028,1)
			until (mob_if("���������Ĵ�è")==0)
			bot_start()--�����һ�--
        end
    end
})