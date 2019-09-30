check=1

while(true)
do	
	sleep(1)
	ini_change("tobot_hit_range_max",200)
	ini_change("tobot_hit_range_ignore",300)
	if mob_if("守方宝箱")==1 then
	useskill(9551002,1)
	end
end
