check=1

speak('S&Mһ���ű���������ͼ��-���ھ���-������')
plane(266)
bot_stop()
ini_change("find_zhiding","���ھ���")
ini_change("find_is_zhiding",1)
ini_change("tobot_fastladder ",1)
ini_change("tobot_scriptbot",1)
while(true)
do
	sleep(100)
	ini_change("tobot_fastladder ",1)
	mapid_now = getmapid()
		if mapid_now ~= mapid_last --��ֹ���ص�ͼ����--
		then
			mapid_last = mapid_now
			if getmapid() == 34403 then
				label1=0
				bot_start()
				script_txt_loaddata("D3D2CCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C323230302C313334332CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C323730302C3736372CD7F3C5DC2C",0)
				repeat
					sleep(200)
					if gety()==623 and mob_if('���ھ���')==0 then
						sleep(1000)
						if gety()==623 and mob_if('���ھ���')==0 then
							sleep(500)
							label1=1
							speak("S&Mһ���ű�������,����������Ǳ��ð��ε�������")
						end
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
