check=1

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
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- ����4	�û���ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- ����5	ˮ��ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- ����6	õ��ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
       -- ����7	ˮ��ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
       -- ����8	����ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313937302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313935302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313939302C3336372CD3D2C5DC2C",
	   -- ����9	ˮ��ͼ
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",
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
	labels=0,
	labelm=0,
	 onScriptRound = function (config) -- ����ÿ���л���ͼ�ص�
		if getmapid()==600 then
			open_npc(110088)
			npc_plane(110088,212,4,5,0)
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
			open_npc(508)
			request_task(508,9520101)
			submit_task(508,9520101)
			close_npc(508)
			bot_start()
			repeat
				sleep(200)
					if gettime(2)<18 then
						speak("С����δ��ʱ�䣬��ǰʱ��"..gettime(2).."��"..gettime(3).."�֣���ȴ���")
						bot_stop()
					end
					if gettime(2)>=20 then
						speak("С����ʱ���ѹ�����ǰʱ��"..gettime(2).."��"..gettime(3).."�֣������Զ��սᡣ")
						sleep(10000)
						plane(70)
						return true
					end
			until(gettime(2)==18 or gettime(2)==19)
			if gettime(2)==18 or gettime(2)==19 then
				ini_change("tobot_scriptbot",1)
				script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383234352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383236352C313430372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C383238352C313430372CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C373330302C313430372CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C383530302C313430372CD7F3C5DC2C",0)
				bot_start()
				config.labels=gettime(2)    --��¼����ʱ��
				config.labelm=gettime(3)    --��¼����ʱ��
			end
			if 	gettime(2)==20 then
					plane(70)
					return true
			end
		end
		if getmapid() == 83900 then		--������ ɱħŮ
			bot_stop()
			ini_change("tobot_scriptbot",0)
			speak("С��������lua��ʼ")
			gotocoordinate(1, 200, 1407)
			open_npc(95205)
			request_task(95205,9522106)   --  ֱ����ɵ�Q 
			submit_task(95205,9522106)
			request_task(95205,9522107)   --   �� ϲ �� ��
			submit_task(95205,9522107)
			close_npc(95205) 
			gotocoordinate(1, 2800, 1407)
			open_npc(95201)
			request_task(95201,9520102)   --�ݶ� 5
			request_task(95201,9520106)	--а��ħŮ  ��������
			submit_task(95201,9520105)
			close_npc(95201)
			gotocoordinate(1, 1550, 1407)
			repeat
				if task_get_state(9522106)==2 then
				local mobId = mob_obj_get('а���ħŮ')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(500)
						useskill(9531001,1) --�������
					end	
				end
			until(task_get_state(9522106)~=2)
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("C9CFCCF82CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313136372CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83901 then  --�û���ͼ
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			bot_stop()
			labelnum=0
			repeat
				sleep(200)
				local mobId = mob_obj_get('����')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(500)
						useskill(9531001,1) --�������
						sleep(500)
						item_use(430453101)--����  
						bot_start()
						sleep(1000)
						labelnum=labelnum+1
					end	
				end
			until(labelnum==10)
			bot_start()
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",0)
		end
		if getmapid() == 83902 then	 --õ��ͼ
			labelxi=0
			labelbei=0
			labelhua=0
			ini_change("tobot_nomovebot",0)
			sleep(4000)
			repeat
				sleep(200)
				if labelxi<=20 then --ϲ 20��
					ini_change("tobot_hit_range_right",2600)
					ini_change("tobot_hit_range_left",3167)
					local mobId = mob_obj_get('�����õ��')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531003,1) --ϲ
						bot_start()
						sleep(500)
						labelxi=labelxi+1
					end	
				end

				if labelbei<=20 and labelxi==21 then --��--"��"ˢ10����
					ini_change("tobot_hit_range_right",2600)
					ini_change("tobot_hit_range_left",3167)
					local mobId = mob_obj_get('�����õ��')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531004,1) --��
						bot_start()
						sleep(500)
						labelbei=labelbei+1
					end	
				end
				if labelhua<20 and labelbei=21 then--�ɳ�"�ɳ�"ˢ40����
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					local mobId = mob_obj_get('õ��')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531002,1) --��ˮ
						bot_start()
						sleep(500)
					end	
				end
			until(labelhua==21)
		end
    end
})