while(true)
do	
	sleep(1)
	local mobId = mob_obj_get('守方宝箱')
	local mobX = mob_obj_x(mobId)
	local mobY = mob_obj_y(mobId)
	local px = getx()
	local py = gety()
	if( mobX-px<200 and py == mobY ) or (px-mobX <200 and py == mobY )then
	useskill(9551002,1)
	end
end
