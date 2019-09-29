check=1

while(true)
do	
	sleep(1)
	ini_change("tobot_hit_range_max",200)
	ini_change("tobot_hit_range_ignore",300)
	if mob_if("初级士兵")==1 or mob_if("高级士兵")==1 then
	useskill(9551011,1)
	end
	if getx()~=2750 and gety()==2911 and getmapid()==83800 then
	gotocoordinate(1,2750,2911)
	end
end
