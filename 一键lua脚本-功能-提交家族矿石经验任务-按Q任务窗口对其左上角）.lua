check=1

speak('S&Mһ���ű�������������lua-�ύ�����ʯ�������񣬰�Q���������ڶ������Ͻ�,�ڴˣ�����10�����ʱ��')
sleep(10000)
plane(70)
bot_stop()
sleep(1000)
while(true)
do	
	sleep(10)
	speak('S&Mһ���ű�������������lua-�ύ���徭�����񣬰��ι��޵�')
	if item_if(190190201)~=0 then
		item_use(190190201)
		sleep(10)
		script_mouse_load("..\\S-M-auto-script\\mouse\\�Ӽ����ʯ��������.txt")
		sleep(10)
		open_npc(102)
		sleep(10)
		submit_task(102,1112044)
		sleep(10)
		close_npc(102)
		sleep(10)
	end
	if item_if(190190202)~=0 then
		item_use(190190202)
		sleep(10)
		script_mouse_load("..\\S-M-auto-script\\mouse\\�Ӽ����ʯ��������.txt")
		sleep(10)
		open_npc(102)
		sleep(10)
		submit_task(102,1112045)
		sleep(10)
		close_npc(102)
		sleep(10)
	end
	if item_if(190190201)==0 and item_if(190190202)==0 then
		speak("û�м����ʯ����lua����")
		break
	end
end
