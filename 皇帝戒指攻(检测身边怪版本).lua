check=1

speak('SMһ���ű������������ڹ�����ͼ��ʹ�ô˽ű�')

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

while(true)
do	
	sleep(10)

	local x = getx()
	local y = gety()


	ini_change("tobot_hit_range_max",200)
	ini_change("tobot_hit_range_ignore",300)

	if (getmapid() == 83800 and x ~= 2750 and y == 2911 ) then
		gotocoordinate(1,2750,2911)
	end

	

	if (common.checkMobIsAside('����ʿ��', 500, 100)) then
		useskill(9551011,1)
	end

	if (common.checkMobIsAside('�߼�ʿ��', 500, 100)) then
		useskill(9551011,1)
	end
end
