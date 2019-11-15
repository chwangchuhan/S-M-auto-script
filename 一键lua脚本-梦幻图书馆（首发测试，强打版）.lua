check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

local kill_fengyin = 9455001
local kill_fengyin_buff = "��ʹ�÷�ӡ����"
local kill_mianyi = "������"

local loadScript = function (hex)
    script_txt_loaddata(hex, 0)
end

local killMob = function(mob, killId)
    local mobId = mob_obj_get(mob, killId)
    if (mobId > 0) then
        local mobX = mob_obj_x(mobId)
        local mobY = mob_obj_y(mobId)
        bot_stop()
        gotocoordinate(1, mobX, mobY)
        useskill(killId, 1)
        sleep(200)
        bot_start()
    end
end

common.simpleStart({
    mapName = "�λ�ͼ���",
    mapCount = 3,
    planeId = 98530,
    overtime = 30, --��ʱʱ�䣬/����
    -- ��ͼ�����б������mapIdsһһ��Ӧ
    -- �λ�ͼ���8:33008
    mapIds = {20004, 33000, 33001, 33002, 33003, 33004, 33005, 33006, 33008, 33009, 33011, 33012, 33007},
    scripts = {
        -- ���
        'BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3131302E3837392C313133352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- �λ�ͼ���1
        'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3532372C3238372E3030312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3532372C3238372E3030312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3438382C3534332E3838342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3436302E3030342C313237392E31342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313430302C3837392E39392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323235362C3535392E3437392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C323235362C3535392E3437392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313638302C3535392E3334392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3938382C3534332E3439372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3934302C3837392E3538362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313837392E352C313237392E35392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313936382E352C313237392E35392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- �λ�ͼ���2
        'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3334382C3730332E3433332CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3334382C3730332E3433332CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3330342C3939312E3535332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3633322C3939312E3233322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313238332C3931312E3932322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313032372C3931312E3038322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C313030372C3931312E3734352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C313033352C3931312E3934352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3733372C3635352E3733352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3331362C3238372E3934352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3735322C3238372E3034362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3735322C3238372E3034362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313236382C3339392E3236392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CC9CFCCDDD7D32C323136302C3439372E3637362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3139362C313237392E34392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3139362C313237392E34392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323039392E34372C3633392E3136352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323136302C3634302E3034312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323136302C3634302E3034312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333033312C3637312E3039342CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C333030300D0AD6BBD6B4D0D0B2CECAFD2CD7F3C5DCCAB12C323937312C3637312E3039342CB2BBB1E42CCAB9D3C3BCBCC4DC2C39343535303031',
        -- �λ�ͼ���3
        'D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313330372C313237392E36362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313531352C313237392E37342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313238312C3339392E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313538312C3339392E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323333372C3232332E39322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313934392C3232332E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323735332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323739332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323832352C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323739332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323732352C3335312E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323834392C3335312E342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C333133362C313038372E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323838302C313035352E34382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323635362C313033392E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323539322C3939312E3834312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323632342C313030372E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313936302C313237392E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323235312C3232332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333131312C3135392E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333131312C3135392E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- �λ�ͼ���4
        'D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323339322E38332C313237392E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323535392E38342C313138332E382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C323532312E38332C313138332E382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323132322E38342C313237392E382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323834372E33382C313037312E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323935332E33362C3931312E382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323837362E30362C3931312E382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3135322E31332C3733352E3530382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CC9CFCCDDD7D32C34382C3538362E3832352CD3D2C5DC2CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C323030300D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3539392E3430312C3434372E3437322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323334392E36332C3330332CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313533302E382C3230372E3037392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323435352E38342C3330332E39322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323238352E37382C3330332E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323331362E372C3330332E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323938392E32312C3330332E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323731372E32312C313037312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3131392E37382C3733352E3135382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C313530312E32342C3230382E3337312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313530312E32342C3230382E3337312CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- �λ�ͼ���5
        'D4CAD0EDB4F2B9D62CD3D2C5DCCAB12C3435362C313237392E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD4CAD0EDB4F2B9D62CD7F3C5DCCAB12C3435362C313237392E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C313531362C313237392E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323933362C3338332E3635382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3435322C3831352E3133392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C3435322C3831352E3133392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313139322C3831352E34362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C333039392C3535392E3036382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD3D2C5DCCAB12C333136372C3535392E3036382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD7F3C5DCCAB12C323839392C3730362E3938382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD7F3C5DCCAB12C323735352C3735312E3334382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313930372C3537352E3738352CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323230372C3735312E3536392CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323131362C3735312E3735392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313138342C313237392E30352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333133352E322C313237392E35322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333133352E322C313237392E35322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- �λ�ͼ���6
        'D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323832342E382C313237392E382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333135372C313237392E382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333135372C313237392E382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- �λ�ͼ���7
        'CEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C3137362E3538372C313030372E34342CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C333030300D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3238372E30392C313237392E30342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3831392E3038312C313237392E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3934322E37362C313237392E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3931392E35372C313237392E37362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313135312E34322C313237392E34342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- �λ�ͼ���8
        'D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3231372E35322C3331312E34342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3538372E36342C3334332E39362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3631382E35362C3334332E39362CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C3338342E34352C313235352CB2BBB1E42CD6B4D0D0BAF3B5C8B4FDA3A8BAC1C3EBA3A92C333030300D0AD7F3CCF82CD7F3C5DCCAB12C313738312E33362C313235352E38382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313436342E34332C313235352E38382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313139332E38382C313235352E38382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C3832332E3736312C313235352E38382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C3537362E3934312C313235352E38382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C3832322E3436322C313235352E36382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313234322E32342C313235352E36382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313836352E35372C313235352E36382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313935312E39372C313235352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313832382E32392C313235352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323834312E30362C313033312E37322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3937382E3438372C3935312E3136312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323532322E32382C313033312E34382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323733302E39392C313033312E34382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323930312E30352C313033312E34382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333131322E38392C3537352E3434312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333131322E38392C3537352E3434312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333131322E38392C3537352E3434312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333133362E30382C3537352E3038322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3431352E3734342C313235352E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- ��������
        'D3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C333033312C313236332E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333134372C313231352E31322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333134372C313231352E31322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323631392C313236332E362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- ��������1
        'BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313133322C3633392E3038322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3233352C313237392E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3537392C3931312E3739392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3630372C3931312E3739392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3437392C313033392E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3435392C313033392E36342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3638372C3736372E3135392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C3736372C3736372E3135392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD7F3C5DCCAB12C313137392C313237392E30382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD7F3C5DCCAB12C313738312C3939392E3032382CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313937342C3837312E3930382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323131342C3837312E3930382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313537302C3735392E3132352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313933302C3939392E3633372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- ��������2
        'CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333135322C3435352E3531392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C333135322C3435352E3531392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C333031362C3435352E3531392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACBC9BFAACCDDD7D32CCFC2CCDDD7D32C333135322C3631352E3530392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323936382C313239352E31342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CC9CFCCDDD7D32C333135322C3734352E3632372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333039362C3134332E3832352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333039362C3134332E3832352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323436302C3435352E3334352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',
        -- ����
        'D6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C3939393030330D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303130370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303130370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831303630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831313630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831323630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831353630370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831373030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831383030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831393030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333230370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830363830370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831363830370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343030370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333730370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333730370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830333230360D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831333230360D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333830343330370D0AD6BBD6B4D0D0B2CECAFD2CD7F326D3D2CAB12C3636302C313236332CB2BBB1E42CCAB9D3C3BCBCC4DC2C333831343330370D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3832382C313236332E30382CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C',
    },
    tasks = {},
    onScriptWhileCallback = function ()
        local mapId = getmapid()
        local x = getx()
        local y = gety()

        -- ͼ���1
        if (mapId == 33000) then
            if (not common.checkMob({"͵����", "ɳ̲��è��"}))then
                loadScript('D3D2CCF82CD3D2C5DCCAB12C313434332C313237392E352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323938302C313237392E38392CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C323838382C3931312E3939372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323838382C3931312E3939372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C')
            else
                if (common.checkMob('͵����')) then
                    -- ��͵�����߼�
                    loadScript('CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C3532372C3238372E3030312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C3532372C3238372E3030312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3438382C3534332E3838342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3436302E3030342C313237392E31342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C313430302C3837392E39392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C323235362C3535392E3437392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82CD3D2C5DCCAB12C323235362C3535392E3437392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACFC2C5C0CCDDD7D32CD7F3C5DCCAB12C313638302C3535392E3334392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C3938382C3534332E3439372CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C3934302C3837392E3538362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313837392E352C313237392E35392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313936382E352C313237392E35392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C')
                elseif (x >= 1800 and x <= 3167 and y == 1279) then
                    if (common.checkBuff(kill_fengyin_buff)) then
                        killMob('ɳ̲��è��', kill_fengyin)
                    end
                else
                    -- Ѱ��ӡ�߼�
                    loadScript('D3D2CCF82CD3D2C5DCCAB12C313434332C313237392E352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C')
                end
            end
        end

        -- ͼ���2
        if (mapId == 33001) then
            if (door_if(3151, 1279) == 1) then
                loadScript('CEBBD6C3B6A8CEBB2CD3D2C5DCCAB12C333135312C313237392E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C333135312C313237392E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313739322C313237392E30342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C')
            else
                if (not common.checkMob({"͵����"}))then
                    if (y == 1279 and common.checkBuff(kill_fengyin_buff)) then
                        killMob('�ɷ�ӡ�ķ����ء�', kill_fengyin)
                    end
                end
            end
        end

        -- ͼ���3
        if (mapId == 33002) then
            if (getjmpheight() >= 390 and getjmpheight() <= 425) then
                loadScript('D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313330372C313237392E36362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313531352C313237392E37342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313238312C3339392E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313538312C3339392E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323333372C3232332E39322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313934392C3232332E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323735332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323739332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323832352C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323739332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323732352C3335312E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323834392C3335312E342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C333133362C313038372E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323838302C313035352E34382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323635362C313033392E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323539322C3939312E3834312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323632342C313030372E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313936302C313237392E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323230302C3232332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333131312C3135392E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333131312C3135392E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C')
            end

            if (getjmpheight() > 425) then
                loadScript('D6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313330372C313237392E36362CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C313531352C313237392E37342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313238312C3339392E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C313538312C3339392E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323333372C3232332E39322CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313934392C3232332E39322CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323135372C3232332E39322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323735332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323739332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323832352C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82CD3D2C5DCCAB12C323739332C3335312E342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323732352C3335312E342CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323834392C3335312E342CD7F3C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C333133362C313038372E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323838302C313035352E34382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323635362C313033392E35362CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323539322C3939312E3834312CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C323632342C313030372E38342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD7F3CCF82CD7F3C5DCCAB12C313936302C313237392E33322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333131312C3135392E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333131312C3135392E30342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C')
            end
        end

        -- ͼ���4
        if (mapId == 33003) then
            if (y == 1279 and x < 2252) then
                ini_change("ban_hit_mob", 1) -- ����������
            else
                ini_change("ban_hit_mob", 0) -- ��������
            end

            if (y > 205 and y < 210 and not checkMob('����')) then
                ini_change("ban_hit_mob", 1) -- ����������
            else
                ini_change("ban_hit_mob", 0) -- ��������
            end

            if (y < 500 and y > 400 and x <= 1000 and not checkMob("����") and not checkMob('����ħ����ʿ��ͽ��')) then
                ini_change("ban_hit_mob", 1) -- ����������
            else
                ini_change("ban_hit_mob", 0) -- ��������
            end

            if (y == 303 and x > 2400) then
                bot_stop()
                gotocoordinate(1, 2360, 303)
                bot_start()
            end

            if (y >= 597 and y <= 601 and x>= 1651 and x <= 2267) then
                bot_start()
            end

            if (y >= 878 and y <= 880 and x>=652 and x <= 1931) then
                bot_start()
            end
        end

         -- ͼ���5
         if (mapId == 33004) then
            -- ini_change("ban_hit_mob", 0) -- ��������

            if (y > 749 and y < 760 and x > 1950 and not checkMob("����")) then
                -- �������Ͻǿ�
                ini_change('tobot_hit_range_max', 1000)

               -- TODO
                -- if (common.checkMob("����ħ����ʿ��ͽ��")) then
                --     speak(123)
                --     ini_change('tobot_hit_range_max', 2000)
                -- else
                --     speak(456)
                --     ini_change('tobot_hit_range_max', 151)
                --     jmp(0)
                -- end
            end

            if (y <= 250) then
                ini_change('tobot_hit_range_max', 151)
                ini_change("ban_hit_mob", 1) -- ����������
            else
                ini_change("ban_hit_mob", 0) -- ��������
            end
        end

        -- ͼ���7
        if (mapId == 33006) then
            -- ����ʦ
            if (x >= 1120 and common.checkMob({"��è����ʦ��"}) and common.checkBuff(kill_fengyin_buff)) then
                killMob('��è����ʦ��', kill_fengyin)
            end

            if (x >= 1120 and common.checkMob({"�������"})) then
                ini_change("ban_hit_mob", 1) -- ����������
                -- killMob('�������', kill_fengyin)

                while (common.checkMob({"�������"})) do
                    sleep(2)
                    if (common.checkMobIsAside('�������', 20, 100)) then
                        bot_stop()
                        sleep(3000)
                        bot_start()
                        sleep(3000)
                    else
                        -- sleep(2000)
                        -- bot_start()
                    end
                end
            end
        end

        -- ͼ���8
        if (mapId == 33008) then
            -- վ����ȡbuf
            if (x >= 339 and x <= 1014 and y >= 940 and y <=980) then
                if (not common.checkBuff(kill_mianyi)) then
                    speak('����buff��ȡ��...')
                    bot_stop()
                else
                    speak('������ȡ��(*�����)')
                    bot_start()
                end
            end

            if (y <= 400) then
                bot_start()
            end
        end

        -- ��������2
        if (mapId == 33012) then
            if (door_if(3039, 143) == 1) then
                loadScript('CBC9BFAACCDDD7D32CCFC2CCDDD7D32C333135322C3631352E3530392CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323936382C313239352E31342CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CC9CFCCDDD7D32C333135322C3734352E3632372CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ACEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C333039362C3134332E3832352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333039362C3134332E3832352CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323436302C3435352E3334352CD3D2C5DC2CC3BBD3D0B8BDBCD3B2CECAFD2C0D0AD3D2CCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C333030332C3435352E322CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 1)
            end
        end

        if (mapId == 33007) then
            if (not common.checkMob({'��������'})) then
                loadScript('CEBBD6C3B6A8CEBB2CD7F3C5DCCAB12C313538322C313236332E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313538322C313236332E30382CB2BBB1E42CC3BBD3D0B8BDBCD3B2CECAFD2C', 1)
            end
        end
    end,
    onScriptRound = function ()
        local mapId = getmapid()

        if (mapId ~= 33004) then
            ini_change('tobot_hit_range_max', 151)
        end

        if (mapId == 33005 or mapId == 33008) then
            ini_change("ban_hit_mob", 1) -- ����������
        end

        if (mapId == 33006) then
            ini_change("ban_hit_mob", 0) -- ��������
        end

        if (mapId == 33009 ) then
            ini_change("ban_hit_mob", 0) -- ��������
        end
    end,
})
























