check = 1

speak('SMһ���ű��������������ط���ͼ��ʹ�ô˽ű���������λ�����丽��')

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

while(true)
do	
	sleep(10)

	local x = getx()
	local y = gety()

	if (common.checkMobIsAside('�ط�����', 300, 50)) then
		useskill(9551002,1)
	end
end
