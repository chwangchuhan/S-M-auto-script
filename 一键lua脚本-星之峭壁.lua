check=1

xingzhiqiaobi = {}
xingzhiqiaobi.chname = "��֮�ͱ�" --��������--
xingzhiqiaobi.donum = 20 --��������--
xingzhiqiaobi.buffname = "���Ƶ��ػ�" --BUFF���ƣ�Ϊnil��ʾû��BUFFҪ��----
xingzhiqiaobi.targetthingname = "Ӣ�۽��" --Ŀ��������ƣ�Ϊnil��ʾû����Ҫ�����ĵ���--
xingzhiqiaobi.warning = nil --��ʾ��Ϊnil��ʾû����ʾ--
xingzhiqiaobi.version = "1.1.0.06142" --�汾��--

local function isInMap()
	if getmapid() == 20900.0 
	or getmapid() == 20901.0 
	or getmapid() == 20902.0 
	or getmapid() == 20903.0 then
		return true
	end
	return false
end

local function isNumEnd()
	if indun_get(xingzhiqiaobi.chname) == xingzhiqiaobi.donum 
		and not isInMap() then
		 return true
	end
	
	return false
end

local function planeToEntry()
	if getmapid() ~= 20805.0 then
		plane(124)
		if getmapid() ~= 21000.0 then
			wait_loadmap()
		end
	end
end

local targetthingnum = 0

local function intTargetThingNum()
	if xingzhiqiaobi.targetthingname then
		targetthingnum = item_if(xingzhiqiaobi.targetthingname)
	end
end

local function printTargetThingNum()
	if xingzhiqiaobi.targetthingname then
		printgame(0,255,255,"��ǰ["..xingzhiqiaobi.targetthingname.."]������"..item_if(xingzhiqiaobi.targetthingname))
		printgame(0,255,255,"�����ڻ�ȡ["..xingzhiqiaobi.targetthingname.."]����"..(item_if(xingzhiqiaobi.targetthingname) - targetthingnum))
	end
end

function xingzhiqiaobi.begin()
	bot_stop()--ֹͣ�һ�--

	printgame(0,255,255,"��LuaΪȫ�Զ�["..xingzhiqiaobi.chname.."]"..xingzhiqiaobi.donum.."�� �������ͼ�������� ������ ����5��ʱ��ֹͣ����")
	local printtime = 2000
	sleep(30)
	printtime = printtime - 30
	if xingzhiqiaobi.warning then
		printgame(255,255,0,"��ʾ��"..xingzhiqiaobi.warning)
		sleep(30)
		printtime = printtime - 30
	end

	maketeam()
	sleep(3000)
	
	if isNumEnd() then
		printgame(0,255,255,"["..xingzhiqiaobi.chname.."]��ˢ��"..xingzhiqiaobi.donum.."�Σ���Luaִ�����")
		return
	end

	ini_change("tobot_scriptbot",1)--�����ű��һ�--
	
	if xingzhiqiaobi.buffname then
		if isbuff(xingzhiqiaobi.buffname) == 0 then
			printgame(0,255,255,"��ȡ["..xingzhiqiaobi.buffname.."]BUFF")
			if getmapid() ~= 21001.0 then
				plane(125)
				wait_loadmap()
			end
		elseif isbuff(xingzhiqiaobi.buffname) == 1 then
			if not isInMap() then
				planeToEntry()
			end
		end
	else
		if not isInMap() then
			planeToEntry()
		end
	end

	intTargetThingNum()

	while(true)
	do
		sleep(30)	
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then--��ֹ���ص�ͼ����--
			mapid_last = mapid_now
			if getmapid() == 21001.0 then
				bot_stop()--ֹͣ�һ�--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3738342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3437352C3738342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3230392E35382C3738342E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--�����һ�--
			end

			if getmapid() == 21000.0 then
				bot_stop()--ֹͣ�һ�--
				sleep(1000)
				open_npc(1288)
				sleep(500)
				if request_task(1288,430211003) == -1 and task_get_state(430211003) == 0 then
					sleep(500)
					close_npc(1288)
					printgame(0,255,255,xingzhiqiaobi.chname.."BUFF������")
					return
				end
				sleep(500)
				submit_task(1288,430211003)
				sleep(500)
				close_npc(1288)
				if getmapid() ~= 20805.0 then
					plane(124)
					wait_loadmap()
				end
			end

			if getmapid() == 20805.0 then --���븱��--
				bot_stop()--ֹͣ�һ�--
				ini_change("ban_hit_mob",1)--��ֹ����--
				if isNumEnd() then
					ini_change("tobot_scriptbot", 0)--ֹͣ�ű��һ�--
					ini_change("ban_hit_mob",0)--������--
					sleep(1000)
					printgame(0,255,255,"["..xingzhiqiaobi.chname.."]��ˢ��"..xingzhiqiaobi.donum.."�Σ���Luaִ�����")
					sleep(30)
					printTargetThingNum()
					return
				end
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323632342E30362C3936302CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3936302CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323935352E32372C3936302CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C323731332E32352C3537352E31322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333136372C3537352E31322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323236352E36372C3630372E31322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C313334342E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313234372E34372C313430382E35362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323439352E30372C3936302E3637372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3630352E37322C313430382E31362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323135342E37372C313030322E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
				bot_start()--�����һ�--
			end

			if getmapid() == 20903.0 then
				bot_stop()--ֹͣ�һ�--
				script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C33322C3339392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3336332E322C3339392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3132342E37332C3339392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C", 1)
				bot_start()--�����һ�--
			end

			if getmapid() == 20901.0 then
				bot_stop()--ֹͣ�һ�--
				ini_change("ban_hit_mob",0)--������--
				bot_start()--�����һ�--
				while(true)
				do
					sleep(30)
					if getmapid() ~= 20901.0 then
						break
					end
					
					if door_if(647,848) == 1 then --����ſڳ���û��--
						bot_stop()--ֹͣ�һ�--
						sleep(2000)
						planeToEntry()
						break
					end
				end
			end

			if getmapid() == 20902.0 then
			
			end
		end
	end
end

xingzhiqiaobi.begin()

return xingzhiqiaobi