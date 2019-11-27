check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "��Ӱ��������",
    mapCount = 5,
    planeId = 290,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {38004,37700,37701,37702,37703,37704,37705,37706,37707,37708,37709,37710,37711,37712,37713},
    overtime = 400, --��ʱʱ�䣬/����
    endMapIds = {37713}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_giveitemif=0, 
		tobot_hit_range_top = 150,
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },
    isLuckyDog = true,
    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323930302C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323932302C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323934302C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323839302C313433392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",
       -- 0 
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",
       -- 1
       "C9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C363336372C313636332CD3D2C5DC2C0D0AD7F3CCF82CD7F326D3D2CAB12C353930302C3836332CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333538302C3836332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333630302C3836332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333632302C3836332CB2BBB1E42C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C323130302E31342C3836332E3535392CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C343638302C3836332CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C363036302C313636332CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C363130302C313636332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363234332C3838372CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363235382C3838332CB2BBB1E40D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363235382C3838332CB2BBB1E42C",
       -- 2
       "CFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3433322E34382C3437392E3938372CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C3635362E31382C313038372E35332CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C313035302C313636332CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C343131322C313636332CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323239392E32342C313139392E36322CD7F3C5DC2C0D0AD3D2CCF82CD3D2C5DCCAB12C343438352E35382C3339392E36342CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363237352E36382C3534332E30342CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C353238302E30362C3534332E34382CD3D2C5DC2C",
       -- 3
       "D7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333130342E31342C313838372E38342CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323037392E37322C313838372E382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532382E34362C3635352E36342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343532352E31352C3935392E39362CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343930372E33382C3532372E30382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363237352E362C3232332E39322CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C363335302C313838372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323931302C313739312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323231322C313832312CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3230302C3335312CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3335312CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3430302C313838372CD7F3C5DC2C",
       -- 4
       "D3D2CCF82CD7F326D3D2CAB12C3537362E36342C313636332E30382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737382E3935392C313636332E39362CD7F3C5DC2C",
       -- 0
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",
       -- 0
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",
       -- ֮·
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343536332E32312C313735392E35362CD7F3C5DC2C",
	   -- ��˹
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363134332E34372C313435352E30382CD7F3C5DC2C",
	   -- �ӵ�
	   "D3D2CCF82CD7F326D3D2CAB12C313739352E362C313035362E31322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738362E34362C3838302E36342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313739302C3838302E2CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C3838302CD7F3C5DC2C",
	   -- ����
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313031312C3431352CD7F3C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C323539312C3833312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323239352C3537352CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333535312C313234372CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343338332C3833312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C35302C313633312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C36382C313633312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3130302C313633312CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C313633312CD7F3C5DC2C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C3530302C3431352CB2BBB1E42C",
	   -- ����֮·
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343631312E36322C313735392E382CD7F3C5DC2C",
	   -- boss
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312E342C313735392E362CD7F3C5DC2C",
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
		if (getmapid() == 37700) then --����0	
			ini_change("find_is_zhiding",0)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			wearitem("�Ͻ��Ƕ�")
			sleep(10)
		end
		if (getmapid() == 37701) then --����1
			if isbuff('����������ҩˮ')==0 then
				item_use(430139031)--������ҩˮ
				sleep(100)
			end
			if isbuff('Ч��')==0 then
				item_use(430139017)--��������˺�ҩˮ
				sleep(100)
			end
		end
		if (getmapid() == 37702) then --����2
			if isbuff('����������ҩˮ')==0 then
				item_use(430139031)--������ҩˮ
				sleep(100)
			end
			if isbuff('Ч��')==0 then
				item_use(430139017)--��������˺�ҩˮ
				sleep(100)
			end
		end
		if (getmapid() == 37703) then --����3
			labeldoor=0
			repeat
				sleep(200)
				if isbuff('����������ҩˮ')==0 then
					item_use(430139031)--������ҩˮ
					sleep(100)
				end
				if isbuff('Ч��')==0 then
					item_use(430139017)--��������˺�ҩˮ
					sleep(100)
				end
				local mobId4 = mob_obj_get('??? ?')
				local mobx4 = mob_obj_x(mobId4)
				if gety()==1695 and mobx4~=0 then --�ɼ�
					bot_stop()
					speak("�ɼ�ħ��")
					useskill(43501018,1)
					gotocoordinate(1,mobx4,1695)
					sleep(200)
					useskill(5000028,1)
					ini_change("tobot_scriptbot",1)
					script_txt_loaddata("D7F3CCF828D6FAC5DC292CD7F326D3D2CAB12C333130342E31342C313838372E38342CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C323037392E37322C313838372E382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532382E34362C3635352E36342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C343532352E31352C3935392E39362CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C343930372E33382C3532372E30382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363237352E362C3232332E39322CD7F3C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C363335302C313838372CD7F3C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323931302C313739312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323231322C313832312CB2BBB1E42C0D0AD3D2CCF828D6FAC5DC292CD7F326D3D2CAB12C3230302C3335312CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3335312CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3430302C313838372CD7F3C5DC2C",0)
					bot_start()
				end
				if door_if(6275,223)==1 then
					labeldoor=1
				end
			until(labeldoor==1 and gety()==223 and mobx4==0)
        end
		if (getmapid() == 37704) then --����4
			labelnext=0
			common.wearGongji()
			wearitem("�Ͻ��Ƕ�")
			sleep(10)
			labellasttime=gettime(3)
			labelnowtime=0
			repeat
				sleep(10)
				if isbuff('����������ҩˮ')==0 then
					item_use(430139031)--������ҩˮ
					sleep(10)
				end
				if isbuff('Ч��')==0 then
					item_use(430139017)--��������˺�ҩˮ
					sleep(10)
				end
				local mobId4 = mob_obj_get('??? ?')
				local mobx4 = mob_obj_x(mobId4)
				labelnowtime=gettime(3)
				if door_if(6150,895)==1 then
					if mobId4==0 then
					speak("��������")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					script_txt_loaddata("D3D2CCF82CD7F326D3D2CAB12C3537362E36342C313636332E30382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737382E3935392C313636332E39362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363133302C3839352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363135302C3839352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363137302C3839352CB2BBB1E42C",0)
					bot_start()
					end
					if labelnowtime - labellasttime ==10 or labelnowtime - labellasttime ==-50 then
						speak("��ʱ10���ӣ���������")
						labelnext=1
						script_txt_loaddata("D3D2CCF82CD7F326D3D2CAB12C3537362E36342C313636332E30382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737382E3935392C313636332E39362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363133302C3839352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363135302C3839352CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363137302C3839352CB2BBB1E42C",0)
					end
				end
				if getx()>3300 and getx()<=3800 and gety()> 863 and gety()<1000then
					bot_stop()
					sleep(200)
					jmp(1)
					sleep(1000)
					local mobId4 = mob_obj_get('??? ?')
						if mobId4 ~=0  then
							useskill(43501018,1)
							sleep(1000)
							useskill(5000028,1)
							sleep(1000)
							useskill(5000028,1)
							sleep(1000)
						end
					bot_start()
				end
				if getx()>4200 and getx()<=5000 and gety()> 895 then
					bot_stop()
					sleep(200)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(900)
					bot_start()
				end
				local mobId4 = mob_obj_get('??? ?')
				if getx()>4200 and getx()<=5000 and gety()==895 and mobId4 ~=0 then
					bot_stop()
					useskill(5000420,1)
					sleep(1000)
					useskill(5000028,1)
					sleep(1000)
					useskill(5000028,1)
					sleep(1000)
					bot_start()
					sleep(1000)
				end
				if getx()>6000 and gety()> 895 then
					bot_stop()
					jmp(1)
					sleep(900)
					jmp(1)
					sleep(1000)
					bot_start()
				end
				if getmapid() == 37704 and door_if(6150,895)== 0 then
					script_txt_loaddata("D3D2CCF82CD7F326D3D2CAB12C3537362E36342C313636332E30382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3737382E3935392C313636332E39362CD7F3C5DC2C",0)
				end
				if (getmapid() == 37705) then
					ini_change("ban_hit_mob",0)
					repeat
						sleep(100)
						ini_change("ban_hit_mob",0)
						if door_if(1021,1759)==0 then
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
						end
					until(door_if(1021,1759)==1)
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",0)
				end
				if (getmapid() == 37706) then
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313032312C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313034302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313036302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313737302C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313738352C313735392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313830302C313735392CD7F3C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3130302C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313032312C313735392CB2BBB1E42C0D0AD4CAD0EDB4F2B9D62CD7F326D3D2CAB12C313737302C313735392CB2BBB1E42C",0)
				end
			until(getmapid() == 37706 or getmapid() ~= 37704 or labelnext==1)
		end
		if (getmapid() == 37705) then
			ini_change("ban_hit_mob",0)
			repeat
				sleep(100)
				ini_change("ban_hit_mob",0)
				if door_if(1021,1759)==0 then
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
				end
			until(door_if(1021,1759)==1)
        end
		if (getmapid() == 37707) then --С����
			ini_change("ban_hit_mob",0)
			item_use(170191135)--����������ҩ
			sleep(100)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",0)
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
				if	door_if(4563,1759)==1 then
					speak("�ſ���")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(2)
					sleep(900)
					jmp(2)
					sleep(900)
					bot_start()
				end
			until( door_if(4563,1759)==1)
        end
		if (getmapid() == 37708) then --��˹
			ini_change("ban_hit_mob",0)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",0)
				if	door_if(6143,1455)==1 then
					speak("�ſ���")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(2)
					bot_start()
				end
			until( door_if(6143,1455)==1)
		end
		if (getmapid() == 37709) then 
			ini_change("ban_hit_mob",0)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",0)
				local mobId = mob_obj_get('����˿��ج��')
				if mobId~=0 then
					ini_change("find_zhiding","����˿��ج��")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				else
					ini_change("find_is_zhiding",0)
					ini_change("find_is_youhao",1)
					ini_change("find_is_ewai",1)
				end
				if	door_if(1790,880)==1 then
					speak("�ſ���")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(2)
					bot_start()
				end
			until( door_if(1790,880)==1)
        end
		if getmapid() == 37710 then 
			ini_change("ban_hit_mob",0)
			repeat
				sleep(200)
				ini_change("ban_hit_mob",0)
				if	door_if(68,1631)==1 then
					speak("�ſ���")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(0)
					bot_start()
				end
			until( door_if(68,1631)==1)
		end
		if getmapid() == 37711 then 
			ini_change("ban_hit_mob",0)
		end
		if (getmapid() == 37712) then
			ini_change("ban_hit_mob",0)
			wearitem("��ţ���Ļƽ��ػ�+4")
			wearitem("Ħ�����Ļƽ��ػ�+4")
			wearitem("��Ů���Ļƽ��ػ�+4")
			wearitem("�Ͻ��Ƕ�")
			wearitem("�ƽ��Ƕ�")
			sleep(10)
			item_use(170191135)--����������ҩ
			sleep(100)
			repeat
				sleep(200)
				local mobId = mob_obj_get('ħ����Ӱ')
				if mobId~=0 then
					ini_change("find_zhiding","ħ����Ӱ")
					ini_change("find_is_zhiding",1)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
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
				else
					ini_change("find_is_zhiding",0)
					ini_change("find_is_youhao",0)
					ini_change("find_is_ewai",0)
				end
				if	door_if(1020,1759)==1 then
					speak("�ſ���")
					bot_stop()
					sleep(500)
					ini_change("ban_hit_mob",1)
					sleep(500)
					jmp(1)
					bot_start()
				end
			until(door_if(1020,1759)==1)
        end
		if (getmapid() == 37713) then
			ini_change("find_zhiding","����")
			ini_change("find_is_zhiding",1)
			ini_change("find_is_youhao",1)
			ini_change("find_is_ewai",1)
			ini_change("ban_hit_mob",0)
			speak("��������,60s���˳�����")
			sleep(60000)
			ini_change("find_is_zhiding",0)
			plane(290)
        end
    end
})