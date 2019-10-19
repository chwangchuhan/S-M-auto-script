check = 1

speak('SM一键脚本提醒您：请在守方地图中使用此脚本，且请跑位到宝箱附近')

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

while(true)
do	
	sleep(10)

	local x = getx()
	local y = gety()

	if (common.checkMobIsAside('守方宝箱', 300, 50)) then
		useskill(9551002,1)
	end
end
