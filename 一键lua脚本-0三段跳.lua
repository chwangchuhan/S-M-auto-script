check=1

lingsanduantiao = {}

local function isInMap()
	if getmapid() == 63400
	or getmapid() == 92901
	or getmapid() == 93000 then
		return true
	end
	return false
end

local function isitem()
	if item_if("天使之泪")~=0 then --有没有天使之泪--
		return true
	end
	printgame(0,255,0,"没有[天使之泪] 此Lua结束")
	return false
end

function lingsanduantiao.begin()
	bot_stop()--停止挂机--

	sleep(3000)
	if not isitem() then
		return
	end
	
	
	
	if not isInMap() then
		plane(747)--传送到塞丽娜城--
		sleep(3000)
		script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353534372E36392C313439352E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363336312C313439352E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313430332E37332C323730332E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313333342E35342C323436332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313438302E33322C323232332E37362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313438302E33322C323031352E36382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313433342E36362C313737352E32382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313338312E38322C313438372E34382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3838322E3039342C313337352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3737312E3737332C313135312E33322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3639362E3931332C3932372E37362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3830372E3233332C3637312E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3637312E3834342C3439352E30342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313035322E34332C3439352E30342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3739362E3232382C3439352E3830312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C343730332E32332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C343439352E37392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C343235352E39362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C333939392E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C333735392E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C3638392E3339382C333435352E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3334332E32382C333032362E33362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C3334332E32382C333032362E33362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C37392E35322C333037322E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3135302E382C333037322E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3230362E32342C333036302E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3238352E34342C333034302E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C",2)
	end
	
	bot_start()--启动挂机--
	
	while(true)
	do
		mapid_now = getmapid()
		if mapid_now ~= mapid_last then--防止加载地图崩溃--
			mapid_last = mapid_now
			if (getmapid() == 63400 or getmapid()==92901 )then
				ini_change("ban_hit_mob",1)
                script_txt_loaddata("D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353534372E36392C313439352E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C363336312C313439352E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313430332E37332C323730332E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313333342E35342C323436332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313438302E33322C323232332E37362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313438302E33322C323031352E36382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313433342E36362C313737352E32382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C313338312E38322C313438372E34382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3838322E3039342C313337352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3737312E3737332C313135312E33322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3639362E3931332C3932372E37362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3830372E3233332C3637312E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C3637312E3834342C3439352E30342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313035322E34332C3439352E30342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3739362E3232382C3439352E3830312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C343730332E32332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C343439352E37392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C343235352E39362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C333939392E362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C3935312E3539382C333735392E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C3638392E3339382C333435352E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3334332E32382C333032362E33362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C3334332E32382C333032362E33362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C37392E35322C333037322E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3135302E382C333037322E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3230362E32342C333036302E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F326D3D2CAB12C3238352E34342C333034302E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C", 2)
			end

			if(getmapid()==93000)then
				bot_stop()--停止挂机--
				sleep(3000)
				open_npc(700059)
				request_task(700059,5180015)
				sleep(1000)
				submit_task(700059,5180015)
				close_npc(700059)
				sleep(1000)
				item_wear("超级飞翔石(12小时)")
				sleep(100)
				item_wear("超级飞翔石(12小时)")
				sleep(100)
				speak("已经领取[超级飞翔石(12小时)]")
				ini_change("ban_hit_mob",0)
				return
			end
		end
	end
end
lingsanduantiao.begin()

return lingsanduantiao