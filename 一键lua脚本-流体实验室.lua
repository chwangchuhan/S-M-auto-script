check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "����ʵ����",
    mapCount = 1,
    planeId = 19865,
    -- ��ͼ�����б������mapIdsһһ��Ӧ
    mapIds = {86403,86500,86501,86502,86503,86504,86505,86506,86507,86508,86509,86510,86511,86512,86513,86514},
    overtime = 30, --��ʱʱ�䣬/����
    endMapIds = {86514}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },

    -- �ű������б������mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323332302C313532302CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323334302C313532302CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323336302C313532302CB2BBB1E42C",
       -- ����1
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3139332E3433372C313530342E33322CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3738312E31362C313131392E33322CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313335382E35322C3338332E3538312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313233322E39322C3338332E3538312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323336372E34322C313236332E34322CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323439352E32362C313133352E332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323735312E36312C3837392E3138312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323632332E34352C313030372E31382CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333133302E32322C3735312E3534312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131332E34342C3139312E322CD3D2C5DC2C",
       -- ����2
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3139332E3433372C313530342E33322CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3738312E31362C313131392E33322CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313335382E35322C3338332E3538312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313233322E39322C3338332E3538312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323336372E34322C313236332E34322CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323439352E32362C313133352E332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323735312E36312C3837392E3138312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323632332E34352C313030372E31382CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333133302E32322C3735312E3534312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131332E34342C3139312E322CD3D2C5DC2C",
       -- ����3
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3139332E3433372C313530342E33322CD7F3C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C3738312E31362C313131392E33322CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F326D3D2CAB12C313335382E35322C3338332E3538312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313233322E39322C3338332E3538312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323336372E34322C313236332E34322CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323439352E32362C313133352E332CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323735312E36312C3837392E3138312CD3D2C5DC2C0D0AD3D2CCF82CD7F326D3D2CAB12C323632332E34352C313030372E31382CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C333133302E32322C3735312E3534312CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333037332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333039332E34342C3139312E322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333131332E34342C3139312E322CD3D2C5DC2C",
       -- ����4
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3534322E3038312C313530342E37382CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3234302C3932372CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323933302E30322C3932372E3833362CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323631352E332C313530342E33322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038312E352C313530342E36372CD3D2C5DC2C",
       -- ����5
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3534322E3038312C313530342E37382CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3234302C3932372CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323933302E30322C3932372E3833362CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323631352E332C313530342E33322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038312E352C313530342E36372CD3D2C5DC2C",
       -- ����6
       "D7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C3534322E3038312C313530342E37382CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C3234302C3932372CD3D2C5DC2C0D0AC9CFCCF8A3A8B6E0B6CECCF8A3A92CD3D2C5DCCAB12C323933302E30322C3932372E3833362CD7F3C5DC2C0D0AD7F3CCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323631352E332C313530342E33322CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038312E352C313530342E36372CD3D2C5DC2C",
       -- ����7
       "C9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3732302C3637312CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313535322C3637312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C38302C313138332CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C313530342CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3939312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3238372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323530332E37362C3238372E3832382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532332E37362C3238372E3832382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323534332E37362C3238372E3832382CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323730302C3939312CD7F3C5DC2C",
       -- ����8
       "C9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3732302C3637312CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313535322C3637312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C38302C313138332CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C313530342CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3939312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3238372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323530332E37362C3238372E3832382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532332E37362C3238372E3832382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323534332E37362C3238372E3832382CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323730302C3939312CD7F3C5DC2C",
	   -- ����9
	   "C9CFCCF82BC9CFC5C0CCDDD7D32CD7F326D3D2CAB12C3732302C3637312CD3D2C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C313535322C3637312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD7F326D3D2CAB12C38302C313138332CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C313530342CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3939312CD7F3C5DC2C0D0ACFC2C5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3238372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323530332E37362C3238372E3832382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323532332E37362C3238372E3832382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323534332E37362C3238372E3832382CD3D2C5DC2C0D0AD7F3CCF8A3A8B6E0B6CECCF8A3A92CD7F3C5DCCAB12C323730302C3939312CD7F3C5DC2C",
	   -- ����10
	   "C9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C313530342CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C3939312CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3637312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C3335312E3432322CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313231332E30322C3638382E3930322CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3536352C3335322E3932332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3138352C3939322E3838332CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3433302C3939322E32322CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3939322CD3D2C5DC2C",
	   -- ����11
	   "C9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C313530342CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C3939312CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3637312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C3335312E3432322CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313231332E30322C3638382E3930322CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3536352C3335322E3932332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3138352C3939322E3838332CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3433302C3939322E32322CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3939322CD3D2C5DC2C",
	   -- ����12
	   "C9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C313530342CD7F3C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD7F3C5DCCAB12C323630382C3939312CD3D2C5DC2C0D0AC9CFCCF82BC9CFC5C0CCDDD7D32CD3D2C5DCCAB12C323839362C3637312CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323030302C3335312E3432322CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C313231332E30322C3638382E3930322CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3536352C3335322E3932332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C3138352C3939322E3838332CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3433302C3939322E32322CD3D2C5DC2C0D0AD3D2CCF8A3A8B6E0B6CECCF8A3A92CD7F326D3D2CAB12C33322C3939322CD3D2C5DC2C",
	   -- ����13
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313539392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633392E33382C313530342E37322CB2BBB1E42C",
	   -- ����14
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313539392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633392E33382C313530342E37322CB2BBB1E42C",
	   -- ����15
	   "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313539392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313630392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313631392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313632392E33382C313530342E37322CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313633392E33382C313530342E37322CB2BBB1E42C",
	   -- ����16
	   "",
	   -- ����17
	   "",
	},
	labeldun=0,
	 onScriptRound = function (config) -- ����ÿ���л���ͼ�ص�
		if (getmapid() == 86403) then
			if config.labeldun==1 then
				return true
			end
		end
		if (getmapid() == 86512) then
			ini_change("find_youhao","��¡;���صģ�����������ҵ��������5�빥��һ�Σ�һ��1��;�޵�_SMG;��������;Guardian;DS-SL1;�������������;;��ɱ������1;��ɱ������2;������ʧ1������;������ʧ2������;������ʧ3������;������ʧ4������;���ƶ�������;����Ծ������;������������;��MHP������;�ж�������;������ʧ5������;��1����ʧ������;��2����ʧ������;��3����ʧ������;��4����ʧ������;��5����ʧ������;��6����ʧ������;��������5������;��BOSSһ��������;������ʧ��Ⱦ��;�����Ƶ���������;һ����ը��ը��;����������;�Ӳ�;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;???? ???;���̣���;���ƣ���;����;BOSS�����͹�;С��5;����5;����3;С��3;Ұ��������;BOSS�������;BOSS����������;����С����1��7��;С������46���ʱ��;���֣�����Ƶ�ʸ�;����ģ����;������;���������Ĵ�è;?? ???;��������������;��è����2Lv;���������;���湥���֣��ٻ���;�������ٻ���;ӣ����Ů;����ӳ�;�۷�;��ɱBOSS2����������;ΪBoss1������������;����;ΪBoss2������������;����������;���湥����;�������;�����ٶ�������;ը��;???? ???;С���ٻ�������;��ɱ���ܹ�3�ٻ�������;��è����;Сʦ��;��ѧ��ͽ;Сʦ��;��ʦ��;ʦ��;ʦ��;DS-SL1;DS-G3648;DS-RG52;?? ???;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;��� Ӱ��;��è 3Lv;��è 6Lv;��è 5Lv;��è 4Lv;��è 2Lv;����õ�巴��������;õ�巴��������;???;ŷ�����ĳ�������;????? ??;����������;����ҳ����˺���������;��ȼ������;������;��ˮ�����֣��ٻ���;��ˮ����ٻ���;�����õ��;���;����ΪBoss1����ӷ���������;����ΪBoss1������������;���湥����;�������;���߹��ܹ�4����ɱbuff������;��ɱ����ǽ������;��ɱboss1����������;boss2�����ٻ�������;���ܹ�2�����ٻ�������;����;���ܹ�1�ٻ�������;��ɱ���ܹ�3�ٻ�������;С���ٻ�������;���һ���ٻ�1;���׶ι���;���һ���ٻ�3;�������ٻ�1;�������ٻ�4;�������ٻ�3;�������ٻ�2;��������ٻ�1;��������ٻ�6;��������ٻ�5;̽�ռҳɹ��ٻ�;�������ٻ�7;�������ٻ�6;�������ٻ�5;��������ٻ�2;��������ٻ�5;���һ���ٻ�2;���һ���ٻ�4;���һ���ٻ�5;���һ���ٻ�6;ˮ���󶴼�ʱ��;��������ٻ�3;��Ԫ��;Ԫ��������;ˮԪ��;��Ԫ��;��ɱ������;������ɱ������;�����ɱ������1;���1;���2;���3;�����ɱ������2;�������������;??? ?? ??;Ŧ���¹�������С������;������;��ɱ������1;ʱ�ճ���;��ɱ�Ƿ���;������è��²;��צ;~��Դ~;�Ӳ�;ɱ������������;�ʼҴ��ڴ��;��ȼ������;Ӱ�� ͸����;����������;�����ҵĻ���;��ɫ������;���ҵ���Ļ���;��ɫ�����ң�;�м��ɱ��С��������5;С��5;����ʯͷ5;Ұ���������;���ų����ٳ���������5������5��ʯͷ�ִ��ٻ���������BUFF��;���ų����ٳ���������3������3��ʯͷ�ִ��ٻ���������BUFF��;����С����һֻҰ���������ͷͷ;����5;����3;С��3;�м��С���ٻ���5;����С����һֻҰ����ͷͷ;�м��С���ٻ���3;����С����һֻҰ��������ͷͷ;�̳أ�С�֣�;�Ƴأ�С�֣�;Ұ��������;Ұ��������;Ұ����;�������м�� 5S;ɱ��С��������5;�м��С��5;���أ�С�֣�;�м��ɱ��С��������3;����ʯͷ3;���ͼ���;??????? ??? ??;���̣���;���ƣ���;BOSS�����͹�;BOSS�����������;а�����;0;ȥ��BOSS�ӳɵ���Ȫ;�������ٻ���;����������;ը��;�����ٶ�������;ʯԪ��;�����ͽ;���ӥ;ˮ�ù�������;ˮ���ϰ�;")
        end
		if (getmapid() == 86513) then
			ini_change("find_youhao","���صģ�����������ҵ��������5�빥��һ�Σ�һ��1��;�޵�_SMG;��������;Guardian;DS-SL1;�������������;;��ɱ������1;��ɱ������2;������ʧ1������;������ʧ2������;������ʧ3������;������ʧ4������;���ƶ�������;����Ծ������;������������;��MHP������;�ж�������;������ʧ5������;��1����ʧ������;��2����ʧ������;��3����ʧ������;��4����ʧ������;��5����ʧ������;��6����ʧ������;��������5������;��BOSSһ��������;������ʧ��Ⱦ��;�����Ƶ���������;һ����ը��ը��;����������;�Ӳ�;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;???? ???;���̣���;���ƣ���;����;BOSS�����͹�;С��5;����5;����3;С��3;Ұ��������;BOSS�������;BOSS����������;����С����1��7��;С������46���ʱ��;���֣�����Ƶ�ʸ�;����ģ����;������;���������Ĵ�è;?? ???;��������������;��è����2Lv;���������;���湥���֣��ٻ���;�������ٻ���;ӣ����Ů;����ӳ�;�۷�;��ɱBOSS2����������;ΪBoss1������������;����;ΪBoss2������������;����������;���湥����;�������;�����ٶ�������;ը��;???? ???;С���ٻ�������;��ɱ���ܹ�3�ٻ�������;��è����;Сʦ��;��ѧ��ͽ;Сʦ��;��ʦ��;ʦ��;ʦ��;DS-SL1;DS-G3648;DS-RG52;?? ???;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;��� Ӱ��;��è 3Lv;��è 6Lv;��è 5Lv;��è 4Lv;��è 2Lv;����õ�巴��������;õ�巴��������;???;ŷ�����ĳ�������;????? ??;����������;����ҳ����˺���������;��ȼ������;������;��ˮ�����֣��ٻ���;��ˮ����ٻ���;�����õ��;���;����ΪBoss1����ӷ���������;����ΪBoss1������������;���湥����;�������;���߹��ܹ�4����ɱbuff������;��ɱ����ǽ������;��ɱboss1����������;boss2�����ٻ�������;���ܹ�2�����ٻ�������;����;���ܹ�1�ٻ�������;��ɱ���ܹ�3�ٻ�������;С���ٻ�������;���һ���ٻ�1;���׶ι���;���һ���ٻ�3;�������ٻ�1;�������ٻ�4;�������ٻ�3;�������ٻ�2;��������ٻ�1;��������ٻ�6;��������ٻ�5;̽�ռҳɹ��ٻ�;�������ٻ�7;�������ٻ�6;�������ٻ�5;��������ٻ�2;��������ٻ�5;���һ���ٻ�2;���һ���ٻ�4;���һ���ٻ�5;���һ���ٻ�6;ˮ���󶴼�ʱ��;��������ٻ�3;��Ԫ��;Ԫ��������;ˮԪ��;��Ԫ��;��ɱ������;������ɱ������;�����ɱ������1;���1;���2;���3;�����ɱ������2;�������������;??? ?? ??;Ŧ���¹�������С������;������;��ɱ������1;ʱ�ճ���;��ɱ�Ƿ���;������è��²;��צ;~��Դ~;�Ӳ�;ɱ������������;�ʼҴ��ڴ��;��ȼ������;Ӱ�� ͸����;����������;�����ҵĻ���;��ɫ������;���ҵ���Ļ���;��ɫ�����ң�;�м��ɱ��С��������5;С��5;����ʯͷ5;Ұ���������;���ų����ٳ���������5������5��ʯͷ�ִ��ٻ���������BUFF��;���ų����ٳ���������3������3��ʯͷ�ִ��ٻ���������BUFF��;����С����һֻҰ���������ͷͷ;����5;����3;С��3;�м��С���ٻ���5;����С����һֻҰ����ͷͷ;�м��С���ٻ���3;����С����һֻҰ��������ͷͷ;�̳أ�С�֣�;�Ƴأ�С�֣�;Ұ��������;Ұ��������;Ұ����;�������м�� 5S;ɱ��С��������5;�м��С��5;���أ�С�֣�;�м��ɱ��С��������3;����ʯͷ3;���ͼ���;??????? ??? ??;���̣���;���ƣ���;BOSS�����͹�;BOSS�����������;а�����;0;ȥ��BOSS�ӳɵ���Ȫ;�������ٻ���;����������;ը��;�����ٶ�������;ʯԪ��;�����ͽ;���ӥ;ˮ�ù�������;ˮ���ϰ�;")
        end
		if (getmapid() == 86514) then
			config.labeldun=1
			ini_change("find_youhao","���صģ�����������ҵ��������5�빥��һ�Σ�һ��1��;�޵�_SMG;��������;Guardian;DS-SL1;�������������;;��ɱ������1;��ɱ������2;������ʧ1������;������ʧ2������;������ʧ3������;������ʧ4������;���ƶ�������;����Ծ������;������������;��MHP������;�ж�������;������ʧ5������;��1����ʧ������;��2����ʧ������;��3����ʧ������;��4����ʧ������;��5����ʧ������;��6����ʧ������;��������5������;��BOSSһ��������;������ʧ��Ⱦ��;�����Ƶ���������;һ����ը��ը��;����������;�Ӳ�;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;???? ???;���̣���;���ƣ���;����;BOSS�����͹�;С��5;����5;����3;С��3;Ұ��������;BOSS�������;BOSS����������;����С����1��7��;С������46���ʱ��;���֣�����Ƶ�ʸ�;����ģ����;������;���������Ĵ�è;?? ???;��������������;��è����2Lv;���������;���湥���֣��ٻ���;�������ٻ���;ӣ����Ů;����ӳ�;�۷�;��ɱBOSS2����������;ΪBoss1������������;����;ΪBoss2������������;����������;���湥����;�������;�����ٶ�������;ը��;???? ???;С���ٻ�������;��ɱ���ܹ�3�ٻ�������;��è����;Сʦ��;��ѧ��ͽ;Сʦ��;��ʦ��;ʦ��;ʦ��;DS-SL1;DS-G3648;DS-RG52;?? ???;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;��� Ӱ��;��è 3Lv;��è 6Lv;��è 5Lv;��è 4Lv;��è 2Lv;����õ�巴��������;õ�巴��������;???;ŷ�����ĳ�������;????? ??;����������;����ҳ����˺���������;��ȼ������;������;��ˮ�����֣��ٻ���;��ˮ����ٻ���;�����õ��;���;����ΪBoss1����ӷ���������;����ΪBoss1������������;���湥����;�������;���߹��ܹ�4����ɱbuff������;��ɱ����ǽ������;��ɱboss1����������;boss2�����ٻ�������;���ܹ�2�����ٻ�������;����;���ܹ�1�ٻ�������;��ɱ���ܹ�3�ٻ�������;С���ٻ�������;���һ���ٻ�1;���׶ι���;���һ���ٻ�3;�������ٻ�1;�������ٻ�4;�������ٻ�3;�������ٻ�2;��������ٻ�1;��������ٻ�6;��������ٻ�5;̽�ռҳɹ��ٻ�;�������ٻ�7;�������ٻ�6;�������ٻ�5;��������ٻ�2;��������ٻ�5;���һ���ٻ�2;���һ���ٻ�4;���һ���ٻ�5;���һ���ٻ�6;ˮ���󶴼�ʱ��;��������ٻ�3;��Ԫ��;Ԫ��������;ˮԪ��;��Ԫ��;��ɱ������;������ɱ������;�����ɱ������1;���1;���2;���3;�����ɱ������2;�������������;??? ?? ??;Ŧ���¹�������С������;������;��ɱ������1;ʱ�ճ���;��ɱ�Ƿ���;������è��²;��צ;~��Դ~;�Ӳ�;ɱ������������;�ʼҴ��ڴ��;��ȼ������;Ӱ�� ͸����;����������;�����ҵĻ���;��ɫ������;���ҵ���Ļ���;��ɫ�����ң�;�м��ɱ��С��������5;С��5;����ʯͷ5;Ұ���������;���ų����ٳ���������5������5��ʯͷ�ִ��ٻ���������BUFF��;���ų����ٳ���������3������3��ʯͷ�ִ��ٻ���������BUFF��;����С����һֻҰ���������ͷͷ;����5;����3;С��3;�м��С���ٻ���5;����С����һֻҰ����ͷͷ;�м��С���ٻ���3;����С����һֻҰ��������ͷͷ;�̳أ�С�֣�;�Ƴأ�С�֣�;Ұ��������;Ұ��������;Ұ����;�������м�� 5S;ɱ��С��������5;�м��С��5;���أ�С�֣�;�м��ɱ��С��������3;����ʯͷ3;���ͼ���;??????? ??? ??;���̣���;���ƣ���;BOSS�����͹�;BOSS�����������;а�����;0;ȥ��BOSS�ӳɵ���Ȫ;�������ٻ���;����������;ը��;�����ٶ�������;ʯԪ��;�����ͽ;���ӥ;ˮ�ù�������;ˮ���ϰ�;")
        end
    end
})