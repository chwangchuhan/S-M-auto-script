check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "����̽���ߣ���������",
    mapCount = 5,
    planeId = 19868,
	minYSpeed = 200,
    maxYSpeed = 2000,
	minXSpeed = 200,
    maxXSpeed = 2000,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {90300,90100,90101,90102,90103,90104,90105,90106,90107,90108,90109,90110,90111,90112,90113,90114,90115},
    overtime = 30, --��ʱʱ�䣬/����
    endMapIds = {90115}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����t
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
		tobot_giveitemif=1,
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
		tobot_hit_range_top = 120,
    },

    isLuckyDog = true,

    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313135302C313435362CB2BBB1E42C",
       -- ����1  ����ͼ
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3937362CB2BBB1E42C",
       -- ����2			
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- ����3
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- ����4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- ����5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- ����6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- ����7
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
       -- ����8
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
	   -- ����9  111
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313530302C313035362CB2BBB1E42C",
	   -- ����10 
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3838302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- ����11
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3838302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- ����12
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3838302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- ����13
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313430302C3838302CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- ����14 ���м�
	   "C9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C",
	   -- ����15
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3931322CB2BBB1E42C",
	   -- ����16
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3931322CB2BBB1E42C",
	   -- ����17
	   "",
    },
    
    onScriptRound = function () -- ����ÿ���л���ͼ�ص�
		if (getmapid() == 90100) then
			ini_change("find_is_zhiding",0)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			item_use(170191135)--����������ҩ
			sleep(100)
			if isbuff('����������ҩˮ')==0 then
				item_use(430139031)--������ҩˮ
				sleep(100)
			end
			if isbuff('Ч��')==0 then
				item_use(430139017)--��������˺�ҩˮ
				sleep(100)
			end
		end
        if (getmapid() == 90113) then
			labelnext=0
			labeldoor=0
			labelnum=0
			if isbuff('����������ҩˮ')==0 then
				item_use(430139031)--������ҩˮ
				sleep(100)
			end
			if isbuff('Ч��')==0 then
				item_use(430139017)--��������˺�ҩˮ
				sleep(100)
			end
			repeat
				sleep(100)
				local mobId = mob_obj_get('�����˹��ʯ')
				local mobX = mob_obj_x(mobId)
				local mobY = mob_obj_y(mobId)
				if mobY>880 then
					mobY=912
				end
				speak(mobX.."."..mobY)
				if door_if(3100,912)==1 and labeldoor==0 then
					speak("�����ڿ�ģʽ")
					labeldoor=1
				end
				if gety()==mobY and labeldoor==1then
					bot_stop()
					ini_change("tobot_scriptbot",0)
					sleep(1000)
					if gety()==mobY and labeldoor==1 then  
						speak("��ʼ�ڿ�")
						common.wearDiaoluo()
						bot_stop()
						sleep(500)
						gotocoordinate(1,mobX,mobY)
						sleep(1000)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						useskill(5000008,0)
						sleep(900)
						common.wearGongji()
						labelnum=labelnum+1
					end
					bot_start()
					ini_change("tobot_scriptbot",1)
				end
				if labelnum ==3 and labeldoor==1 then   --��������3����
					speak("û�п��ˣ���������")
					common.wearGongji()
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333133302C3931322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C3931322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037302C3931322CB2BBB1E42C0D0AC9CFCCF82CD7F3C5DCCAB12C323737302C3931322CB2BBB1E42C0D0AC9CFCCF82CD3D2C5DCCAB12C3238302C3931322CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3632352C3539322CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C323432302C3630382CB2BBB1E42C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C333130302C3931322CB2BBB1E42C",0)
					labelnext=1
				end
			until(labelnext==1 or getmapid() ~= 90113)
        end
		if (getmapid() == 90115) then
			labeldoor=0
			repeat
				sleep(100)
				if door_if(3100,912)==1 then
					labeldoor=1
				end
				local mobId = mob_obj_get('���ʹ���')
				if mobId~=0 then
					ini_change("find_zhiding","���ʹ���")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				else
					ini_change("find_zhiding","��Ԩ���޿���ķ")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				end
				if isbuff('���ҳ�˹֮��')==0 then --�Ͻ�
						useskill(43501018,1) --����
						sleep(100)
						if isbuff('һ��һ���磬һҶһ����')==0 then  --�޵�
							useskill(5000420,1)	--���
							sleep(100)
							if isbuff('��輼��Ч��')==0 then --ħ��
								useskill(43501022,1)  --���
								sleep(100)
								if isbuff('ÿ�춼Ҫ������')==0 then --ħ��
									useskill(43501025,1) --��ë
									sleep(100)
									if isbuff('�ƻ�������')==0 then
										item_use(611113089)  --��󹥻�����
										sleep(100)
										if isbuff('����Ч��')==0 then --����
											item_use(611113088)  --�����������
											sleep(100)
											if isbuff('����Ч��')==0 then --����
												useskill(999005,1) --���
												sleep(100)
												if isbuff('����Ч��')==0 then--����
													useskill(999006,1) --����
													sleep(100)
													if isbuff('����Ч��')==0 then--ѣ��
														useskill(999003,1) --����
														sleep(100)
													end
												end
												if isbuff('ʳƷЧ��')==0 then --����֥ʿ��
													item_use(611113016)
													sleep(100)
												end
												if isbuff('����Ч��')==0 then
													item_use(611113086)--�������
													sleep(100)
												end
												if isbuff('�Ŵ�֮��')==0 then
													item_use(430453126)--����᲻�ɴ�
													sleep(100)
												end
											end
										end
									end
								end
							end
						end
					end
					if isbuff('����������ҩˮ')==0 then
						item_use(430139031)--������ҩˮ
						sleep(100)
					end
					if isbuff('Ч��')==0 then
						item_use(430139017)--��������˺�ҩˮ
						sleep(100)
					end
			until(labeldoor==1)
        end
    end
})