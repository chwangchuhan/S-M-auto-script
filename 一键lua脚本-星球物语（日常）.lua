check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "��������",
    mapCount = 1,
    planeId = nil,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {86403,83900,83906,83901,83907,83902},
    overtime = 150, --��ʱʱ�䣬/����
    endMapIds = {83902}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_hit_range_max=100,
		tobot_hit_range_min=10,
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },

    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383234352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383236352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383238352C313430372CB2BBB1E42C",
       -- ����1
       "C9CFCCF82CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313136372CD3D2C5DC2C",
       -- ����2
       "",
       -- ����3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- ����4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- ����5
       "C9CFCCF82CD7F326D3D2CAB12C323537322C313435352CD3D2C5DC2C",
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
	tasks = {
        {
            mapId = 1700,
            npcId = 508,
            taskIds = {9520101},
        }
    },
	labeldun=0,
	 onScriptRound = function (config) -- ����ÿ���л���ͼ�ص�
		if getmapid() == 83900 then
			bot_stop()
			ini_change("tobot_scriptbot",0)
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)<=12 then --"����"
					if getx()~=1540 then
						bot_stop()
						ini_change("tobot_nomovebot",0)
						gotocoordinate(1,1540,1407)
					end
					if getx()==1540 then
						ini_change("tobot_nomovebot",1)
						bot_start()
						sleep(200)
						item_use(430453101)
					end
				end
				if gettime(2)==18 and gettime(3)<=25 and gettime(3)>12 then --"�õ�"
					if getx()~=2550 then
						bot_stop()
						ini_change("tobot_nomovebot",0)
						gotocoordinate(1,2550,1407)
					end
					if getx()==2550 then
						ini_change("tobot_nomovebot",1)
						bot_start()
						sleep(200)
						item_use(430453102)
					end
				end
			until(gettime(2)==18 and gettime(3)>25)
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",1)
			bot_start()
		end
		if getmapid() == 83906 then   --ˮ��
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_hit_range_right",1250)
			ini_change("tobot_hit_range_left",1700)
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)>25 and gettime(3)<=55 then
					--gotocoordinate(1,1250,)
					sleep(3000)
					useskill(9531001,1) --�������
				end
			until(gettime(2)==18 and gettime(3)>55)
			ini_change("tobot_hit_range_left",3167)
		end
		if getmapid() == 83902 then
			ini_change("tobot_nomovebot",0)
			repeat
				sleep(200)
				if gettime(2)==18 and gettime(3)<=59 then --ϲ
					ini_change("tobot_hit_range_right",2500)
					ini_change("tobot_hit_range_left",3000)
					bot_start()
					sleep(3000)
					useskill(9531003,1) --ϲ
				end
				if gettime(2)==17 and gettime(3)<=02 then --ϲ
					ini_change("tobot_hit_range_right",2500)
					ini_change("tobot_hit_range_left",3000)
					bot_start()
					sleep(3000)
					useskill(9531003,1) --ϲ
				end
				if gettime(2)==19 and gettime(3)>02 and gettime(3)<=14 then --��
					ini_change("tobot_hit_range_right",2500)
					ini_change("tobot_hit_range_left",3000)
					bot_start()
					sleep(3000)
					useskill(9531004,1) --��
				end
				if gettime(2)==19 and gettime(3)<=59 then--�ɳ�
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					bot_stop()
					gotocoordinate(1,600,1455)
					sleep(3000)
					useskill(9531002,1) --��ˮ
					gotocoordinate(1,900,1455)
					sleep(3000)
					useskill(9531002,1) --��ˮ
					gotocoordinate(1,1200,1455)
					sleep(3000)
					useskill(9531002,1) --��ˮ
					gotocoordinate(1,1500,1455)
					sleep(3000)
					useskill(9531002,1) --��ˮ
					gotocoordinate(1,1800,1455)
					sleep(3000)
					useskill(9531002,1) --��ˮ
					gotocoordinate(1,2100,1455)
					sleep(3000)
					useskill(9531002,1) --��ˮ
					gotocoordinate(1,2400,1455)
					sleep(3000)
					useskill(9531002,1) --��ˮ
				end				
			until(gettime(2)==20)
		end
    end
})