check=1

mapIds = {600,1700,83900,83906,83901,83907,83902,83908,83903,83909}

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
		speak("S&M С����һ��lua���ѣ���ǰ����Ŀ���ͼ��")
		sleep(1000)
		plane(95800)
end

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "��������",
    mapCount = 1,
    planeId = nil,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {600,1700,83900,83906,83901,83907,83902,83908,83903,83909},
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
       "",
       -- ����1 ��
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383234352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383236352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383238352C313430372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C373330302C313430372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C383530302C313430372CD7F3C5DC2C",
       -- ����2	83900 ������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",
       -- ����3	ˮ��ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- ����4	�û���ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- ����5	ˮ��ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- ����6	õ��ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- ����7	ˮ��ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- ����8	����ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
	   -- ����9	ˮ��ͼ
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
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
	
	 onScriptRound = function (config) -- ����ÿ���л���ͼ�ص�
		if getmapid()==600 then
			bot_stop()
			gotocoordinate(1,3700,1455)
			open_npc(110088)
			sleep(20)
			npc_plane(110088,212,4,5,0)
			sleep(20)
			close_npc(110088)
		end
		if getmapid()==1700 then
			speak("С����һ��lua���һ��������������������װ��<�չ���ɡ>������")
			bot_stop()
			gotocoordinate(1, 8265, 1407)
			sleep(1000)
			item_wear("�չ���ɡ")
			sleep(700)
			item_wear("�չ���ɡ")
			sleep(700)
			item_wear("�չ���ɡ")
			repeat
				sleep(200)
					if gettime(2)<18 then
						bot_stop()
						speak("С����δ��ʱ�䣬��ǰʱ��"..gettime(2).."��"..gettime(3).."�֣���ȴ���")
					end
					if gettime(2)>=20 then
						bot_stop()
						speak("С����ʱ���ѹ�����ǰʱ��"..gettime(2).."��"..gettime(3).."�֣������Զ��սᡣ")
						sleep(10000)
						plane(70)
						return true
					end
			until(gettime(2)==18 or gettime(2)==19)
			if gettime(2)==18 or gettime(2)==19 then
				open_npc(508)
				sleep(20)
				request_task(508,9520101)
				sleep(20)
				submit_task(508,9520101)
				sleep(20)
				close_npc(508)
				sleep(20)
				common.wearDiaoluo()
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383234352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383236352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383238352C313430372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C373330302C313430372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C383530302C313430372CD7F3C5DC2C",0)
				bot_start()
				config.labels=gettime(2)    --��¼����ʱ��
				config.labelm=gettime(3)    --��¼����ʱ��
			end
			if 	gettime(2)==20 then
				common.wearGongji()
				bot_stop()
				plane(70)
				return true
			end
		end
		if getmapid() == 83900 then
			bot_stop()
			ini_change("tobot_scriptbot",0)
			labelstop=0
			labelday=gettime(1)
			labellasttime=gettime(3)
			labelnowtime=0
			repeat
				sleep(200)
				labelnowtime=gettime(3)
				if labelday==1 then   --��1ˢ ��
					speak("��һˢ������")
					if labelnowtime - labellasttime <30 or labelnowtime - labellasttime <-30 then --"����"
						ini_change("tobot_hit_range_right",1500)
						ini_change("tobot_hit_range_left",1600)
						ini_change("tobot_nomovebot",0)
						bot_start()
						item_use(430453101)--����
						sleep(500)
					end
				end
				if labelday==2 then   --��2ˢ ��
					speak("�ܶ�ˢ�ú�ˮ")
					if labelnowtime - labellasttime <30 or labelnowtime - labellasttime <-30 then --"�õ�"
						ini_change("tobot_hit_range_right",2500)
						ini_change("tobot_hit_range_left",2600)
						ini_change("tobot_nomovebot",0)
						bot_start()
						item_use(430453102)--��ˮ
						sleep(500)
					end
				end
				if labelnowtime - labellasttime ==30 or labelnowtime - labellasttime ==-30 then
					bot_stop()
					speak("30����ˢ���Ľ���������ȥȡˢ��")
					labelstop=1
				end
				if labelday~=1 and labelday~=2 then
					labelstop=1
				end
			until(labelstop==1)
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",1)
			ini_change("tobot_hit_range_right",32)
			ini_change("tobot_hit_range_left",3167)
			script_txt_loaddata("C9CFCCF82CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313136372CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83906 then   --ˮ��
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",0)
			ini_change("tobot_hit_range_right",1250)
			ini_change("tobot_hit_range_left",1700)
			labelstop=0
			labelday=gettime(1)
			labellasttime=gettime(3)
			labelnowtime=0
			speak("��ȡ��")
			repeat
				sleep(200)
				labelnowtime=gettime(3)
				if labelday==1 then   --��1ˢ ��
					speak("��һˢ������")
					if labelnowtime - labellasttime <30 or labelnowtime - labellasttime <-30 then
						local mobId = mob_obj_get('��֮��')
						if (mobId > 0) then
							local mobX = mob_obj_x(mobId)
							local mobY = gety()
							bot_stop()
							gotocoordinate(1, mobX, mobY)
							sleep(500)
							useskill(9531001,1) --�������
							bot_start()
						end	
					end
				end
				if labelnowtime - labellasttime ==30 or labelnowtime - labellasttime ==-30 then
					bot_stop()
					speak("30����ˢ���Ľ�����30����뿪����")
					common.wearGongji()
					bot_stop()
					sleep(30000)
					plane(70)
					labelstop=1
				end
			until(labelstop==1 or labelday~=1)
			ini_change("tobot_hit_range_left",3167)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",0)
		end
		if getmapid() == 83907 then   --ˮ��
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",0)
			ini_change("tobot_hit_range_right",1250)
			ini_change("tobot_hit_range_left",1700)
			labelstop=0
			labelday=gettime(1)
			labellasttime=gettime(3)
			labelnowtime=0
			speak("��ȡˮ")
			repeat
				sleep(200)
				labelnowtime=gettime(3)
				if labelday==2 then   --��2ˢ ˮ
					speak("�ܶ�ˢ�ú�ˮ")
					if labelnowtime - labellasttime <30 or labelnowtime - labellasttime <-30 then
						local mobId = mob_obj_get('ˮ֮��')
						if (mobId > 0) then
							local mobX = mob_obj_x(mobId)
							local mobY = gety()
							bot_stop()
							gotocoordinate(1, mobX, mobY)
							sleep(500)
							useskill(9531001,1) --�������
							bot_start()
						end	
					end
				end
				if labelnowtime - labellasttime ==30 or labelnowtime - labellasttime ==-30 then
					bot_stop()
					speak("30����ˢ���Ľ�����30����뿪����")
					common.wearGongji()
					bot_stop()
					sleep(30000)
					plane(70)
					labelstop=1
				end
			until(labelstop==1 or labelday~=2 )
			ini_change("tobot_hit_range_left",3167)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",0)
		end
		if getmapid() == 83902 then
			label=0
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			labelstop=0
			labellasttime=gettime(3)
			labelnowtime=0
			labelday=gettime(1)
			labellasttime=gettime(3)
			labelnowtime=0
			repeat
				sleep(200)
				labelnowtime=gettime(3)
				if labelday==3 then   --��3ˢ ϲ
					speak("����ˢϲ")
					if labelnowtime - labellasttime <30 or labelnowtime - labellasttime <-30 then --ϲ
						ini_change("tobot_hit_range_right",2600)
						ini_change("tobot_hit_range_left",3167)
						local mobId = mob_obj_get('�����õ��')
						if (mobId > 0) then
							local mobX = mob_obj_x(mobId)
							local mobY = gety()
							bot_stop()
							gotocoordinate(1, mobX, mobY)
							sleep(500)
							useskill(9531003,1) --ϲ
							bot_start()
							sleep(500)
						end	
					end
				end
				if labelday==4 then   --��4ˢ ��
					speak("����ˢ��")
					if labelnowtime - labellasttime <30 or labelnowtime - labellasttime <-30 then --��
						ini_change("tobot_hit_range_right",2600)
						ini_change("tobot_hit_range_left",3167)
						local mobId = mob_obj_get('�����õ��')
						if (mobId > 0) then
							local mobX = mob_obj_x(mobId)
							local mobY = gety()
							bot_stop()
							gotocoordinate(1, mobX, mobY)
							sleep(500)
							useskill(9531004,1) --��
							bot_start()
							sleep(500)
						end	
					end
				end
				if labelday==5 then   --��5ˢ �ɳ�
					speak("����ˢ�ɳ�")
					if labelnowtime - labellasttime <30 or labelnowtime - labellasttime <-30then--�ɳ�
						ini_change("tobot_hit_range_right",600)
						ini_change("tobot_hit_range_left",2300)
						ini_change("ban_hit_mob",1)
						local mobId = mob_obj_get('õ��')
						if (mobId > 0) then
							local mobX = mob_obj_x(mobId)
							local mobY = gety()
							bot_stop()
							gotocoordinate(1, mobX, mobY)
							sleep(2000)
							useskill(9531002,1) --��ˮ
						end	
					end
				end
				if labelnowtime - labellasttime ==30 or labelnowtime - labellasttime ==-30 then
					bot_stop()
					speak("30����ˢ���Ľ�����30����뿪����")
					common.wearGongji()
					bot_stop()
					sleep(30000)
					plane(70)
					labelstop=1
				end
				if labelday~=3 and labelday~=4 and labelday~=5 then
					labelstop=1
				end
			until(labelstop==1)
		end
    end
})