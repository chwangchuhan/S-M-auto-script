check=1

name="ͼ��-����ɯ��ͨ������"
state=0
getbox=0
--1Ҫ���� 0��Ҫ����--
mapname = {"��֮��19��","��֮��9��","��֮��19��","��֮��9��", "��֮��19��","��֮��9��","��֮��19��","��֮��9��","ʯ֮��19��","ʯ֮��9��"}
local function isInMap()
	for i=1,#mapname do
			if getmapname() ==mapname[i] then
				return true
			end
	end
	return false
end

while(true)
do   
	sleep(200)
	ini_change("find_zhiding","����ɳ;ħ������ɳ")
	ini_change("find_is_zhiding",1)
	if not isInMap() then
		state=indun_into("��֮��19��")
		if(state==2) then
			state=indun_into("��֮��9��")
			if(state==2) then
				state=indun_into("��֮��19��")
				if(state==2) then
					state=indun_into("��֮��9��")
					if(state==2) then
						state=indun_into("��֮��19��")
						if(state==2) then
							state=indun_into("��֮��9��")
							if(state==2) then
								state=indun_into("��֮��19��")
								if(state==2) then
									state=indun_into("��֮��9��")
									if(state==2) then
										state=indun_into("ʯ֮��19��")
										if(state==2) then
											state=indun_into("ʯ֮��9��")
											if(state==2) then
												break
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
	end
		
	if(state==1) then
		bot_start()--�����һ�--
	elseif(state==-1) then
		bot_start()--�����һ�--
	elseif(state==0) then
	elseif(state==3) then
		if(useitem("�߼�����������")==0) then
			if(useitem("�м�����������")==0) then
				if(useitem("�ͼ�����������")==0) then
					break
				end
			end
		end
	end
	if(getmapname()=="��֮��19��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="��֮��9��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="��֮��19��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="��֮��9��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="��֮��19��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="��֮��9��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="��֮��19��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="��֮��9��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="ʯ֮��19��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
		end
	end
	if(getmapname()=="ʯ֮��9��") then --�Ѿ������--
		useskill(51801002,0)
		box_if=indun_box_if()--�������״̬--
		if(box_if==0) then
			bot_start()--�����һ�--
		end
		if(box_if==1) then --���ӳ���--
			sleep(500)
			plane(801)
			wait_loadmap()
			break
		end
	end
end
bot_stop()
ini_change("find_is_zhiding",0)
if(state==2) then
	printgame(0,255,0,"��������ʾͨ������"..name.."�Ѿ�ˢ����û��ͨ����ɨ��ָ����~��")
elseif(state==3) then
	printgame(0,255,0,"��������ʾ��ȱ������")
else
	printgame(0,255,0,"     ��������ʾͨ������"..name.."����ɣ�     ")
end
sleep(1000)