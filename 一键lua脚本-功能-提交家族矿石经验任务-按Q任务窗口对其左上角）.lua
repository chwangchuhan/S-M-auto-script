check=1

speak('S&M一键脚本提醒您：功能lua-提交家族矿石经验任务，按Q，将任务矿口对其左上角,在此，你有10秒操作时间')
sleep(10000)
plane(70)
bot_stop()
sleep(1000)
while(true)
do	
	sleep(10)
	speak('S&M一键脚本提醒您：功能lua-提交家族经验任务，白嫖怪无敌')
	if item_if(190190201)~=0 then
		item_use(190190201)
		sleep(10)
		script_mouse_load("..\\S-M-auto-script\\mouse\\接家族矿石经验任务.txt")
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
		script_mouse_load("..\\S-M-auto-script\\mouse\\接家族矿石经验任务.txt")
		sleep(10)
		open_npc(102)
		sleep(10)
		submit_task(102,1112045)
		sleep(10)
		close_npc(102)
		sleep(10)
	end
	if item_if(190190201)==0 and item_if(190190202)==0 then
		speak("没有家族矿石任务，lua结束")
		break
	end
end
