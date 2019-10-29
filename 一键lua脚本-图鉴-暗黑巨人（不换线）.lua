check=1

speak('S&M一键脚本提醒您：图鉴-暗黑巨人-不换线')
plane(266)
bot_stop()
ini_change("find_zhiding","暗黑巨人")
ini_change("find_is_zhiding",1)
ini_change("tobot_fastladder ",0)
ini_change("tobot_scriptbot",1)
while(true)
do
	sleep(100)
	mapid_now = getmapid()
		if mapid_now ~= mapid_last --防止加载地图崩溃--
		then
			mapid_last = mapid_now
			if getmapid() == 34403 then
				label1=0
				bot_start()
				script_txt_loaddata("D3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323230302C313334332CB2BBB1E42C0D0AD7F3CCF82CC9CFCCDDD7D32C323534342C3933302CB2BBB1E42C0D0AD7F3CCF82CC9CFCCDDD7D32C323534342C3930302CB2BBB1E42C0D0AD7F3CCF82CC9CFCCDDD7D32C323534342C3835302CB2BBB1E42C",0)
				repeat
					sleep(200)
					if gety()==623 and mob_if('暗黑巨人')==0 then
						sleep(500)
						label1=1
						speak("S&M一键脚本提醒您,白嫖无罪，但是别拿白嫖的来烦我")
					end
				until(label1==1)
				sleep(2000)
				plane(266)
			end
			if getmapid() == 34402 then
				bot_start()
				script_txt_loaddata("D6BBD6B4D0D0B2CECAFD2CD3D2C5DCCAB12C333136372C313334332CB2BBB1E42CCAB9D3C3B7C9BBFA2C323635",0)
			end
		end
end
