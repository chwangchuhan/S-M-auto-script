check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")
 
common.simpleStart({
    mapName = "����ս��",
    mapCount = 1,
    planeId = 123,
    -- ��ͼ�����б����mapIdsһһ��Ӧ
    mapIds = {63400,93600},

    -- �ű������б����mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
	isLuckyDog = true,
    scripts = {
        "",
        "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3332312C313236332CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3330362C313236332CB2BBB1E42C",
        "",
        "",
        "",
    },
    -- �����б�
    -- ���������ת����Ӧ��ͼʱִ�У������mapId��δ���û��߳�ʼ�ɻ���������ص����޷���ȡ����
    -- ��ͬnpc��ͬ��ͼ�����������ö��task
    tasks = {},
	 onScriptRound = function (config) -- ����ÿ���л���ͼ�ص�
		if(getmapid()==63400)then
			bot_stop()
			sleep(100)
			open_npc(700074)
			sleep(10)
			request_task(700074,5180057)
			sleep(10)
			submit_task(700074,5180057)
			sleep(10)
			close_npc(700074)
			sleep(10)
			if isbuff("����ս��������") == 1 then
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353538362E35372C313439352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C363336372C313439352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C353934332E35342C313439352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C343339342E36342C313339322E37362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C353934332C313239352E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
				bot_start()--�����һ�--
			else
				speak("����ս��1Сʱ�Ѿ�ˢ�ꡣ")
				plane(70)
			end
		end
		if getmapid() == 93600 then
			repeat
				sleep(200)
				local mobId = mob_obj_get('Ӣ���� ̩��ŷ˹')
				if mobId~=0 then
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
										--item_use(611113089)  --��󹥻�����
										sleep(100)
										if isbuff('����Ч��')==0 then --����
											--item_use(611113088)  --�����������
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
												
											end
										end
									end
								end
							end
						end
					end
				end
			until(door_if(320,1263)==1)
		end
    end
})
 