check=1

local common = dofile(path_scripts.."S-M-auto-script\\lib\\common.lua")

common.simpleStart({
    mapName = "����̫��ũ��",
    mapCount = 1,
    planeId = 83700,
    -- ��ͼ�����б������mapIdsһһ��Ӧ
    mapIds = {83100,83700,83701,83702,83703,83704,83705},
    overtime = 30, --��ʱʱ�䣬/����
    endMapIds = {83703,83704,83705}, -- ����һ�ֵĵ�ͼid Ĭ��Ϊ���һ��ͼ���������Դ�ֵΪ׼��û�п��Բ�����
    initSettings = {  -- �ű���ʼ��ʱ�����ò��� ���Բ�����
        tobot_giveitemif=1,
		tobot_fastladder = 0, -- ȡ���������ݣ���ֹ������¥�ݲ��ȶ�
    },

    isLuckyDog = true,

    -- �ű������б������mapIdsһһ��Ӧ
    -- ֧��16����hex����ű�
    -- ��������ͨ�ã�����ж��Ƿ���hex�ĵط����ַ������ȴ���30
    scripts = {
       -- ��������
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323434302C3635352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323432302C3635352CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C323436302C3635352CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323230302C3635352CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323630302C3635352CD7F3C5DC2C0D0ACEBBD6C3B6A8CEBB2CD7F326D3D2CAB12C3633342E3331312C313335392CD3D2C5DC2C0D0AC9CFCCF82CD7F326D3D2CAB12C3633342E3331312C313335392CD3D2C5DC2C",
       -- ����1
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333132302C313430382CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333130302C313430382CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C333038302C313430382CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3535302C3932372CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3235302C3534342CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323830302C3837312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323832302C3837312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323834302C3837312CD7F3C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C323430302C3630382CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333038302C3335322CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333130302C3335322CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333132302C3335322CD7F3C5DC2C",
       -- ����2
       "D7F3CCF82CD3D2C5DCCAB12C3235302C313430382CD7F3C5DC2C0D0AD7F3CCF82CD3D2C5DCCAB12C3230302C313132302CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313531302C3433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313533302C3433392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C313535302C3433392CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C333136302C3532382CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333132302C313430382CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333130302C313430382CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C333038302C313430382CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C323530302C313430382CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C323830302C313130342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C323430302C313130342CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C333030302C313130342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313533392C3734332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313537302C3734332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C313439372C3734322CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313838302C313034302CD3D2C5DC2C",
       -- ����3
       "",
       -- ����4
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313232302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313230302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313138302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C323030",
       -- ����5
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313232302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313230302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313138302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C323030",
       -- ����6
       "BDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313232302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313230302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C3230300D0ABDF8C8EBB4ABCBCDC3C52CD7F326D3D2CAB12C313138302C313430382CB2BBB1E42CD6B4D0D0C7B0B5C8B4FDA3A8BAC1C3EBA3A92C323030",
       -- ����7
       "",
       -- ����8
       "",
	   -- ����9
	   "",
	   -- ����10
	   "",
	   -- ����11
	   "",
	   -- ����12
	   "",
	   -- ����13
	   "",
	   -- ����14
	   "",
	   -- ����15
	   "",
	   -- ����16
	   "",
	   -- ����17
	   "",
	},
	onScriptRound = function () -- ����ÿ���л���ͼ�ص�
        if (getmapid() == 83700) then
		ini_change("tobot_hit_range_top",150)
		ini_change("tobot_hit_range_max",300)
        end
		if (getmapid() == 83702) then
			repeat 
				sleep(200)
				local mobId = mob_obj_get('��еսʿ')
				if mobId>0 then
					speak("���ȹ�����еսʿ")
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C353335302C313338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C353337302C313338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C353339302C313338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C37332C3636302CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C38312C3636342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C38342C3636362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C38372C3636372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C39332C3637302CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C39342C3637312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3130352C3637362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3130392C3637392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3131332C3638302CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3131352C3638312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3131362C3638322CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3132362C3638372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3133302C3638392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3134302C3639342CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3835302C313337362CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C3530302C313037322CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3530302C3736372CD7F3C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C363230302C313337362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363236302C313337362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363238302C313337362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363234302C313337362CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C363138302C3939312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323838302C3333362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323239392C3936372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323330392C3936372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323331392C3936372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313930302C3338342CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323238302C3338342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323330302C3338342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323332302C3338342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C343433302C313138342CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C343839302C313430382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353633302C313130342CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353635302C313130342CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313135302C3336382CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313031342C3737352CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313032372C3737352CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313032302C3737352CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C313031372C3737352CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3937372C3737322CD3D2C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C3932382C3736382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C323931312C3932382CD7F3C5DC2C",0)
					ini_change("find_youhao","�߶�����;???? ????;Guardian;???;����;���صģ�����������ҵ��������5�빥��һ�Σ�һ��1��;�޵�_SMG;��������;DS-SL1;��¡;�������������;;��ɱ������1;��ɱ������2;������ʧ1������;������ʧ2������;������ʧ3������;������ʧ4������;���ƶ�������;����Ծ������;������������;��MHP������;�ж�������;������ʧ5������;��1����ʧ������;��2����ʧ������;��3����ʧ������;��4����ʧ������;��5����ʧ������;��6����ʧ������;��������5������;��BOSSһ��������;������ʧ��Ⱦ��;�����Ƶ���������;һ����ը��ը��;����������;�Ӳ�;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;???? ???;���̣���;���ƣ���;����;BOSS�����͹�;С��5;����5;����3;С��3;Ұ��������;BOSS�������;BOSS����������;����С����1��7��;С������46���ʱ��;���֣�����Ƶ�ʸ�;����ģ����;������;���������Ĵ�è;?? ???;��������������;��è����2Lv;���������;���湥���֣��ٻ���;�������ٻ���;ӣ����Ů;����ӳ�;�۷�;��ɱBOSS2����������;ΪBoss1������������;����;ΪBoss2������������;����������;���湥����;�������;�����ٶ�������;ը��;???? ???;С���ٻ�������;��ɱ���ܹ�3�ٻ�������;��è����;Сʦ��;��ѧ��ͽ;Сʦ��;��ʦ��;ʦ��;ʦ��;DS-SL1;DS-G3648;DS-RG52;?? ???;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;��� Ӱ��;��è 3Lv;��è 6Lv;��è 5Lv;��è 4Lv;��è 2Lv;����õ�巴��������;õ�巴��������;???;ŷ�����ĳ�������;????? ??;����������;����ҳ����˺���������;��ȼ������;������;��ˮ�����֣��ٻ���;��ˮ����ٻ���;�����õ��;���;����ΪBoss1����ӷ���������;����ΪBoss1������������;���湥����;�������;���߹��ܹ�4����ɱbuff������;��ɱ����ǽ������;��ɱboss1����������;boss2�����ٻ�������;���ܹ�2�����ٻ�������;����;���ܹ�1�ٻ�������;��ɱ���ܹ�3�ٻ�������;С���ٻ�������;���һ���ٻ�1;���׶ι���;���һ���ٻ�3;�������ٻ�1;�������ٻ�4;�������ٻ�3;�������ٻ�2;��������ٻ�1;��������ٻ�6;��������ٻ�5;̽�ռҳɹ��ٻ�;�������ٻ�7;�������ٻ�6;�������ٻ�5;��������ٻ�2;��������ٻ�5;���һ���ٻ�2;���һ���ٻ�4;���һ���ٻ�5;���һ���ٻ�6;ˮ���󶴼�ʱ��;��������ٻ�3;��Ԫ��;Ԫ��������;ˮԪ��;��Ԫ��;��ɱ������;������ɱ������;�����ɱ������1;���1;���2;���3;�����ɱ������2;�������������;??? ?? ??;Ŧ���¹�������С������;������;��ɱ������1;ʱ�ճ���;��ɱ�Ƿ���;������è��²;��צ;~��Դ~;�Ӳ�;ɱ������������;�ʼҴ��ڴ��;��ȼ������;Ӱ�� ͸����;����������;�����ҵĻ���;��ɫ������;���ҵ���Ļ���;��ɫ�����ң�;�м��ɱ��С��������5;С��5;����ʯͷ5;Ұ���������;���ų����ٳ���������5������5��ʯͷ�ִ��ٻ���������BUFF��;���ų����ٳ���������3������3��ʯͷ�ִ��ٻ���������BUFF��;����С����һֻҰ���������ͷͷ;����5;����3;С��3;�м��С���ٻ���5;����С����һֻҰ����ͷͷ;�м��С���ٻ���3;����С����һֻҰ��������ͷͷ;�̳أ�С�֣�;�Ƴأ�С�֣�;Ұ��������;Ұ��������;Ұ����;�������м�� 5S;ɱ��С��������5;�м��С��5;���أ�С�֣�;�м��ɱ��С��������3;����ʯͷ3;���ͼ���;??????? ??? ??;���̣���;���ƣ���;BOSS�����͹�;BOSS�����������;а�����;0;ȥ��BOSS�ӳɵ���Ȫ;�������ٻ���;����������;ը��;�����ٶ�������;ʯԪ��;�����ͽ;���ӥ;ˮ�ù�������;ˮ���ϰ�;")
				else
					ini_change("tobot_hit_range_top",150)
					ini_change("tobot_hit_range_down",100)
					script_txt_loaddata("BDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C353335302C313338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C353337302C313338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C353339302C313338332CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C37332C3636302CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C38312C3636342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C38342C3636362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C38372C3636372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C39332C3637302CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C39342C3637312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3130352C3637362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3130392C3637392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3131332C3638302CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3131352C3638312CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3131362C3638322CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3132362C3638372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3133302C3638392CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C3134302C3639342CD7F3C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C3835302C313337362CD7F3C5DC2C0D0AC9CFCCF82CD7F3C5DCCAB12C3530302C313037322CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C3530302C3736372CD7F3C5DC2C0D0AD3D2CCF82CD7F3C5DCCAB12C363230302C313337362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363236302C313337362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363238302C313337362CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C363234302C313337362CD7F3C5DC2C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C363138302C3939312CB2BBB1E42C0D0AD7F3CCF828D6FAC5DC292CD7F3C5DCCAB12C323838302C3333362CB2BBB1E42C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323239392C3936372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323330392C3936372CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD7F3C5DCCAB12C323331392C3936372CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313930302C3338342CD3D2C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323238302C3338342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323330302C3338342CD7F3C5DC2C0D0ABDF8C8EBB4ABCBCDC3C52CD3D2C5DCCAB12C323332302C3338342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD3D2C5DCCAB12C343433302C313138342CD7F3C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C313330302C313430382CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C343839302C313430382CD3D2C5DC2C0D0AC9CFCCF82CD3D2C5DCCAB12C313430302C313430382CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353633302C313130342CD3D2C5DC2C0D0AD6C7C4DCD7AAC9ED2CD7F3C5DCCAB12C353635302C313130342CD3D2C5DC2C0D0AD3D2CCF828D6FAC5DC292CD3D2C5DCCAB12C313135302C3336382CB2BBB1E42C",0)
					ini_change("find_youhao","???? ????;Guardian;???;����;���صģ�����������ҵ��������5�빥��һ�Σ�һ��1��;�޵�_SMG;��������;DS-SL1;��¡;�������������;;��ɱ������1;��ɱ������2;������ʧ1������;������ʧ2������;������ʧ3������;������ʧ4������;���ƶ�������;����Ծ������;������������;��MHP������;�ж�������;������ʧ5������;��1����ʧ������;��2����ʧ������;��3����ʧ������;��4����ʧ������;��5����ʧ������;��6����ʧ������;��������5������;��BOSSһ��������;������ʧ��Ⱦ��;�����Ƶ���������;һ����ը��ը��;����������;�Ӳ�;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;???? ???;���̣���;���ƣ���;����;BOSS�����͹�;С��5;����5;����3;С��3;Ұ��������;BOSS�������;BOSS����������;����С����1��7��;С������46���ʱ��;���֣�����Ƶ�ʸ�;����ģ����;������;���������Ĵ�è;?? ???;��������������;��è����2Lv;���������;���湥���֣��ٻ���;�������ٻ���;ӣ����Ů;����ӳ�;�۷�;��ɱBOSS2����������;ΪBoss1������������;����;ΪBoss2������������;����������;���湥����;�������;�����ٶ�������;ը��;???? ???;С���ٻ�������;��ɱ���ܹ�3�ٻ�������;��è����;Сʦ��;��ѧ��ͽ;Сʦ��;��ʦ��;ʦ��;ʦ��;DS-SL1;DS-G3648;DS-RG52;?? ???;Ŧ�ع����������磨��;ˮ���󳡼�ʱ��;��� Ӱ��;��è 3Lv;��è 6Lv;��è 5Lv;��è 4Lv;��è 2Lv;����õ�巴��������;õ�巴��������;???;ŷ�����ĳ�������;????? ??;����������;����ҳ����˺���������;��ȼ������;������;��ˮ�����֣��ٻ���;��ˮ����ٻ���;�����õ��;���;����ΪBoss1����ӷ���������;����ΪBoss1������������;���湥����;�������;���߹��ܹ�4����ɱbuff������;��ɱ����ǽ������;��ɱboss1����������;boss2�����ٻ�������;���ܹ�2�����ٻ�������;����;���ܹ�1�ٻ�������;��ɱ���ܹ�3�ٻ�������;С���ٻ�������;���һ���ٻ�1;���׶ι���;���һ���ٻ�3;�������ٻ�1;�������ٻ�4;�������ٻ�3;�������ٻ�2;��������ٻ�1;��������ٻ�6;��������ٻ�5;̽�ռҳɹ��ٻ�;�������ٻ�7;�������ٻ�6;�������ٻ�5;��������ٻ�2;��������ٻ�5;���һ���ٻ�2;���һ���ٻ�4;���һ���ٻ�5;���һ���ٻ�6;ˮ���󶴼�ʱ��;��������ٻ�3;��Ԫ��;Ԫ��������;ˮԪ��;��Ԫ��;��ɱ������;������ɱ������;�����ɱ������1;���1;���2;���3;�����ɱ������2;�������������;??? ?? ??;Ŧ���¹�������С������;������;��ɱ������1;ʱ�ճ���;��ɱ�Ƿ���;������è��²;��צ;~��Դ~;�Ӳ�;ɱ������������;�ʼҴ��ڴ��;��ȼ������;Ӱ�� ͸����;����������;�����ҵĻ���;��ɫ������;���ҵ���Ļ���;��ɫ�����ң�;�м��ɱ��С��������5;С��5;����ʯͷ5;Ұ���������;���ų����ٳ���������5������5��ʯͷ�ִ��ٻ���������BUFF��;���ų����ٳ���������3������3��ʯͷ�ִ��ٻ���������BUFF��;����С����һֻҰ���������ͷͷ;����5;����3;С��3;�м��С���ٻ���5;����С����һֻҰ����ͷͷ;�м��С���ٻ���3;����С����һֻҰ��������ͷͷ;�̳أ�С�֣�;�Ƴأ�С�֣�;Ұ��������;Ұ��������;Ұ����;�������м�� 5S;ɱ��С��������5;�м��С��5;���أ�С�֣�;�м��ɱ��С��������3;����ʯͷ3;���ͼ���;??????? ??? ??;���̣���;���ƣ���;BOSS�����͹�;BOSS�����������;а�����;0;ȥ��BOSS�ӳɵ���Ȫ;�������ٻ���;����������;ը��;�����ٶ�������;ʯԪ��;�����ͽ;���ӥ;ˮ�ù�������;ˮ���ϰ�;")
				end
			until(door_if(6260,1376)==1)
        end
    end
})