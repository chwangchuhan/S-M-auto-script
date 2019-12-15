check=1

mapIds = {600,1700,83900,83906,83901,83907,83902,83908,83903,83909,83905,83912,84101,84102,84103,84104,84105,84100,1900}

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
    mapIds = {600,1700,83900,83906,83901,83907,83902,83908,83903,83909,83905,83912,84101,84102,84103,84104,84105,84100,1900},
    overtime = 150, --��ʱʱ�䣬/����
    endMapIds = {83902}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
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
	labels=0,
	labelm=0,
	labeldone=0,
	 onScriptRound = function (config) -- ����ÿ���л���ͼ�ص�
		if getmapid()==600 then
			bot_stop()
			gotocoordinate(1, 3700, 1455)
			open_npc(110088)
			sleep(20)
			npc_plane(110088,212,4,5,0)
			sleep(20)
			close_npc(110088)
			sleep(20)
		end
		if getmapid()==1700 then
			speak("С����һ��lua���һ��������������������װ��<�չ���ɡ>������")
			bot_stop()
			gotocoordinate(1, 8265, 1407)
			sleep(1000)
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
				open_npc(508)
				sleep(20)
				request_task(508,9520101)
				sleep(20)
				submit_task(508,9520101)
				sleep(20)
				close_npc(508)
				sleep(20)
				common.wearDiaoluo()
				sleep(10)
				item_wear("�չ���ɡ")
				sleep(10)
				item_wear("�չ���ɡ")
				sleep(10)
				item_wear("�չ���ɡ")
				bot_start()
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
		if getmapid() == 83900 then		--������ ɱħŮ
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			bot_stop()
			speak("С��������lua��ʼ")
			gotocoordinate(1, 400, 1407)
			open_npc(95205)
			sleep(20)
			request_task(95205,9522106)   --  ֱ����ɵ�Q 
			sleep(20)
			request_task(95205,9521106,1)
			sleep(20)
			submit_task(95205,9522106)
			sleep(20)
			request_task(95205,9522107)   --   �� ϲ �� ��
			sleep(20)
			request_task(95205,9521107,1)
			sleep(20)
			submit_task(95205,9522107)
			sleep(20)
			request_task(95205,9522108)
			sleep(20)
			submit_task(95205,9522108)
			sleep(20)
			close_npc(95205) 
			sleep(20)
			gotocoordinate(1, 2800, 1407)
			open_npc(95201)
			sleep(20)
			request_task(95201,9520102)   --�ݶ� 5
			sleep(20)
			request_task(95201,9520106)	--а��ħŮ  ��������
			sleep(20)
			submit_task(95201,9520105)
			sleep(20)
			close_npc(95201)
			sleep(20)
			gotocoordinate(1, 1550, 1407)
			if labeldone==1 then
				ini_change("ban_hit_mob",0)
				speak("С��������ǰ������꣬30s����������ʱ����")
				bot_stop()
				sleep(30000)
				item_use(430453146)--����֮ʯ
			end
			repeat
				sleep(200)
				local mobId = mob_obj_get('а���ħŮ����Сʱ������ ����������ɱ�ң�')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						useskill(9531001,1) --�������
					end	
			until(mobId==0)
			gotocoordinate(1, 2800, 1407)
			open_npc(95201)
			sleep(20)
			submit_task(95201,9520106)
			sleep(20)
			close_npc(95201)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("C9CFCCF82CD7F326D3D2CAB12C323830302C313430372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323838302C313136372CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83906 then   --ˮ��	
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",0)
			ini_change("tobot_hit_range_right",1250)
			ini_change("tobot_hit_range_left",1700)
			speak("��ȡ��")
			labelnum=0
			repeat
				sleep(200)
					local mobId = mob_obj_get('��֮��')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						useskill(9531001,1) --�������
						bot_start()
						labelnum = labelnum + 1
						sleep(1000)
					end	
			until(labelnum==20)
			ini_change("tobot_hit_range_left",3167)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",0)
		end
		if getmapid() == 83901 then  --�û���ͼ
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			bot_stop()
			labelnum=0
			repeat
				sleep(200)
				ini_change("ban_hit_mob",1)
				local mobId2 = mob_obj_get('(30s)�����һ�òݶ�����֤��')
				if (mobId2 > 0) then
					local mobX = mob_obj_x(mobId2)-50
					local mobY = gety()
					bot_stop()
					gotocoordinate(1, mobX, mobY)
					ini_change("ban_hit_mob",0)
					bot_start()
					sleep(500)
					bot_stop()
				end	
				local mobId1 = mob_obj_get('����')
				if (mobId1 > 0) then
					local mobX = mob_obj_x(mobId1)
					local mobY = gety()
					bot_stop()
					gotocoordinate(1, mobX, mobY)
					useskill(9531001,1) --�������
					if isbuff('�����˻��Ĳ�')==1 then
						item_use(430453101)--����  
						labelnum = labelnum + 1
						sleep(1000)
					end
					bot_start()
				end	
			until(labelnum==10)
			bot_stop()
			gotocoordinate(1, 500, 1455)
			open_npc(95202)
			sleep(20)
			submit_task(95202,9520102)
			sleep(20)
			request_task(95202,9520103)
			sleep(20)
			close_npc(95202)
			sleep(1000)
			ini_change("ban_hit_mob",0)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323837302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323835302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313435352CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83907 then   --ˮ��   
			ini_change("tobot_nomovebot",0)
			ini_change("tobot_scriptbot",0)
			ini_change("tobot_hit_range_right",1250)
			ini_change("tobot_hit_range_left",1700)
			speak("��ȡˮ")
			labelnum=0
			repeat
				sleep(200)
					local mobId = mob_obj_get('ˮ֮��')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						useskill(9531001,1) --�������
						bot_start()
						labelnum = labelnum + 1
						sleep(1000)
					end	
			until(labelnum==20)
			ini_change("tobot_hit_range_left",3167)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313936302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313938302C3336372CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323030302C3336372CD3D2C5DC2C",0)
		end
		if getmapid() == 83902 then	 --õ��ͼ
			labelxi=0
			labelbei=0
			labelhua=0
			ini_change("tobot_scriptbot",0)
			sleep(4000)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",1)
				if labelxi<20 then --ϲ 20��
					bot_stop()
					gotocoordinate(1,2950,1455)
					if isbuff('����õ���ϲ��')==1 then
						useskill(9531003,1) --ϲ
					end
					local mobId2 = mob_obj_get('(30s)�����һ��ϲ')
					if (mobId2 > 0) then
						local mobX = mob_obj_x(mobId2)-50
						local mobY = gety()
						bot_stop()
						gotocoordinate(1,mobX,mobY)
						sleep(1000)
						ini_change("ban_hit_mob",0)
						bot_start()
						labelxi = labelxi + 1
						sleep(500)
						bot_stop()
					end	
				end

				if labelbei<20 then --��--"��"ˢ10����
					bot_stop()
					gotocoordinate(1,2900,1455)
					if isbuff('����õ�������')==1 then
						useskill(9531004,1) --��
					end
					local mobId2 = mob_obj_get('(30s)�����һ�ñ�')
					if (mobId2 > 0) then
						local mobX = mob_obj_x(mobId2)-50
						local mobY = gety()
						bot_stop()
						gotocoordinate(1,mobX,mobY)
						sleep(1000)
						ini_change("ban_hit_mob",0)
						bot_start()
						labelbei = labelbei + 1
						sleep(500)
						bot_stop()
					end	
				end
				if labelhua<40 and labelxi==20 and labelbei==20 then--�ɳ�
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					ini_change("ban_hit_mob",1)
					local mobId = mob_obj_get('õ��')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(3000)
						useskill(9531002,1) --��ˮ
						labelhua=labelhua+1
					end	
				end
			until(labelhua==40)
			bot_stop()
			ini_change("tobot_hit_range_right",32)
			ini_change("tobot_hit_range_left",3167)
			ini_change("ban_hit_mob",0)
			gotocoordinate(1, 500, 1455)
			open_npc(95203)
			sleep(20)
			submit_task(95203,9520103)
			sleep(20)
			request_task(95203,9520104)
			sleep(20)
			close_npc(95203)
			sleep(1000)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333135302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333136372C313435352CD3D2C5DC2C",0)
			bot_start()
		end
		if getmapid() == 83903 then	 --����ͼ
			labelre=0
			labeldongwu=0
			ini_change("tobot_scriptbot",0)
			ini_change("ban_hit_mob",1)
			sleep(4000)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",1)
				if labelre<40 then
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					ini_change("ban_hit_mob",1)
					local mobId = mob_obj_get('���ȵ�С��')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100)
						useskill(9531002,1) --��ˮ
						sleep(500)
						labelre=labelre+1
					end	
				end
				if labeldongwu<40 and labelre==40 then
					ini_change("tobot_hit_range_right",600)
					ini_change("tobot_hit_range_left",2300)
					ini_change("ban_hit_mob",1)
					local mobId = mob_obj_get('�����ػ���С��')
					if (mobId > 0) then
						local mobX = mob_obj_x(mobId)
						local mobY = gety()
						bot_stop()
						gotocoordinate(1, mobX, mobY)
						sleep(100) 
						useskill(9531003,1) 
						sleep(500)
						labeldongwu=labeldongwu+1
					end	
				end
			until(labeldongwu==40)
			bot_stop()
			ini_change("tobot_hit_range_right",32)
			ini_change("tobot_hit_range_left",3167)
			ini_change("ban_hit_mob",0)
			gotocoordinate(1, 500, 1455)
			open_npc(95204)
			sleep(20)
			submit_task(95204,9520104)
			sleep(20)
			request_task(95204,9520105)
			sleep(20)
			close_npc(95204)
			sleep(1000)
			labeldone=1
			ini_change("ban_hit_mob",0)
			ini_change("tobot_scriptbot",1)
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133302C313435352CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038302C313435352CD3D2C5DC2C",0)
			bot_start()	
		end
		if  getmapid() == 83905 then  
			bot_stop()
			sleep(2000)
			bot_stop()
			gotocoordinate(1,1350,1455)
			open_npc(95206)
			sleep(100)
			request_task(95206,9521110,1)
			sleep(100)
			close_npc(95206)
			sleep(100)
			useskill(9531003,1)
			sleep(1000)
			open_npc(95206)
			sleep(100)
			submit_task(95206,9521110)
			sleep(100)
			close_npc(95206)
			script_txt_loaddata("D3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3130302C313435352CB2BBB1E42C0D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3433322C3235352CB2BBB1E42CCAB9D3C3CEEFC6B72C3433303435333134380D0A3833393132",0)
			bot_start()	
		end
		if  getmapid() == 83912 then
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323730302C313437312CB2BBB1E42C",0)
			bot_start()	
		end
		if  getmapid() == 84101 then
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3436352C3635352CB2BBB1E42C",0)
			bot_start()	
		end
		if  getmapid() == 84102 then
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3436352C3635352CB2BBB1E42C",0)
			bot_start()	
		end
		if  getmapid() == 84103 then
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3436352C3635352CB2BBB1E42C",0)
			bot_start()	
		end
		if  getmapid() == 84104 then
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3436352C3635352CB2BBB1E42C",0)
			bot_start()	
		end
		if  getmapid() == 84105 then
			script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3436352C3635352CB2BBB1E42C",0)
			bot_start()	
		end
		if  getmapid() == 84100 then
			script_txt_loaddata("D6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C333136372C3635352CB2BBB1E42CCAB9D3C3B7C9BBFA2C373033",0)
			bot_start()	
		end
		if  getmapid() == 1900 then
			common.wearGongji()
			plane(70)
		end
		
    end
})