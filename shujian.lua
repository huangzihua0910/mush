require "wait"
require "tprint"
require "lujing"
require "chat"
require "job"
require "rooms"
--require "emoted"smyteam
require "xuncheng"
require "skill"
require "weapon"
require "hubiao"
require ("./lua/show_switch")
require "dummy"
require "husong"
require "xueshan"
require "wudang"
require "clb"
require "huashan"
require "songmoya"
require "tdh"
require "songxin"
require "hqgzc"
require "dolost"
require "kezhiwugong"
require "armor"
require "addxml"
require "zhuacaishen"
require "guanfu"
require "taohuazhen"
require "jinhe"
require "quest"

-- 创建一个普通别名
function create_alias(a_name,a_match,a_response)
      return AddAlias(a_name,a_match,a_response,alias_flag.Enabled+alias_flag.Replace+alias_flag.RegularExpression,'')
end
-- 创建一个脚本别名
function create_alias_s(a_name,a_match,a_function)
      return AddAlias(a_name,a_match,'',alias_flag.Enabled+alias_flag.Replace,a_function)
end
-- 创建一个分定时器
function create_timer_m(t_name,t_min,t_function)
      return AddTimer(t_name,0,t_min,0,'',timer_flag.Enabled+timer_flag.ActiveWhenClosed+timer_flag.Replace,t_function)
end
-- 创建一个秒定时器
function create_timer_s(t_name,t_second,t_function)
      return AddTimer(t_name,0,0,t_second,'',timer_flag.Enabled+timer_flag.ActiveWhenClosed+timer_flag.Replace,t_function)
end
-- 创建一个一次性秒定时器
function create_timer_st(t_name,t_second,t_function)
      return AddTimer(t_name,0,0,t_second,'',timer_flag.Enabled+timer_flag.ActiveWhenClosed+timer_flag.Replace+timer_flag.OneShot,t_function)
end
-- 创建一个触发器 
function create_trigger_t(t_name,t_match,t_response,t_function )
      return AddTrigger(t_name,t_match,t_response,trigger_flag.Enabled+trigger_flag.RegularExpression+trigger_flag.Replace,-1,0,"",t_function)
end
-- 创建一个临时的触发器 
function create_trigger_f(t_name,t_match,t_response,t_function )
      return AddTrigger(t_name,t_match,t_response,trigger_flag.Enabled+trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Temporary,-1,0,"",t_function)
end
-- 创建一个临时的一次性触发器 
function create_trigger(t_name,t_match,t_response,t_function )
      return AddTrigger(t_name,t_match,t_response,trigger_flag.Enabled+trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Temporary+trigger_flag.OneShot,-1,0,"",t_function)
end
-- 创建一个ex触发器 
function create_triggerex_t(t_name,t_match,t_response,t_function )
      return AddTriggerEx(t_name,t_match,t_response,trigger_flag.Enabled+trigger_flag.RegularExpression+trigger_flag.Replace,-1,0,"",t_function,12,99)
end
function create_triggerex_t101(t_name,t_match,t_response,t_function )
      return AddTriggerEx(t_name,t_match,t_response,trigger_flag.Enabled+trigger_flag.RegularExpression+trigger_flag.Replace,-1,0,"",t_function,12,101)
end
function create_triggerex_lvl(t_name,t_match,t_response,t_function,lvl)
      return AddTriggerEx(t_name,t_match,t_response,trigger_flag.Enabled+trigger_flag.RegularExpression+trigger_flag.Replace,-1,0,"",t_function,12,lvl)
end
-- 创建一个临时的触发器 
function create_triggerex_f(t_name,t_match,t_response,t_function )
      return AddTriggerEx(t_name,t_match,t_response,trigger_flag.Enabled+trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Temporary,-1,0,"",t_function,12,100)
end
-- 创建一个临时的一次性触发器 
function create_triggerex(t_name,t_match,t_response,t_function )
      return AddTriggerEx(t_name,t_match,t_response,trigger_flag.Enabled+trigger_flag.RegularExpression+trigger_flag.Replace+trigger_flag.Temporary+trigger_flag.OneShot,-1,0,"",t_function,12,100)
end
-- 创建一个临时的一次性定时器
function create_timer( t_name, t_time, t_com, t_function )
return AddTimer (
t_name,
0,
0,
t_time,
t_com,
timer_flag.Enabled + timer_flag.OneShot + timer_flag.TimerSpeedWalk + timer_flag.Replace + timer_flag.Temporary,
t_function
)
end
skills={}
--if hp.exp>800000 then
	 skillsLingwu={'force','finger','parry','dodge','strike','blade','cuff','claw','hand','leg','whip','club','sword','stick','hammer','dagger','brush','throwing','spear','staff','axe'}
--else
--skillsLingwu={'finger','parry','dodge','strike','blade','cuff','claw','hand','leg','whip','club','sword','stick','hammer','dagger','brush','throwing','spear','staff','axe'}
--end	

master={}

perform={}

hp={
jingxue=0,
jingxue_max=0,
jingxue_per=0,
jingli=0,
jingli_max=0,
jingli_lim=0,
qixue=0,
qixue_max=0,
qixue_per=0,
neili=0,
neili_max=0,
neili_lim=0,
jiali_max=0,
jiali=0,
food=100,
water=100,
pot=0,
pot_max=0,
exp=0,
heqi=0,
dazuo=10,
tuna=10,
shen=0
}
sx2=0  --送信二关闭
improve={}
improve.sh=0
improve.wk=0
improve.mz=0
improve.db=0
improve.bj=0
improve.zj=0
improve.bs=0
improve.nk=0
improve.nl=0
improve.kk=0
improve.kz=0

improve.zk=0
improve.zm=0

improve.gj=0
improve.gjmax=0
improve.fy=0
improve.fymax=0
g_stop_flag = false
score={}
score.id='id'
score.name='name'
score.dex=20
score.dex_t=20
score.int=20
score.int_t=20
score.str=20
score.str_t=20
score.con=20
score.con_t=20
score.age=14
score.gold=0
score.tb=0
score.yb=0
score.jjb=0
score.im=0
score.xiangyunvalue=0
score.sww =""
score.sw = 0
score.scyh=""
score.shengwang=0
score.shasiwanjia=0
score.zhengdangfangwei=0
score.dj =""
score.dz =""
score.zt = ""
score.loc = ""
score.huiyuan=""
score.jm=""
score.yhb=0
score.llcount=""
score.gj=""
score.db=""
score.zj=""
score.s=0
score.zs=""
score.fs="";
score.hy="";
score.zhpj=""
lost_name=0
needdolost=0
dolostlater=0
dolostfaster=1
flag={
xuexi=0,
lingwu=0,
lianxi=0,
prepare=0,
go=0,
find=0,
wait=0,
times=1,
duhe=1,
gold=1,
duhe=1,
dujiang=1,
jixu=1,
wipe=0}
flag.autoll=1
flag.food=0
flag.month=0
flag.wxjz=0
flagFull={}
tmp={}
condition={}
weapon={}
count={}
count.gold_max=5
count.nxw_max=20
count.cbw_max=20
count.hqd_max=20
count.cty_max=20
count.hxd_max=5
count.dhd_max=5
drug={}
drug.heal='chantui yao'
drug.neili1='neixi wan'
drug.neili2='chuanbei wan'
drug.neili3='huangqi dan'
drug.jingxue='huoxue dan'
bags={}
Bag = {}
team={}
xcexp=1
lingwudie=0
needxuexi=1
xxpot=0
xuefull=0
lookxin=0
flag.onboattime=os.time()
leweapon='none'
jherror=0
inwdj=1
wdjobfail=1
searchStartgo=0
dugujian=0
l_pot=0
haltbusy=0
smyteam=10
tdhdz=1
dhdh=0
buyyao=1 --自动买药
check_hhdk=0
smyall=2
lostno=10
newbie=1
vippoison=0
ptbxvip=0
kdummy=0
newbie=1
mydummy=false
double_kill=nil
ypt_lianskills=0
scorexy=false
LLlost=0
needvpearl=0
doubleexp=0
dohs2=1
roadroomid={}
hsjob2=0
dzxy_level=0
need_dzxy='yes'
hqgzcjl=0
flag.csok=false
flag.xjgo=false
flag.yilidoor=false
flag.yiligo=false
flag.jobmark='none'
flag.lingwumark='none'
flag.lingwutime=0
flag.dolostbkjob=false
flag.pkway=0
flag.pxj=false
flag.debuffset=0
flag.kjhsearch=false
flag.sljl=false
flag.smytime=0
flag.mytime=os.time()
flag.pklongtime=os.time()
flag.neishang=false
kuang_cur=0
kuang_cur1=0
go_on_smy=0 --20161117增加变量go_on_smy开关控制 防止系统重启后自动打开颂摩崖
ebooktimes=0
lostletter_locate=""
ll={}
ll.area=''
ll.room=''
hsruntime=0
pkheqi=0
pkset=0
wdgostart=0
wd_distance=4
flag.yili=true
wudang_checkfood=0
xuezhu_require=0
needjinchai=0
cmdck=0
check_steptest=0
_check_step_num=0
check_step_num=0
check_step_num1=0
check_step_num2=0
need_waittime=0
common_walk=1
check_step_time=os.clock()
quick_locate=0
hstesta=0
hstestb=0
hstestc=0
hstest=0
wdtesta=0
wdtestb=0
wdtestc=0
wdtest=0
wdtestaa=0
hstestaa=0
wdtestaaa=0
hstestaaa=0
check_cjdkk=0
check_lcjdkk=0
check_cjdkkk=0
check_lcjdkkk=0
dujiang_change=0
djflood=0
lcj_test=0
cj_test=0
wdfastsearch=0
ck_hhdk1=0
dkopen1=0
dkclose1=0
checkdktime1=0
ck_hhdk2=0
dkopen2=0
dkclose2=0
ck_hhdk3=0
dkopen3=0
dkclose3=0
checkdktime3=0
ck_hhdk4=0
dkopen4=0
dkclose4=0
checkdktime4=0
dhdh=0
cjn_check=0
path_finish=0
lcj_test=0
cj_test=0
first_leave='changjiang'
first_arrive='changjiang'
wdtimeerror=0
beifenarea=0
beifenroom=0
beifentarget2=0
hsbeifenarea='不知道哪里'
hsbeifenroom='不知道哪里'
getarmortime=0
beifentarget=0
wudang_npc_party='武当派'
beifenid=0
wdbusytime=0
wdfaint=0
sx2faint=0
hscheckhead=0
hsgivetime=0
flag.shexintime=os.time()
flag.chanraotime=os.time()
flag.guanchongtime=os.time()
flag.potime=os.time()
flag.fanchangtime=os.time()
flag.neifutime=os.time()
flag.waifutime=os.time()
flag.nanjiangtime=os.time()
flag.jiudaitime=os.time()
flag.dhdtime=os.time()
flag.kurongtime=os.time()
flag.shaoshangtime=os.time()
flag.wofotime=os.time()
flag.fuxuetime=os.time()
flag.qianshoutime=os.time()
flag.ruyingtime=os.time()
flag.baxiantime=os.time()
flag.fentiantime=os.time()
flag.fumotime=os.time()
flag.fumoquantime=os.time()
flag.buhuaitime=os.time()
flag.jingangtime=os.time()
flag.leidongtime=os.time()
flag.qiankuntime=os.time()
flag.riyuetime=os.time()
flag.fenwotime=os.time()
flag.chaodutime=os.time()
flag.cimutime=os.time()
flag.huatime=os.clock()
flag.wuzhuantime=os.time()
flag.xinghetime=os.time()
flag.qinnatime=os.clock()
flag.luoyetime=os.clock()
flag.diewutime=os.clock()
flag.qimentime=os.clock()
flag.fengwutime=os.clock()
flag.pikongtime=os.clock()
flag.yuxiaotime=os.clock()
flag.huayutime=os.clock()
flag.feiyingtime=os.clock()
flag.cuiyintime=os.time()
flag.tantime=os.clock()
flag.attacktime=os.clock()
flag.liumaistime=os.clock()
flag.cijiantime=os.clock()
flag.erguangtime=os.clock()
flag.qujiantime=os.clock()
flag.budaotime=os.clock()
flag.taxuetime=os.clock()
flag.kunlongtime=os.clock()
flag.futime=os.clock()
flag.zms_fuxuetime=os.clock()
flag.qinjiantime=os.clock()
flag.chuanyuntime=os.clock()
flag.diezhangtime=os.clock()
flag.xunleitime=os.clock()
flag.feixingtime=os.clock()
flag.liuxingtime=os.clock()
flag.sanjuetime=os.clock()
flag.onboattime=os.time()
flag.xiaotime=os.clock()
flag.paiyuntime=os.clock()
flag.yuhengtime=os.clock()
flag.shuangjuetime=os.clock()
flag.wugoutime=os.clock()
flag.bantime=os.clock()
flag.tiaotime=os.clock()
flag.chantime=os.clock()
flag.chuotime=os.clock()
flag.yintime=os.clock()
flag.huntiantime=os.clock()
flag.zhongchong=os.clock()
flag.qujian=os.clock()
flag.fuxue=os.clock()
flag.roudaotime=os.clock()
flag.luandaotime=os.clock()
flag.feidaotime=os.clock()
flag.jiuyangtime=os.clock()
flag.xutime=os.clock()
flag.changkongtime=os.clock()
flag.huattime=os.clock()
flag.xinmotime=os.clock()
flag.qishangtime=os.clock()
flag.jitime=os.clock()
flag.duotime=os.clock()
flag.duanhuntime=os.clock()
flag.tishatime=os.clock()
flag.guiyuantime=os.clock()
flag.daozhangtime=os.clock()
flag.zhangdaotime=os.clock()
flag.lihuntime=os.clock()
flag.caotime=os.clock()
flag.tianleitime=os.clock()
flag.heishatime=os.clock()
flag.pangentime=os.clock()
flag.kuangfengtime=os.clock()
flag.pfmpreparetime=os.clock()
flag.yinfengtime=os.clock()
flag.xixuetime=os.clock()
flag.suxintime=os.clock()
autoskill=0
autobook=0
SMYID = {--武当失败开启上山的id
	["zhaoziyu"] = true,
}

pker={}
pker_name="none"
pker_id="none"

drugBuy ={
["川贝内息丸"] = {"zhiye/yaodian1","dali/yaopu"},
["邪气丸"] = {"zhiye/yaodian1","dali/yaopu"},
["正气丹"] = {"zhiye/yaodian1","dali/yaopu"},
["养精丹"] = {"zhiye/yaodian1","dali/yaopu"},
["补气丸"] = {"zhiye/yaodian1","dali/yaopu"},
["续精丹"] = {"zhiye/yaodian1","dali/yaopu"},
["内息丸"] = {"zhiye/yaodian1","dali/yaopu"},
["补食丹"] = {"zhiye/yaodian1","dali/yaopu"},
["补水丸"] = {"zhiye/yaodian1","dali/yaopu"},
["金疮药"] = {"zhiye/yaodian1","dali/yaopu"},
["疗精丹"] = {"zhiye/yaodian1","dali/yaopu"},
["正气丹"] = {"zhiye/yaodian1","dali/yaopu"},
["邪气丸"] = {"zhiye/yaodian1","dali/yaopu"},
["延年养精丹"] = {"zhiye/yaodian1","dali/yaopu"},
["茯苓补气丸"] = {"zhiye/yaodian1","dali/yaopu"},
["当归续精丹"] = {"zhiye/yaodian1","dali/yaopu"},
["蝉蜕金疮药"] = {"zhiye/yaodian1","dali/yaopu"},
["活血疗精丹"] = {"zhiye/yaodian1","dali/yaopu"},
["解毒丸"] = {"zhiye/yaodian1","dali/yaopu"},
["大还丹"] = "city/dangpu",
["火折"] = {"xueshan/laifu","suzhou/baodaiqiao"},
["牛皮酒袋"] = {"city/xiaochidian"},
}

drugPoison={
["九花玉露丸"] = true,
}

-- ain

local cun_hammer = tonumber(GetVariable("autocun_hammer"))
if cun_hammer==1 then 
	itemSave={
		["倚天匠技残篇"] = true,
		["屠龙匠技残篇"] = true,
		["韦兰之锤"] = true,
		["金铁锤"] = true,
		["神铁锤"] = true,
			}
else
	itemSave={
		["倚天匠技残篇"] = true,
		["屠龙匠技残篇"] = true,
		["韦兰之锤"] = true,
		["金铁锤"] = true,
		["神铁锤"] = true,
		}
end

i=1

check_skills=function(n,l,w)

   local l_skills=" "
   if w[3] then
      l_skills= l_skills .. w[3]
   end
   if w[4] then
      l_skills= l_skills .. w[4]
   end
   if w[5] then
      l_skills= l_skills .. w[5]
   end
   l_skills=Trim(l_skills)
   skills[l_skills] = skills[l_skills] or {}
   skills[l_skills].lvl=tonumber(w[6])
   skills[l_skills].pot=tonumber(w[7])
   skills[l_skills].name=Trim(w[2])
   if skills[l_skills].lvl>=450 then
      skills[l_skills].mstlvl=450
   end
   if l_skill=="force" and skills[l_skills].mstlvl<450 and skills[l_skills].mstlvl==hp.pot_max-101 then
      skills[l_skills].mstlvl=nil
   end

end

hp_jingxue_check=function(n,l,w)
         hp.jingxue    =tonumber(w[1])
         hp.jingxue_max=tonumber(w[2])
         hp.jingxue_per=tonumber(w[3])
         hp.jingli     =tonumber(w[4])
         hp.jingli_max =tonumber(w[5])
         hp.jingli_lim =tonumber(w[6])            
end
hp_qixue_check=function(n,l,w)
         hp.qixue    =tonumber(w[1])
         hp.qixue_max=tonumber(w[2])
         hp.qixue_per=tonumber(w[3])
         hp.neili    =tonumber(w[4])
         hp.neili_max=tonumber(w[5])            
end
hp_shen_check=function(n,l,w)
         local l_type=tostring(w[1])
	 hp.shen     =tonumber(del_string(tostring(w[2]),','))
         hp.neili_lim=tonumber(w[3])
	 if l_type=='戾' then
            hp.shen=hp.shen * -1
	 end
end
hp_pot_check=function(n,l,w)
         hp.food     =tonumber(w[1])
         hp.pot      =tonumber(w[2])
         hp.pot_max  =tonumber(w[3])
	 
	 for p in pairs(skillEnable) do
	     -- ain 200level->160
	     q=skillEnable[p]
	     if skills[p] and skills[q] then
	        skills[p].full=0
	        
	     	if q=='force' and (hp.pot<50 or skills[p].lvl<150) then
	           skills[p].full=1
	        end
	        --if (skills[p].lvl==skills[q].lvl and skills[p].pot==(skills[p].lvl+1)*(skills[p].lvl+1)) or skills[p].lvl>skills[q].lvl then
			if skills[p].lvl>=skills[q].lvl then
	           skills[p].full=1    
	        end
			if skills[p].fullever then
			   skills[p].full=1
			end
			if skills[p].lvl>=hp.pot_max-100 then
			   skills[p].full=1
			end
			if p=="wuxiang-zhi" then
			   if not skills[p].olvl then skills[p].olvl=skills[p].lvl end
			   if skills[p].lvl > skills[p].olvl then
			      flag.wxjz=0
				  skills[p].olvl=skills[p].lvl
			   end
			end
			if p=="wuxiang-zhi" and (skills[p].lvl<200 or flag.wxjz==0) then
			   skills[p].full=1
			end
	     end
	 end
	 if perform.force then
	   if not skills[perform.force] then
	      perform.force = nil
	   end
	 end
	 if not perform.force then
	    tmp.lvl = 0
	    for p in pairs(skills) do
	        q=skillEnable[p]
		    if q=="force" then
		       if skills[p].lvl > tmp.lvl then
		  	      tmp.lvl = skills[p].lvl
				  perform.force = p
			   end
		    end
	    end
	 end
	 if skills["parry"] and skills["parry"].lvl<hp.pot_max-100 and skills["parry"].lvl<450 then
        flag.xuexi=1
     end
end
hp_exp_check=function(n,l,w)
         hp.water    =tonumber(w[1])
         hp.exp      =tonumber(del_string(tostring(w[2]),','))   
end
hp_dazuo_check=function(n,l,w)
         hp.dazuo=trans(w[1])
   exe('dazuo '..hp.dazuo)
end
score_tb_check=function(n,l,w)
    score.tb=tonumber(w[1])
    score.yb=tonumber(w[2])
    score.jjb=tonumber(w[3])
end
score_ebook_check=function(n,l,w)
    ebooktimes=trans(w[1])
end
score_name_check=function(n,l,w)
	score.name =tostring(w[1])
    score.id   =string.lower(tostring(w[2]))
    score.dex_t=tonumber(w[3])
    score.dex  =tonumber(w[4])
    score.int_t=tonumber(w[5])
    score.int  =tonumber(w[6])
end
score_title_check=function(n,l,w)
    score.title=Trim(tostring(w[1]))
    score.str_t=tonumber(w[2])
    score.str  =tonumber(w[3])
    score.con_t=tonumber(w[4])
    score.con  =tonumber(w[5])
end
score_age_check=function(n,l,w)
    score.age=trans(w[1])
end
score_gold_check=function(n,l,w)
    score.gold=trans(w[2])
    if score.gold==nil then
       score.gold=0
    end
end

score_party_check=function(n,l,w)
 score.party=w[2]
 score.master=w[3]
	--if score.party=="普通百姓" then
	  -- score.master="普通百姓"
	--end
	  score.gold=trans(w[1])
    if score.gold==nil then
       score.gold=0
    end
end

score_tbyb=function(n,l,w)
  score.tb=trans(w[1])
    score.yb=trans(w[2])
end
score_check_xy=function(n,l,w)
	score.xiangyun=Trim(w[1])  --六个状态，生、旺、败、平、衰、死
	score.xiangyunvalue=tonumber(w[2])
	if not score.xiangyunvalue then
	   score.xiangyunvalue=0
	end
	if scorexy==false then
	   scorexy=smyteam*1
	end
	if SMY_ID[score.id] then
	  if score.xiangyun=='死' then 
         smyteam=scorexy-2
	  elseif score.xiangyun=='衰' and score.xiangyunvalue>10 then
         smyteam=scorexy-2
	  elseif score.xiangyun=='衰' and score.xiangyunvalue<=10 then
         smyteam=scorexy-1
	  elseif smyteam<scorexy then
         smyteam=scorexy
      end
	else
	  if score.xiangyun=='衰' or score.xiangyun=='死' then
		 if job.zuhe["songmoya"] then job.zuhe["songmoya"]=nil end
	  else
		 if smyteam<scorexy then
		    smyteam=scorexy*1
		 end
		 if go_on_smy~=0 and job.zuhe["songmoya"]==nil then job.zuhe["songmoya"]=true end
	  end
	end
end
score_busy_check=function(n,l,w)
   local l_char=del_string(w[2],' ')
   l_char=del_string(l_char,'')
   local l_cnt=trans(l_char)
   if w[3]=='分' then
      if w[1]=="雪山强抢美女" then
	     condition.xueshan=l_cnt * 60
	  end
	       if w[1]=="双倍经验" then
	     condition.ebook=l_cnt * 60
	  end
	       if w[1]=="明悟" then
	     condition.mingwu=l_cnt * 60
	  end
	  	   if w[1]=="真实视野" then
         condition.vpearl=l_cnt 
	  end
         if w[1]=="寒毒" then
         vippoison=1
         condition.poison=l_cnt * 60
	  end
         if w[1]=="蔓陀萝花毒" then
         vippoison=1
	  end
         if w[1]=="星宿掌毒" then
         vippoison=1
         condition.poison=l_cnt * 60
	  end
         if w[1]=="虎爪绝户手伤" then
         condition.poison=l_cnt * 60
	  end
	  if w[1]=="任务繁忙状态" then
         condition.busy=l_cnt * 60
	  end
	  if w[1]=="福州镖局护镖倒计时" then
         condition.hubiao=l_cnt * 60
	  end
--print(condition.poison,condition.busy)
   else
      if w[1]=="雪山强抢美女" then
	     condition.xueshan=l_cnt
	  end
	       if w[1]=="双倍经验" then
	     condition.ebook=l_cnt
	  end
	       if w[1]=="明悟" then
	     condition.mingwu=l_cnt
	  end
	       if w[1]=="真实视野" then
         condition.vpearl=l_cnt 
	  end
         if w[1]=="寒毒" then
         vippoison=1
         condition.poison=l_cnt
	  end
         if w[1]=="蔓陀萝花毒" then
         vippoison=1
	  end
         if w[1]=="星宿掌毒" then
         vippoison=1
         condition.poison=l_cnt
	  end
         if w[1]=="虎爪绝户手伤" then
         condition.poison=l_cnt
	  end
	  if w[1]=="任务繁忙状态" then
         condition.busy=l_cnt
	  end
	  if w[1]=="福州镖局护镖倒计时" then
         condition.hubiao=l_cnt
	  end
--print(condition.poison,condition.busy)
   end
end
score_gender_check=function(n,l,w)
    

--print(w[1])
--print(w[2])
--print(w[3])
--print(w[4])
      score.gender=w[1]
  
   
     score.gj=w[2]
   
     score.db=w[3]
  
     score.zj=w[4]
   

  

end
hpheqi=function()
    DeleteTriggerGroup("hpheqi")
    create_trigger_t('hpheqi1',"^·合气度·\\s*\\-?\\s*(\\d*)",'','hp_heqi_check')
    SetTriggerOption("hpheqi1","group","hpheqi")
    EnableTriggerGroup("hpheqi",false)
end
function test()
   Note("到达目的地！")
   --return fight_prepare()
end
function test_text()
    Note('TEXT')
end
beihook=test
halthook=test
function main()
	needdolost=0
	autopk=0
	setAlias()
    delete_all_triggers()
    delete_all_timers()
    DeleteTemporaryTriggers()
	if tonumber(GetVariable("hb_team_captain"))==0 then autoHB=0 end
    create_trigger_t('main',"^「书剑\\D*」\\S*已经连续执行了",'','login')
	create_trigger('main2',"^(> )*你现在队伍中的成员有",'','hb_team_judge')
	create_trigger('main3',"^(> )*你现在并没有参加任何队伍",'','hb_team_judge1')
    create_trigger_t('main1',"^Are you using BIG5 font\\(y/N\\)? ",'','login_choose')
    lujing_trigger()
    chat_trigger()
    hp_trigger()
    fight_trigger()
    fight_prepare()
    idle()
    getVariable()
    userGet()
    hpheqi()
	exe('sc')
	draw_button_win()
    -- ain
    Openfpk()
	if flag.jobmark=='songxindie' then
		  job.last='songxin2'
          return go(songxin_fangqi,'大理城','驿站')
	   end
    map.rooms["sld/lgxroom"].ways["#outSld"]="huanghe/huanghe8"
    exe('down;alias askk ask $*;stand;halt;uweapon;score;cha;hp;jobtimes;jifa all;jiali max;unset no_kill_ap;cond;pfmset')
	if not job.zuhe or countTab(job.zuhe)<2 then
    exe('set look yes;leave;down;alias askk ask $*;stand;halt;uweapon;score;jiali max;improve;cha;hp;jobtimes;jifa all;cond;time;team;drop shoes;wear all;drop corpse;drop head')
	   return shujian_set()
	else
       return check_bei(hp_dazuo_count)
	end
end
function login_choose()
    Send('n')
end
function login()
    dis_all()
    DeleteTriggerGroup("login")
    create_trigger_t('login1',"^您上次连线地址是",'','logincheck')
    create_trigger_t('login2',"^请您输入这个人物的识别密码\\(passwd\\)：",'','login_passwd')
    SetTriggerOption("login1","group","login")
    SetTriggerOption("login2","group","login")
    local l_id=GetVariable("id")
    local l_passwd=GetVariable("passwd")
    Note(l_id,l_passwd)
    if l_id~=nil and l_passwd~=nil then
       Send(l_id)
       Send(l_passwd)
       Send('y')
    else
       return shujian_set()
    end
end
function logincheck()
    xuezhu_require=1
	needjinchai=1
	scrLog()
end
function login_passwd()
    wait.make(function()
       wait.time(2)
	   EnableTriggerGroup("login",false)
       main()
    end)
end
function disAll()
    local tl = GetTriggerList()
    if tl then
       for k, v in ipairs (tl) do 
           EnableTrigger(v,false) 
       end
    end
    delete_all_timers()
    if lookxin==1 and job.name=='dolost' then
       sendXin()
    end
	EnableTrigger("main",true)
	EnableTrigger("main1",true)
	EnableTriggerGroup("hp",true)
    EnableTriggerGroup("score",true)
  -- ain
    EnableTrigger("pk1",true)
    EnableTrigger("pk2",true)
    EnableTriggerGroup("buyao",true)
    if job.name=='diemenglou' then
	   dmlTriggers()
	   EnableTrigger('dmlfight1',true)
	end
	if job.name=='hubiao' then
	   EnableTrigger("hpheqi1",true)
       EnableTriggerGroup("fight",true)
	   EnableTriggerGroup("hb_fight",true)
	   hb_kill_look()
	   --EnableTriggerGroup("hb_kill",true)--小猪猪护镖文件的叫杀触发器
	   flag.djdh=false
	end
end
function dis_all()
    local tl = GetTriggerList()
    if tl then
       for k, v in ipairs (tl) do 
           EnableTrigger(v,false) 
       end
    end
    delete_all_timers()
    EnableTrigger('main',true)
    EnableTrigger('main1',true)
    --EnableTrigger('idle',true)
    EnableTriggerGroup("chat",true)
    EnableTriggerGroup("hp",true)
    EnableTriggerGroup("score",true)
    EnableTriggerGroup("count",true)
    EnableTriggerGroup("fight",true)
    EnableTriggerGroup("job_exp",true)
    EnableTrigger("hp12",false)
    if lookxin==1 and job.name=='dolost' then
       sendXin()
    end
-- ain
    EnableTrigger("pk1",true)
    EnableTrigger("pk2",true)
    EnableTriggerGroup("buyao",true)
    beihook=test
    busyhook=test
    waithook=test
    flag.find=1
	wdgostart=0
    --thread_resume(lookfor)
    idle()
end
function delete_all_triggers()
    local tl = GetTriggerList()
    if tl then
       for k, v in ipairs (tl) do 
           DeleteTrigger(v) 
       end
    end 
end
function delete_all_timers()
    local tl = GetTimerList()
    if tl then
       for k, v in ipairs (tl) do 
           DeleteTimer(v) 
       end
    end 
end
hp_dazuo_count=function()
  if HBoffline==1 then 
       autoHB=1
       return hubiao() 
    end
    DeleteTriggerGroup("dz_count")
    create_trigger_t('dz_count1','^>*\\s*卧室不能打坐，会影响别人休息。','','hp_dz_where')
    create_trigger_t('dz_count2','^>*\\s*你无法静下心来修炼。','','hp_dz_where')
    create_trigger_t('dz_count3','^>*\\s*(这里不准战斗，也不准打坐。|这里可不是让你提高内力的地方。)','','hp_dz_where')
	create_trigger_t('dz_count4',"^(> )*你现在手脚戴着镣铐，不能做出正确的姿势来打坐",'','hp_dz_liaokao')
	create_trigger_t('dz_count5',"^(> )*(你正要有所动作|你无法静下心来修炼|你还是专心拱猪吧)",'','hp_dz_where')
	create_trigger_t('dz_count6',"^(> )*你现在精不够，无法控制内息的流动！",'','loginerror')
    SetTriggerOption("dz_count1","group","dz_count")
    SetTriggerOption("dz_count2","group","dz_count")
    SetTriggerOption("dz_count3","group","dz_count")
	SetTriggerOption("dz_count4","group","dz_count")
	SetTriggerOption("dz_count5","group","dz_count")
	SetTriggerOption("dz_count6","group","dz_count")
    if perform.force and skills[perform.force] then
	   --exe('jifa force '.. perform.force)
	   exe('jifa force hamagong')
	   
	else
	   for p in pairs(skills) do
	      if skillEnable[p] == "force" then
		     --exe('jifa force '.. p)
			 exe('jifa force hamagong')
			 exe('cha')
		  end
	   end
	end
    if skills["linji-zhuang"] and skills["linji-zhuang"].lvl>149 then
       exe('yun yinyang')
    end
	if skills["force"] and skills["force"].lvl<450 and skills["force"].lvl<hp.pot_max-100 then
       flag.xuexi=1
    end
    exe('yun qi;hp')
    hp.dazuo=10
    return check_bei(hp_dazuo_act)
end
loginerror=function()
	  DeleteTriggerGroup("dz_count")
	  DeleteTimer("dazuo_count")
    return checkWait(check_heal,0.5)
end
hp_dazuo_act=function()
    tmp.qixue=hp.qixue
    exe('yun jing;dazuo '..hp.qixue)
    tmp.i=0
    return create_timer_s('dazuo_count',1.5,'hp_dazuo_timer')
end
hp_dazuo_timer=function()
    tmp.i = tmp.i + 1
    if tmp.i > 30 then
       return main()
    end
    exe('hp;yun jing;yun qi;dazuo '..hp.qixue)
    return checkWait(hp_dz_count,0.5)
end
hp_dz_count=function()
    EnableTriggerGroup("dz_count",false)

    local l_times=1
       if hp.qixue<tmp.qixue then
          if hp.qixue_max>1000 then
             l_times=math.modf(math.modf(hp.qixue_max/5)/(tmp.qixue-hp.qixue))+1
	  end
	  hp.dazuo=l_times*(tmp.qixue-hp.qixue)+150
	  if hp.dazuo<10 then
	     hp.dazuo=10
	  end
	  --if hp.dazuo>10 and hp.dazuo <100 then
	  --   l_times=math.modf(100/hp.dazuo)+1
	  --   hp.dazuo=l_times*hp.dazuo
	  --end
	  Note('最佳打坐值为：'..hp.dazuo)
	  DeleteTriggerGroup("dz_count")
	  DeleteTimer("dazuo_count")
	  exe('halt')
	  if kdummy==1 and hp.exp>2000000 then opendummy() end
	  return check_bei(Gstart)
	 end
end
function Gstart()
if locl.weekday == '四' and locl.hour ==08 and locl.min<5 then
	onelogin=0
	return go(login_getchai,'扬州城','杂货铺')
	else
	return check_bei(check_food)
	end
end
function login_getchai()
    exe('qu jin chai')
	return check_halt(clswan)
end
function clswan()
	quick_locate=0
    return go(clsask,"苗疆","药王居")
end
function clsask()
   	wait.make(function() 
	    wait.time(5)
        exe('ask cheng about 五毒教;yes')
		return check_halt(login_over)
	end)
end
function login_over()
    exe('fu jiuxuebiyun dan')
	SetVariable("xuezhu_status","1")
	checkBags()
	return go(login_zhangma,"huanghe/yyd/damen")
end
function login_zhangma()
    wait.make(function() 
	    wait.time(5)
        exe('give ma chai')
		return checkPrepare()
	end)
end
hp_dz_where=function()
   EnableTriggerGroup("dz_count",false)
   DeleteTimer("dazuo_count")
   locate()
   check_bei(hp_dz_go)
end
hp_dz_go=function()
   EnableTriggerGroup("dz_count",true)
   exe(locl.dir)
   hp_dazuo_act()
end
function hp_dz_liaokao()
    dis_all()
	return tiaoshui()
end
function shaolinlostchangbian()
--exe('unset no_kill_ap;yield no;set wimpycmd pppp1\\hp;set wimpy 100;unwield mu jian;get qiankun blade;wield qiankun blade;jifa blade fanliangyi-dao;yun shenzhao;perform huayue')
end
function shaolinfumo_up()
  --if heqi>119 then
   exe('perform shentong')
   --else
   print('星河成功开启，添加化学平方米')
   --end
end
function thddeelwhithlhs()
Send('alias pppp1 get joeywus sword;unwield joeywus sword;unwield mu jian;jifa hand lanhua-shou;jifa parry lanhua-shou;bei none;bei hand;perform fuxue')
exe('set 兰花手 擒拿式')
messageShow('被兰花手搞了')
end
function hp_trigger()
    DeleteTriggerGroup("hp")
    create_trigger_t('hp1',"^·精血·\\s*(\\d*)\\s*\\/\\s*(\\d*)\\s*\\(\\s*(\\d*)\\%\\)\\s*·精力·\\s*(\\d*)\\s*\\/\\s*(\\d*)\\((\\d*)\\)$",'','hp_jingxue_check')
    create_trigger_t('hp2',"^·气血·\\s*(\\d*)\\s*\\/\\s*(\\d*)\\s*\\(\\s*(\\d*)\\%\\)\\s*·内力·\\s*(\\d*)\\s*\\/\\s*(\\s*\\d*)\\(\\+\\d*\\)$",'','hp_qixue_check')
    create_trigger_t('hp3',"^·食物·\\s*(\\d*)\\.\\d*\\%\\s*·潜能·\\s*(\\d*)\\s*\\/\\s*(\\d*)$",'','hp_pot_check')
    create_trigger_t('hp4',"^·饮水·\\s*(\\d*)\\.\\d*\\%\\s*·经验·\\s*(.*)\\s*\\(",'','hp_exp_check')
    create_trigger_t('hp5',"^·(戾|正)气·\\s*(.*)\\s*·内力上限·\\s*(\\d*)\\s*\\/",'','hp_shen_check')
    create_trigger_t('hp7',"^(□)*\\s*(\\D*)\\s*\\((\\D*)(\\-)*(\\D*)\\)\\s*\\-\\s*\\D*\\s*(\\d*)\\/\\s*(\\d*)$",'','check_skills')
    create_trigger_t('hp8',"^>*\\s*你至少需要(\\D*)点的气来打坐！",'','hp_dazuo_check')
    create_trigger_t('hp9',"^│(\\D*)任务\\s*│\\s*(\\d*) 次\\s*│ ",'','checkJobtimes')
    create_trigger_t('hp10',"^□(\\D*)\\(\\D*\\)$",'','checkWieldCatch')
    create_trigger_t('hp11',"^(> )*你最近刚完成了(\\D*)任务。$",'','checkJoblast')
    create_triggerex_lvl('hp12',"^(> )*(\\D*)",'','resetWait',200)
    create_trigger_t('hp13',"^(> )*你还在巡城呢，仔细完成你的任务吧。",'','checkQuit')
    create_trigger_t('hp14',"^\\D*被一阵风卷走了。$",'','checkRefresh')
    create_trigger_t('hp15',"^(> )*一个月又过去",'','checkMonth')
    create_trigger_t('hp16',"^(> )*昨天完成失落信笺任务(\\N*)次，今天完成失落信笺任务(\\N*)/(\\N*)次。",'','checkLLlost')
 
    create_trigger_t('hp17',"^(> )*你(渴得眼冒金星，全身无力|饿得头昏眼花，直冒冷汗)|满天黄沙，你感到喉咙冒烟，干渴难熬！",'','checkQuit')
    create_trigger_t('hp18',"^(> )*(你舔了舔干裂的嘴唇，看来是很久没有喝水了|突然一阵“咕咕”声传来，原来是你的肚子在叫了)",'','checkfood')
    create_trigger_t('hp19',"^(> )*(忽然一阵刺骨的奇寒袭来，你中的星宿掌毒发作了|忽然一股寒气犹似冰箭，循着手臂，迅速无伦的射入胸膛，你中的寒毒发作了)",'','checkDebug')
    --create_trigger_t('hp20',"^(> )*你(服下一颗活血疗精丹，顿时感觉精血不再流失|服下一颗内息丸，顿时觉得内力充沛了不少|服下一颗川贝内息丸，顿时感觉内力充沛|服下一颗黄芪内息丹，顿时感觉空虚的丹田充盈了不少|敷上一副蝉蜕金疮药，顿时感觉伤势好了不少|吃下一颗大还丹顿时伤势痊愈气血充盈)。",'','hpeatOver')
    create_trigger_t('hp21',"^(> )*你必须先用 enable 选择你要用的特殊内功。",'','jifaOver')
    create_trigger_t('hp22',"^(> )*(\\D*)目前学过(\\D*)种技能",'','show_skills')
    create_trigger_t('hp23',"^(> )*你的背囊里有：",'','show_beinang')
    create_trigger_t('hp24','^(> )*你眼中一亮看到\\D*的身边掉落一(件|副|双|袭|顶|个|条|对)(\\D*)(手套|靴|甲胄|腰带|披风|彩衣|头盔)。','','fqyyArmorGet')
    create_trigger_t('hp25','^(> )*你捡起一(件|副|双|袭|顶|个|条|对)(\\D*)(手套|靴|甲胄|腰带|披风|彩衣|头盔)。','','fqyyArmorCheck')
	create_trigger_t('hp26','^(> )*\\D*告诉你：城门(\\D*)','','yiliCheck')
	create_trigger_t('hp27','^(> )*客官已经付了银子，怎(么|麽)不住店就走了呢！旁人还以为小店伺候不周呢！','','kedian_sleep')
	--create_trigger_t('hp28','^.*穷光蛋，一边呆着去','','newbie_qu_gold')
	create_trigger_t('hp28','^(> )*\\D*还想挣扎，但一被你抓住，竟立即软垂垂的毫不动弹。','','shaolinlostchangbian')
	create_trigger_t('hp29','^.*狐疑地看着你：「这信怎么落到你的手上？」','','dolost_hitlog_open')
	create_trigger_t('hp30','^.*据说(\\D*)被.*打傻了!','','dolost_hitlog_close')
	create_trigger_t('hp31','^.*你得到了一封失落的信笺。','','getlost')
	create_trigger_t('hp32','^.*你现在精不够，无法控制内息的流动！','','dazuo_jing')
	create_trigger_t('hp33',"^(> )*\\D*告诉你：长江渡船出发时间",'','check_cjdk')
	create_trigger_t('hp34',"^(> )*\\D*告诉你：澜沧江渡船出发时间",'','check_lcjdk')
	create_trigger_t('hp35',"^(> )*\\D*告诉你：澜沧江渡船到达时间",'','check_lcjdk1')
	create_trigger_t('hp36',"^(> )*\\D*告诉你：长江渡船到达时间",'','check_cjdk1')
	create_trigger_t('hp37',"^(> )*你手中的\\D*使用过久，终于断为两截！",'','weaponUneed')
	create_trigger_t('hp38',"^(> )*倾刻之间，尸体就化为一堆灰烬，你在灰烬中又站了起来。",'','csover')
	create_trigger_t('hp39',"^(> )*\\D*告诉你：黄河流域大渡口出发时间",'','check_hhdk2')
	create_trigger_t('hp40',"^(> )*\\D*告诉你：黄河流域大渡口到达时间",'','check_hhdk22')
	create_trigger_t('hp41',"^(> )*\\D*告诉你：陕晋渡口出发时间",'','check_hhdk1')
	create_trigger_t('hp42',"^(> )*\\D*告诉你：陕晋渡口到达时间",'','check_hhdk11')
	create_trigger_t('hp43',"^(> )*\\D*告诉你：西夏渡口出发时间",'','check_hhdk3')
	create_trigger_t('hp44',"^(> )*\\D*告诉你：西夏渡口到达时间",'','check_hhdk33')
	create_trigger_t('hp45',"^(> )*\\D*告诉你：兰州渡口出发时间",'','check_hhdk4')
	create_trigger_t('hp46',"^(> )*\\D*告诉你：兰州渡口到达时间",'','check_hhdk44')
	create_trigger_t('hp47',"^(> )*正在退出游戏$",'','game_quit')
	create_trigger_t('lostweapon','^.*你看着.*的可怜样，叹了口气，丢给(.*)','','kill_qigai')
	create_trigger_t('hphb',"^(> )*(.*)\\((\\D*)\\)告诉你：护镖啦",'','hb_prepare_check')
	create_trigger_t('hphb1',"^(> )*(.*)\\((\\D*)\\)告诉你：有人没准备好，大家先回去做任务，一会儿再约",'','hb_prepare_cancel')
	create_trigger_t('hphb2',"^.*告诉你：队长，我都等了5分钟了，还不开始？我先回去做任务，一会儿再约",'','hb_cancel')
	create_trigger_t('hphb3',"^.*告诉你：壮烈三次了,暂停护镖",'','hubiao_pause')
	create_trigger_t('hphb4',"^(> )*(.*)\\((\\D*)\\)告诉你：壮烈三次了,暂停护镖",'','hubiao_pause')
	create_trigger_t('roadroom','^(> )*(\\D*)\\s*(-|船)\\s*(north|south|east|west|northeast|northwest|southwest|southeast|up|down|enter|out|northup|southdown|eastup|westdown|westup|eastdown|southup|northdown|$)','','road_room')
	create_trigger_t('hp51','^(> )*\\D*正自顾不暇，你可以放胆攻击了。','','shaolinfumo_up')
	SetTriggerOption("hp52","group","hp")
	create_trigger_t('hp52','^(> )*你现在无法使用弹指神通。','','thddeelwhithlhs')
	SetTriggerOption("hp51","group","hp")
    SetTriggerOption("hp24","group","hp")
    SetTriggerOption("hp25","group","hp")
	SetTriggerOption("hp26","group","hp")
	SetTriggerOption("hp27","group","hp")
    SetTriggerOption("hp1","group","hp")
    SetTriggerOption("hp2","group","hp")
    SetTriggerOption("hp3","group","hp")
    SetTriggerOption("hp4","group","hp")
    SetTriggerOption("hp5","group","hp")
    SetTriggerOption("hp7","group","hp")
    SetTriggerOption("hp8","group","hp")
    SetTriggerOption("hp9","group","hp")
    SetTriggerOption("hp10","group","hp")
    SetTriggerOption("hp11","group","hp")
    SetTriggerOption("hp12","group","hp")
    SetTriggerOption("hp13","group","hp")
    SetTriggerOption("hp14","group","hp")
    SetTriggerOption("hp15","group","hp")
    SetTriggerOption("hp16","group","hp")
    SetTriggerOption("hp17","group","hp")
    SetTriggerOption("hp18","group","hp")
    SetTriggerOption("hp19","group","hp")
    SetTriggerOption("hp20","group","hp")
    SetTriggerOption("hp21","group","hp")
    SetTriggerOption("hp22","group","hp")
    SetTriggerOption("hp23","group","hp")
	SetTriggerOption("hp28","group","hp")
	SetTriggerOption("hp29","group","hp")
	SetTriggerOption("hp30","group","hp")
	SetTriggerOption("hp31","group","hp")
	SetTriggerOption("hp32","group","hp")
	SetTriggerOption("hp33","group","hp")
	SetTriggerOption("hp34","group","hp")
	SetTriggerOption("hp35","group","hp")
	SetTriggerOption("hp36","group","hp")
	SetTriggerOption("hp37","group","hp")
	SetTriggerOption("hp38","group","hp")
	SetTriggerOption("hp39","group","hp")
	SetTriggerOption("hp40","group","hp")
	SetTriggerOption("hp41","group","hp")
	SetTriggerOption("hp42","group","hp")
	SetTriggerOption("hp43","group","hp")
	SetTriggerOption("hp44","group","hp")
	SetTriggerOption("hp45","group","hp")
	SetTriggerOption("hp46","group","hp")
	SetTriggerOption("hp47","group","hp")
	SetTriggerOption("lostweapon","group","hp")
	SetTriggerOption("hphb","group","hp")
	SetTriggerOption("hphb1","group","hp")
	SetTriggerOption("hphb2","group","hp")
	SetTriggerOption("hphb3","group","hp")
	SetTriggerOption("hphb4","group","hp")
	SetTriggerOption("roadroom","group","hp")
	SetTriggerOption("roadroom","keep_evaluating","y")
    DeleteTriggerGroup("score")
    create_trigger_t('score1',"^┃姓    名：(\\D*)\\((\\D*)\\)\\s*┃身  法：「(\\d*)\/(\\d*)」\\s*悟  性：「(\\d*)\/(\\d*)」",'','score_name_check')
    create_trigger_t('score2',"^┃头    衔：(\\D*)\\s*┃膂  力：「(\\d*)\/(\\d*)」\\s*根  骨：「(\\d*)\/(\\d*)」",'','score_title_check')
    create_trigger_t('score3',"^┃年    龄：(\\D*)岁\\D*\\s*生    辰：",'','score_age_check')
    create_trigger_t('score4',"^│(任务繁忙状态|雪山强抢美女|寒毒|星宿掌毒|虎爪绝户手伤|福州镖局护镖倒计时)\\s*(\\D*)(分|秒)\\s*",'','score_busy_check')
    create_trigger_t('score5',"^┃钱庄存款：(\\D*)\\s*师\\s*承：【(\\D*)】【(\\D*)】\\s*┃",'','score_party_check')
    --create_trigger_t('score6',"^┃性    别：(\\D*)性\\s*攻：(\\D*)躲：(\\D*)架：(\\D*)\\s* ",'','score_gender_check')

    create_trigger_t('score6',"^┃性    别：(\\D*)性\\s*攻：(\\D*)\\s*躲：(\\D*)\\s*架：(\\D*)\\s*┃",'','score_gender_check')

    --create_trigger_t('score7',"^┃钱庄存款：(\\D*)\\s*师\\s*承：(\\D*)",'','score_party_check')

      
    --create_trigger_t('score8',"^┃注    册：(\\D*)\\s*钱庄存款：(\\D*)",'','score_gold_check')
    --create_trigger_t('score9',"^您目前的存款上限是：(\\D*)锭黄金",'','checkGoldLmt')
    create_trigger_t('score13',"^┃书剑通宝：(\\D*)\\s*社区元宝：(\\D*)\\s*┃",'','score_tbyb')    
   -- create_trigger_t("score10",
    --                 "^┃书剑通宝：(\\N*)\\s*社区元宝：(\\N*)\\s*解迷机会：(\\N*)\\s*┃",
    --                 "", "score_tb_check")
    create_trigger_t("score9",
                     "^本周您已经使用精英之书(\\D*)次。", "",
                     "score_ebook_check")
    --create_trigger_t("score11", "^┃江湖声望：(\\d*)", "",
      --               "score_sw_check")
    create_trigger_t("score12",
                     "^┃当前等级：(\\D*)\\s*死亡：(\\D*)\\s*打造机会：(\\D*)\\s*┃",
                     "", "score_dz_check")  
    create_trigger_t('score14',"^┃\\s*综合评价：(\\D*)\\s*┃",'','score_zhpj')
    create_trigger_t('score15',"^┃\\s*注册：(\\D*)\\s*解迷机会：(\\D*)\\s*┃",'','score_hyjmjh')
   
     create_trigger_t('score16',"^┃\\s*注册：(\\D*)\\s*叛师：(\\D*)\\s*解迷机会：(\\D*)\\s*┃",'','score_hypsjm_check')
     create_trigger_t('score17',"^┃\\s*婚姻：(\\D*)\\s*正气：(\\N*)\\s*综合评价：(\\N*)\\s*┃",'','score_hyzqzh_check')  
     create_trigger_t('score18',"^┃\\s*婚姻：(\\D*)\\s*戾气：(\\N*)\\s*综合评价：(\\N*)\\s*┃",'','score_hylqzh_check')  
    
create_trigger_t('score11',"^┃\\s*江湖声望：(\\N*)\\s*杀死玩家：(\\N*)\\s*正当防卫：(\\N*)\\s*┃",'','score_swsswjzdfw_check')
create_trigger_t('score20',"^┃\\s*上次遇害：(\\D*)\\s*┃",'','score_scyh_check')


    SetTriggerOption("score1", "group", "score")
    SetTriggerOption("score2", "group", "score")
    SetTriggerOption("score3", "group", "score")
    SetTriggerOption("score4", "group", "score")
    SetTriggerOption("score5", "group", "score")
    SetTriggerOption("score6", "group", "score")
    SetTriggerOption("score7", "group", "score")
    SetTriggerOption("score8", "group", "score")
    SetTriggerOption("score9", "group", "score")
    SetTriggerOption("score10", "group", "score")
	SetTriggerOption("score11", "group", "score")
	--SetTriggerOption("score12", "group", "score")
	SetTriggerOption("score13", "group", "score")
	SetTriggerOption("score14", "group", "score")
	SetTriggerOption("score15", "group", "score")
    SetTriggerOption("score16", "group", "score")
	SetTriggerOption("score17", "group", "score")
    SetTriggerOption("score18", "group", "score")
    SetTriggerOption("score20", "group", "score")
end
function game_quit()
onelogin=1
end
function check_ggtime()
ggtime=0
end
function dazuo_jing()
wait.make(function() 
	wait.time(5)
	exe('yun jing')
    exe('dazuo '..hp.dazuo)
	end)
end
function getlost()
lostletter=1
end
score_dz_check=function(n,l,w)
score.sww=w[2]
score.dj=w[1]
score.dz=w[3]
end
score_scyh_check=function(n,l,w)
score.scyh=w[1]
 

end
score_swsswjzdfw_check=function(n,l,w)
score.shengwang=w[1]
score.shasiwanjia=w[2]
score.zhengdangfangwei=w[3]

end
score_hypsjm_check=function(n,l,w)
 score.huiyuan=w[1]
 score.jm=w[3]
end
score_hyzqzh_check=function(n,l,w)
score.s=0--正神
score.zs=w[2]
score.hy=w[1]
score.zhpj=w[3]

 
end
score_hylqzh_check=function(n,l,w)
score.s=1--负神
score.fs=w[2]
score.hy=w[1]
score.zhpj=w[3]
end
function check_cjdk()
	print('长江渡口开启')
	first_leave='changjiang'
    check_cjdkkk=0
	hstestaaa=os.clock()
	cj_test=hstestaaa-hstestaa
end	
function check_cjdk1()
	print('长江渡口关闭')
	first_arrive='changjiang'
    check_cjdkkk=1
	hstestaa=os.clock()
	cj_test=hstestaa-hstestaaa
end	
function check_lcjdk()
	print('澜沧江渡口开启')
	first_leave='lancangjiang'
	check_lcjdkkk=0
	wdtestaaa=os.clock()
	lcj_test=wdtestaaa-wdtestaa
	
end	
function check_lcjdk1()
	print('澜沧江渡口关闭')
	first_arrive='lancangjiang'
    check_lcjdkkk=1
	wdtestaa=os.clock()
	lcj_test=wdtestaa-wdtestaaa
end
function check_cjn()
	if check_cjdkkk==0 and check_lcjdkkk==0 then
			map.rooms["city/jiangbei"].ways["#duCjiang"]='city/jiangnan'		
	        map.rooms["city/jiangnan"].ways["#duCjiang"]='city/jiangbei'
			map.rooms["dali/dalisouth/jiangnan"].ways["#duCjiang"]=nil
			map.rooms["dali/dalisouth/jiangbei"].ways["#duCjiang"]=nil	
			return
	end
	if check_cjdkkk==1 and check_lcjdkkk==1 then
		if hstestaa<wdtestaa then
			map.rooms["city/jiangbei"].ways["#duCjiang"]='city/jiangnan'		
	        map.rooms["city/jiangnan"].ways["#duCjiang"]='city/jiangbei'
			map.rooms["dali/dalisouth/jiangnan"].ways["#duCjiang"]=nil
			map.rooms["dali/dalisouth/jiangbei"].ways["#duCjiang"]=nil	
			return
		else
			map.rooms["dali/dalisouth/jiangnan"].ways["#duCjiang"]='dali/dalisouth/jiangbei'
	        map.rooms["dali/dalisouth/jiangbei"].ways["#duCjiang"]='dali/dalisouth/jiangnan'
			map.rooms["city/jiangbei"].ways["#duCjiang"]=nil	
			map.rooms["city/jiangnan"].ways["#duCjiang"]=nil
			return
		end
	end
	if check_cjdkkk==0 and check_lcjdkkk==1 then
		    map.rooms["city/jiangbei"].ways["#duCjiang"]='city/jiangnan'		
	        map.rooms["city/jiangnan"].ways["#duCjiang"]='city/jiangbei'
			map.rooms["dali/dalisouth/jiangnan"].ways["#duCjiang"]=nil
			map.rooms["dali/dalisouth/jiangbei"].ways["#duCjiang"]=nil
            return	
	end	
	if check_cjdkkk==1 and check_lcjdkkk==0 then
		    map.rooms["dali/dalisouth/jiangnan"].ways["#duCjiang"]='dali/dalisouth/jiangbei'
	        map.rooms["dali/dalisouth/jiangbei"].ways["#duCjiang"]='dali/dalisouth/jiangnan'
			map.rooms["city/jiangbei"].ways["#duCjiang"]=nil	
			map.rooms["city/jiangnan"].ways["#duCjiang"]=nil	
			return
	end	
end
function check_hhdk1()
    ck_hhdk1=0
    dkopen1=os.clock()
    checkdktime1=dkopen1-dkclose1
	--print('陕晋渡口开启->对应关系：黄河流域大渡口')
end
function check_hhdk11()
    ck_hhdk1=1
    dkclose1=os.clock()	
	checkdktime1=dkclose1-dkopen1
	--print('陕晋渡口关闭->对应关系：黄河流域大渡口')
end
function check_hhdk2()
    ck_hhdk2=0
    dkopen2=os.clock()	
	checkdktime2=dkopen2-dkclose2
	--print('黄河流域大渡口开启->对应关系：陕晋渡口')
end
function check_hhdk22()
    ck_hhdk2=1
    dkclose2=os.clock()	
	checkdktime2=dkclose2-dkopen2
	--print('黄河流域大渡口关闭->对应关系：陕晋渡口')
end
function check_hhdk3()
    ck_hhdk3=0
    dkopen3=os.clock()	
	checkdktime3=dkopen3-dkclose3
	--print('西夏渡口开启->对应关系：兰州渡口')
end
function check_hhdk33()
    ck_hhdk3=1
    dkclose3=os.clock()	
	checkdktime3=dkclose3-dkopen3
	--print('西夏渡口关闭->对应关系：兰州渡口')
end
function check_hhdk4()
    ck_hhdk4=0
    dkopen4=os.clock()	
	checkdktime4=dkopen4-dkclose4
	--print('兰州渡口开启->对应关系：西夏渡口')
end
function check_hhdk44()
    ck_hhdk4=1
    dkclose4=os.clock()	
	checkdktime4=dkclose4-dkopen4
	--print('兰州渡口关闭->对应关系：西夏渡口')
end

function check_hh()
	dhopen()
    if ck_hhdk1==0 and ck_hhdk2==0 then
		if dkopen1>dkopen2 then
			map.rooms["huanghe/road2"].ways["#duHhe"]=nil
			map.rooms["huanghe/road3"].ways["#duHhe"]=nil
			return checkhhh()
		else
			map.rooms["changan/road2"].ways["#duHhe"]=nil
			map.rooms["changan/road3"].ways["#duHhe"]=nil
			return checkhhh()
		end
	end
	if ck_hhdk1==1 and ck_hhdk2==1 then 
		if dkclose1>dkclose2 then
			map.rooms["changan/road3"].ways["#duHhe"]=nil	
			map.rooms["changan/road2"].ways["#duHhe"]=nil
			return checkhhh()
		else
			map.rooms["huanghe/road3"].ways["#duHhe"]=nil	
			map.rooms["huanghe/road2"].ways["#duHhe"]=nil
            return checkhhh()
		end
	end
	if ck_hhdk1==0 and ck_hhdk2==1 then
		map.rooms["huanghe/road3"].ways["#duHhe"]=nil	
		map.rooms["huanghe/road2"].ways["#duHhe"]=nil
        return checkhhh()
	end
	if ck_hhdk1==1 and ck_hhdk2==0 then
		map.rooms["changan/road2"].ways["#duHhe"]=nil
		map.rooms["changan/road3"].ways["#duHhe"]=nil
		return checkhhh()
	end
end	

function checkhhh()
	if ck_hhdk3==0 and ck_hhdk4==0 then
		if dkopen3>dkopen4 then
			map.rooms["lanzhou/road2"].ways["#duHhe"]=nil
			map.rooms["lanzhou/road3"].ways["#duHhe"]=nil
			return
	    else
			map.rooms["lanzhou/dukou2"].ways["#duHhe"]=nil
			map.rooms["lanzhou/dukou3"].ways["#duHhe"]=nil	
			return
		end
	end
	if ck_hhdk3==1 and ck_hhdk4==1 then
		if dkclose3>dkclose4 then
			map.rooms["lanzhou/dukou2"].ways["#duHhe"]=nil
			map.rooms["lanzhou/dukou3"].ways["#duHhe"]=nil	
			return
	    else
		    map.rooms["lanzhou/road2"].ways["#duHhe"]=nil
			map.rooms["lanzhou/road3"].ways["#duHhe"]=nil
			return
		end
	end
	if ck_hhdk3==0 and ck_hhdk4==1 then
		map.rooms["lanzhou/road2"].ways["#duHhe"]=nil
		map.rooms["lanzhou/road3"].ways["#duHhe"]=nil
		return
	end
	if ck_hhdk3==1 and ck_hhdk4==0 then
		map.rooms["lanzhou/dukou2"].ways["#duHhe"]=nil
		map.rooms["lanzhou/dukou3"].ways["#duHhe"]=nil	
		return
	end
end

function lingwu_trigger()
    DeleteTriggerGroup("lingwu")
    create_trigger_t('lingwu1',"^.*(你只能从特殊技能中领悟。|你不会这种技能。|你要领悟什么？)",'','lingwu_next')
    create_trigger_t('lingwu2',"^.*你从实战中得到的潜能已经用完了。",'','lingwu_finish1')
    create_trigger_t('lingwu3',"^.*你的\\D*不够，无法领悟更深一层的基本",'','lingwu_next')
    create_trigger_t('lingwu9',"^.*以你现在的基本内功修为，尚无法领悟基本内功。",'','lingwu_next')
    create_trigger_t('lingwu5',"^.*由于实战经验不足，阻碍了你的「\\D*」进步",'','lingwu_next')
    create_trigger_t('lingwu6','^.*(你深深吸了几口气，精神看起来好多了。|你现在精神饱满。)','','lingwu_goon')
    create_trigger_t('lingwu7',"^.*你的内力不够。",'','lingwuSleep') 
    SetTriggerOption("lingwu1","group","lingwu")
    SetTriggerOption("lingwu2","group","lingwu")
    SetTriggerOption("lingwu3","group","lingwu")
    SetTriggerOption("lingwu9","group","lingwu")
    SetTriggerOption("lingwu5","group","lingwu")
    SetTriggerOption("lingwu6","group","lingwu")
    SetTriggerOption("lingwu7","group","lingwu")
    EnableTriggerGroup("lingwu",false)
end
function yiliCheck(n,l,w)
	if Trim(w[2])=="开着" then
		flag.yili=true
	elseif Trim(w[2])=="关闭" then
		flag.yili=false
	end
end
--[[function jifaOver()
    exe('jifa all')
end]]
function checkDebug()
	messageShow('您中毒了!')
	vippoison=1
	exe('look bei nang;hp')
	  if job.name=='songmoya' then
	exe('set wimpycmd halt\\down\\hp')
	job.name='poison'
	return check_halt(fangqiypt)
	  end
    if hxd_cur>0 then
	create_timer_s('eatdan',3,'hpEat')
    else
	dis_all()
	return check_halt(check_xue)
    end
end
function hpEat()
	exe('eat huoxue dan')
end
function hpeatOver(n,l,w)
     local l=w[2]
  if string.find(l,"敷上一副蝉蜕金疮药，顿时感觉伤势好了不少") then
	   cty_cur = cty_cur - 1
	end
	if string.find(l,"服下一颗内息丸，顿时觉得内力充沛了不少") then
	   nxw_cur = nxw_cur - 1
	end
	if string.find(l,"服下一颗川贝内息丸，顿时感觉内力充沛") then
	   cbw_cur = cbw_cur - 1
	end
	if string.find(l,"服下一颗活血疗精丹，顿时感觉精血不再流失") then
	   DeleteTimer("eatdan")
	   hxd_cur = hxd_cur - 1
	end
	if string.find(l,"吃下一颗大还丹顿时伤势痊愈气血充盈") then
	   messageShow('吃大还丹了！')
	   dhd_cur = dhd_cur - 1
	end
end
function checkQuit()
  --dis_all()
	--check_halt(BQuit)
	if job.name=='idle' then check_food() end
	   exe('drink jiudai')
end
function BQuit()
  exe('quit')
end
function checkfood()
    if job.name=="songmoya" or (job.name~=nil and job.name~='idle') then return else
       dis_all()
       return check_halt(check_food)
    end
end
function checkLLlost(n,l,w)
    local s=os.date("%Y%m%d")
    score.llcount=s..':昨天完成失落信笺任务'..w[2]..'，今天完成失落信笺任务'..w[3]..'/'..w[4]..'次。'
    print( score.llcount)
    LLlost=tonumber(w[4])
    if (condition.vpearl==0 or not condition.vpearl) and needdolost==1 and needvpearl==1 then
	   needvpearl=0
       return Govpearl()
    end
   if LLlost*1>=lostno*1 and needdolost==1 then 
    needdolost=0
	needvpearl=0
	messageShow('今日LL已完成!')
       return check_food()
    end
end

function Govpearl()
    return go(dhvpearl,'扬州城','当铺')
end
function dhvpearl()
    exe('duihuan vpearl;cond')
	needvpearl=0
	if autoHB==1 then
	   if (tonumber(GetVariable("hb_team_captain"))==1 and HBcaptaingo==1) or tonumber(GetVariable("hb_team_captain"))==0 then
          if not condition.vpearl then condition.vpearl=60 end
	      return hubiao()
	   end
    end
    if lostletter==1 and needdolost==1 then
       needvpearl=0
	   condition.vpearl=60
       return letterLost()
    end
    if LLlost*1>=lostno*1 and needdolost==1 then
	needdolost=0
	needvpearl=0
       return check_food()
    end
    return check_halt(check_food)
end
function dhlost()
    exe('duihuan pcert')
    return check_halt(check_food)
end
function checkMonth()
    flag.month=1
end
function checkTongbao(n,l,w)
    score.tongbao=tonumber(w[1])
end
function checkGoldLmt(n,l,w)
    score.goldlmt=trans(w[1])
end

function jifaAll()
    for p in pairs(skills) do
	    local sk = qrySkillEnable(p)
	    if sk and sk["force"] and perform.force and perform.force==p then
		  -- exe('jifa force '..p)
		  exe('jifa force hamagong')
		end
		if sk and not sk["force"] then
		   for q in pairs(sk) do
		       if skills[q] and skills[p].lvl>=skills[q].lvl then
		          exe('jifa '..q..' '..p)
			   end
		   end
		end
	end
end
function jifaDodge()
    for p in pairs(skills) do
	    q = skillEnable[p]
		if q=="dodge" and skills[q] and skills[p].lvl>=skills[q].lvl then
		   exe('jifa '..q..' '..p)
		   break
		end
	end
end
function checklingwu()
   if lingwudie==0 then
     return lingwu()
   end
   if xxpot<hp.pot_max then
     return lingwu()
   end
 return check_job()
end
function lingwu()
    DeleteTemporaryTriggers()
    lingwu_trigger()
	skillsLingwu = {}
	skillsLingwu = utils.split(GetVariable("lingwuskills"),'|')
    road.temp=0
    tmp.lingwu=1
       lingwudie=0
     return check_busy(lingwu_gg)
end
function lingwu_gg()
return go(lingwugg_zb,'大理城','茶馆')
end
function lingwugg_zb()
if GetVariable("otherskills")=="zhizao" or GetVariable("otherskills")=="duanzao" or GetVariable("otherskills")=="shenzhao" then
return xuexi_gg()
end
--return zhunbeineili(lingwu_ggstart)
wait.make(function() 
          wait.time(2)
 return zhunbeineili(lingwu_ggstart)
 end)
end
function lingwu_ggstart()
prepare_neili_stop()
exe('ask ying about start')
messageShow('领悟鬼谷时间开启！')
return check_bei(lingwu_go)
end
function lingwu_go()
    exe('nick 少林领悟达摩院后殿')
    messageShow('去少林领悟')
	jifaAll()
    go(lingwu_zhunbei,'嵩山少林','达摩院')
end
function lingwu_zhunbei()
DeleteTriggerGroup("lingwu_zhunbei")
create_trigger_t('lingwu_zhunbei1',"^(> )*你对着玄悲大师一脚踢了过去。$",'','lingwu_unwield')
SetTriggerOption("lingwu_zhunbei1","group","lingwu_zhunbei")
EnableTriggerGroup("lingwu_zhunbei",true)
exe('kick dashi')
create_timer_s('walkWait4',1,'knock_dashi')
end
function knock_dashi()
exe('kick dashi')
end
function lingwu_unwield()
  EnableTimer('walkWait4',false)
   DeleteTimer("walkWait4")
   EnableTriggerGroup("lingwu_zhunbei",false)
	--weapon_unwield()
       exe('hp')
	local leweapon=GetVariable("learnweapon")
	   exe('wield '..leweapon)
	return check_busy(lingwuzbok)
end
function lingwuzbok()
  go(lingwuzbok_test,'嵩山少林','达摩院后殿')
end
function lingwuzbok_test()
if score.party=='桃花岛' then
exe('yun qimen')
end
if score.party=='古墓派' then
exe('yun xinjing')
end
if locl.room=="达摩院后殿" then
exe('lingwu force')  --force 有时候会自己增加熟练度，目前不知道是什么导致的
return check_bei(lingwu_goon)
else
return walk_wait()
end
end
function lingwuSleep()
 EnableTimer('walkWait4',false)
  if score.gender=='男' then
     return go(lingwuSleepOver,"songshan/nan-room","")
  else
     return go(lingwuSleepOver,"songshan/nv-room","")
  end
end
function lingwuSleepOver()
    exe('sleep')
    checkWait(lingwu_eat,3)
end
function lingwu_goon()
    if locl.room~="达摩院后殿" then
       return lingwu_finish()
    end
    EnableTriggerGroup("lingwu",true)
    local skill=skillsLingwu[tmp.lingwu]
	
	if not skills[skill] or skills[skill].lvl==0 or skills[skill].lvl>=hp.pot_max-100 then
	   return lingwu_next()
	end
	
	   if hp.neili<1000 then
	      if hp.exp>20000000 or score.gender=='无' then
	         return go(lingwu_eat,'武当山','茶亭')
	      else
	         return lingwuSleep()
	      end
		 end
       --yunAddInt()
       flag.idle=nil
       exe('yun jing;#3(lingwu '..skill..')')
	  -- exe('alias action 少林领悟就是好啊，就是好！')
	   create_timer_s('walkWait4',3,'lingwu_alias')
       --return check_bei(lingwu_alias,1.8)原来的程序。
end
function lingwu_eat()
   if locl.room=="茶亭" then
   flag.food=0 
   exe('sit chair;knock table;get tao;#3(eat tao);get cha;#4(drink cha);drop cha;drop tao;fill jiudai')
    check_bei(lingwu_go)
    else
       return go(lingwu_eat,'武当山','茶亭')
    end
end
function lingwu_alias()
	exe('yun jing')
   -- exe('alias action 少林领悟就是好啊，就是好！')
end
function lingwu_next()
    EnableTriggerGroup("lingwu",false)
    tmp.lingwu=tmp.lingwu+1
    local length=table.getn(skillsLingwu)
    if tmp.lingwu>length then
       flag.lingwu=0
       lingwudie=1
   xxpot=hp.pot_max
       --return check_bei(lingwu_finish)
	return lingwu_finish()
    else
       local skill=skillsLingwu[tmp.lingwu]
	--print(skillsLingwu[tmp.lingwu])
       if skills[skill] and skills[skill].lvl>0 and skills[skill].lvl<hp.pot_max-100 then
          return check_bei(lingwu_goon,1)
       else
          return lingwu_next()
       end
    end
end
function lingwu_finish1()
	EnableTimer('walkWait4',false)
	checkWait(lingwu_finish,1.5)
end
function lingwu_finish()
    messageShow('少林领悟完成')
    local skill=skillsLingwu[tmp.lingwu]
    EnableTriggerGroup("lingwu",false)
    DeleteTriggerGroup("lingwu")
    exe('cha')
       flag.lingwu=0
    if tmp.lingwu>1 and tmp.lingwu<=table.getn(skillsLingwu) then
       table.remove(skillsLingwu,tmp.lingwu)
       table.insert(skillsLingwu,1,skill)
    end
	dis_all()
    flag.lingwu=0
	--weapon_unwield()
	  -- local leweapon=GetVariable("learnweapon")
	  -- exe('cha;unwield '..leweapon)
	return check_busy(ggoff)
end
function xuexiTrigger()
    DeleteTriggerGroup("xuexi")
    create_trigger_t('xuexi1',"^(> )*你(\\D*)".. score.master .."(\\D*)指导",'','xuexiAction')
    create_trigger_t('xuexi2',"^(> )*你现在正忙着呢。",'','xuexiAction')
    create_trigger_t('xuexi3',"^(> )*你今天太累了，结果什么也没有学到。",'','xuexiSleep')
    create_trigger_t('xuexi4',"^(> )*(六脉神剑|你不能再学习欢喜禅了|经脉学|你不能再学习|你的基本功火候未到|你不能再提高|你的太极拳火候太浅|兰花拂穴手乃黄岛主家传绝学|兰花拂穴手乃峨嵋派祖师郭襄秘学|你的悟性，无法|你的\\D*(级别|悟性|身法)不够|华山门下怎么容得|你一个大老爷们|你已经无法提高|你的基本棒法太差|你的邪气太重|你刚听一会儿|斗转星移只能通过领悟来提高|学就只能学的这里了|你是侠义正士|只有大奸大恶之人|你不能再修炼毒技|你不能再学习经脉学|经脉学只能靠研读|你的读书写字|本草术理只能通过研习医学|你的基本功火候未到|你屡犯僧家数戒|这项技能你只能通过读书学习或实战|这项技能你已经无法通过学习|这项技能你恐怕必须找别人学了|你必须去学堂学习读书写字|也许是缺乏实战经验|你的(大乘佛法|禅宗心法)修为不够|这项技能你的程度已经不输你师父)",'','xuexiNext')
    create_trigger_t('xuexi5',"^(> )*你没有这么多潜能来学习",'','xuexiFinish')
    create_trigger_t('xuexi6',"^(> )*你要向谁求教？",'','xuexiFinish')
    create_trigger_t('xuexi7',"^(> )*你的「(\\D*)」进步了！",'','xuexiLvlUp')
    create_trigger_t('xuexi8',"^(> )*你觉得对太极拳理还不够理解",'','xueAskzhang')
    create_trigger_t('xuexi9',"^(> )*乾坤大挪移只能通过研习《乾坤大挪移心法》和领悟来提高",'','taoJiaozhang')
    create_trigger_t('xuexi10',"^(> )*(你手上的武器不能|你手里有兵器|空了手才能练|空手方能练习|你必须先找|空手时无法练|你使用的武器不对|练\\D*空手|学\\D*空手|\\D*必须空手|\\D*手里不能拿武器。)",'','xueWeapon')
    create_trigger_t('xuexi11',"^(> )*你的真气不够。",'','xuexi_neili')
	SetTriggerOption("xuexi1","group","xuexi")
    SetTriggerOption("xuexi2","group","xuexi")
    SetTriggerOption("xuexi3","group","xuexi")
    SetTriggerOption("xuexi4","group","xuexi")
    SetTriggerOption("xuexi5","group","xuexi")
    SetTriggerOption("xuexi6","group","xuexi")
    SetTriggerOption("xuexi7","group","xuexi")
    SetTriggerOption("xuexi8","group","xuexi")
    SetTriggerOption("xuexi9","group","xuexi")
    SetTriggerOption("xuexi10","group","xuexi")
	SetTriggerOption("xuexi11","group","xuexi")
    EnableTriggerGroup("xuexi",false)
end
function xuexi_neili()
EnableTimer('walkWait4',false)
DeleteTimer("walkWait4")
return zhunbeineili(xuexiContinue)
end
function checkxue()
 for p in pairs(weaponPrepare) do
	    if weaponStore[p] and not Bag[p] and Bag["黄金"].cnt>3 then
		   return checkWeapon(p)
		end
		if weaponFunc[p] and not Bag[p] then
		   return _G[weaponFuncName[p]]()
		end
	end
	exe('cha')
 if skills["parry"] and skills["parry"].lvl>=hp.pot_max-100 then
        return check_job()
    end
if GetVariable("otherskills")=="zhizao" or GetVariable("otherskills")=="duanzao" or GetVariable("otherskills")=="shenzhao" then
--return xuexi_gg()
if skills["shenzhao-jing"] and skills["shenzhao-jing"].lvl<201 then
       return learnSzj()
    end
end
if tonumber(GetVariable('lingwu_advance'))==1 then
    flag.lingwu=1
        return lingwu()
    end
if skills["parry"] and skills["parry"].lvl>=450 then
   flag.lingwu=1
        return lingwu()
    end
     return xuexi_gg()
end
function xuexi_gg()
return go(ggstart,'大理城','茶馆')
end
function ggstart()
exe('ask ying about start')
messageShow('鬼谷时间开启！')
if GetVariable("otherskills")=="zhizao" and score.gold>500 then
 if skills["zhizao"] and skills["zhizao"].lvl<221 then
       return zhizao() end
 if skills["zhizao"] and skills["zhizao"].lvl>221 then
       return xueskills_gold() 
    end
	end
if GetVariable("otherskills")=="duanzao" and score.gold>500 then
 if skills["duanzao"] and skills["duanzao"].lvl<221 then
       return duanzao() end
 if skills["duanzao"] and skills["duanzao"].lvl>221 then
	   return xueskills_gold()
    end
	end
if GetVariable("otherskills")=="shenzhao" and hp.pot>100 then
 if skills["shenzhao-jing"] and skills["shenzhao-jing"].lvl<201 then
       return learnSzj()
    end
	end
return checkWait(xuexi,2)
end
function xuexi()
     exe('nick 回门派学习')
	messageShow('回门派学习')
 	master = {}
	if hp.exp<150000 then
	   master.times=10
	else
	    -- ain usepot
	   master.times=math.modf(hp.jingxue/60)
	   if master.times>50 then 
          master.times=50
	   elseif master.times<10 then
          master.times=10
       end
	end
    master.skills = {}
	master.skills = utils.split(GetVariable("xuexiskill"),'|')

    flag.times=1

    return check_halt(xuexiParty)
end
function xuexiParty()
    xuexiTrigger()
    if score.master then
	   master.area = locateroom(score.master)
	   if master.area then
	      return go(xuexiCheck,master.area,master.room)
	   else
	      ColourNote ("white","blue","未找到师傅住址，请quit一下！")
	      return xuexiFinish()
	   end
    else
	   return xuexiFinish()
    end
end 
function xuexiCheck()
   exe('hp')
   if hp.food<40 or hp.water<40 then
   return xuexi_food() end   
    checkWield()
    if locl.id[score.master] then
	   if score.party and score.party=="少林派" and score.master=="无名老僧" and skills["buddhism"] and skills["buddhism"].lvl==200 then
	      exe('ask wuming about 佛法')
	   end
	 if hp.pot>100 then
	   exe('yun jing')
       return xuexiStart()
    end
	   ColourNote ("white","blue","师傅不在家！如果发现地址有错，请联系PTBX更新！")
	   return xuexiFinish()   
end
end
function xuexi_food()
if locl.room=="茶亭" then
   flag.food=0
   DeleteTimer("food")
   exe('sit chair;knock table;get tao;#3(eat tao);get cha;#4(drink cha);drop cha;drop tao;fill jiudai')
   check_bei(xuexiCheck)
    else
       return go(wudang_eat,'武当山','茶亭')
    end
end
function xuexiStart()
    EnableTriggerGroup("xuexi",true)
    tmp.xuexi=1
	
	if master.id and locl.item and locl.item[score.master] and not locl.item[score.master][master.id] then
	   master.id = nil
	end
	if not master.id and locl.item and locl.item[score.master] then
	master.id=locl.item[score.master]
	   for p in pairs(locl.item[score.master]) do
	       if not string.find(p," ") then
		      master.id = p
		   end
	   end
	end 
    exe('bai '..master.id)

	   weapon_unwield()

	if l_skill and weaponKind[l_skill] then
	   if master.skills[tmp.xuexi]=="yuxiao-jian" then l_skill = "xiao" end
	   for p in pairs(Bag) do
	       if Bag[p].kind and Bag[p].kind==l_skill then
		      exe('wield '.. Bag[p].fullid)
		   end
	   end
	end
        --yunAddInt()
	   local leweapon=GetVariable("learnweapon")
	   exe('wield '..leweapon)
    return xuexiContinue()
end
function xuexiAction()
	EnableTimer('walkWait4',false)
	DeleteTimer("walkWait4")
    EnableTriggerGroup("xuexi",false)
    if hp.exp>2000000 and hp.neili<300 then
       prepare_neili(xuexiContinue) 
    else
       check_bei(xuexiContinue)
    end
end
function xuexiContinue()
    flag.idle=nil
    xuefull=0
	if hp.neili<1000 then
	   exe('eat chuanbei wan')
	end
	if hp.neili<600 then
	   exe('eat neixi wan')
	end
	if score.party=='桃花岛' then
	exe('yun qimen')
	end
	if score.party=='古墓派' then
	exe('yun xinjing')
	end
    EnableTriggerGroup("xuexi",true)
      wait.make(function() 
       wait.time(1)
       exe('yun jing;xue '..master.id..' '.. master.skills[tmp.xuexi] ..' '.. master.times)
	   DeleteTimer("walkWait4")
	   create_timer_s('walkWait4',1.5,'xuexi_again')
       end)
	print('学习点数:'..master.times)
    exe('hp')
end
function xuexi_again()
	exe('yun jing;xue '..master.id..' '.. master.skills[tmp.xuexi] ..' '.. master.times)
end
function taoJiaozhang()
  	EnableTimer('walkWait4',false)
	DeleteTimer("walkWait4")
  EnableTriggerGroup("xuexi",false)
  print('问小张乾坤大挪移')
      wait.make(function() 
       wait.time(1)
       exe('#5 taojiao qiankundanuoyi;yun jing')
       end)
    check_busy(xuexiContinue)
end
function xueAskzhang()
	EnableTimer('walkWait4',false)
	DeleteTimer("walkWait4")
    EnableTriggerGroup("xuexi",false)
	print('问老张太极拳理')
      wait.make(function() 
       wait.time(1)
       exe('ask zhang about 太极拳理')
       end)
    check_busy(xuexiContinue)
end
function xueWeapon()
	EnableTimer('walkWait4',false)
	DeleteTimer("walkWait4")
    EnableTriggerGroup("xuexi",false)
	checkBags()
    tmp.skill=master.skills[tmp.xuexi]
    if skills[tmp.skill] then
       if skills[tmp.skill].lvl>=450 then
          skills[tmp.skill].mstlvl=450
       else
          skills[tmp.skill].mstlvl=skills[tmp.skill].lvl
       end
    end
	local l_skill = skillEnable[master.skills[tmp.xuexi]]
	   weapon_unwield()
	if l_skill and weaponKind[l_skill] then
	   for p in pairs(Bag) do
	       if Bag[p].kind and Bag[p].kind==l_skill then
		      exe('wield '.. Bag[p].fullid)
		   end
	   end
	 if score.party=='天龙寺' and skills['pangen-fu'] then
	 exe('wield gang fu')
	 end
	  if score.party=='丐帮' and skills['fengmo-zhang'] then
	  exe('wield gangzhang')
	  end
	   checkWield()
	end
    return check_bei(xuexiContinue)
end
function xuexiNext()
	EnableTimer('walkWait4',false)
	DeleteTimer("walkWait4")
    EnableTriggerGroup("xuexi",false)
    tmp.skill=master.skills[tmp.xuexi]
    if skills[tmp.skill] then
       if skills[tmp.skill].lvl>=450 then
          skills[tmp.skill].mstlvl=450
       else
          skills[tmp.skill].mstlvl=skills[tmp.skill].lvl
       end
    end
    tmp.xuexi=tmp.xuexi+1
    if tmp.xuexi>table.getn(master.skills) then
   xxpot=hp.pot_max
   xuefull=1
       return xuexiFinish()
    end
	local l_skill = skillEnable[master.skills[tmp.xuexi]]
	   weapon_unwield()
	if l_skill and weaponKind[l_skill] then
	   if master.skills[tmp.xuexi]=="yuxiao-jian" then l_skill = "xiao" end
	   for p in pairs(Bag) do
	       if Bag[p].kind and Bag[p].kind==l_skill then
		      exe('wield '.. Bag[p].fullid)
		   end
	   end
	   checkWield()
	end
	   local leweapon=GetVariable("learnweapon")
	   exe('wield '..leweapon)
    return check_bei(xuexiContinue)
end
function xuexiLvlUp(n,l,w)
	EnableTimer('walkWait4',false)
	DeleteTimer("walkWait4")
    for p in pairs(skills) do
        if skills[p].name==w[2] then
	   skills[p].mstlvl=nil
	   break
	end
    end
end
function xuexiSleep()
	EnableTimer('walkWait4',false)
	DeleteTimer("walkWait4")
    EnableTriggerGroup("xuexi",false)
    if score.party and score.party=="神龙教" then
       return go(xuexiSleepOver,"神龙岛","卧室")
    end
    if score.party and score.party=="少林派" then
       return go(xuexiSleepOver,"shaolin/sengshe3","")
    end
	if score.party and score.party=="大轮寺" and score.gender=='男' then
       return go(xuexiSleepOver,"xueshan/qingxinshe","")
    end
	if score.party and score.party=="大轮寺" and score.gender=='女' then
       return go(xuexiSleepOver,"xueshan/juechenyuan","")
    end
	if score.party and score.party=="丐帮" then
       return checkWait(xuexiSleepOver,3)
    end
    if score.party and score.party=="桃花岛" then
        if score.master and score.master=="黄药师" then
	   return go(xuexiSleepOver,"桃花岛","客房")
        else
           return go(xuexiSleepOver,"归云庄","客房")
        end
    end
	if score.master and score.master=="杨过" then
	   return go(xuexiSleepOver,"gumu/jqg/wshi","")
    end
	if score.master and score.master=="小龙女" then
	   return go(xuexiSleepOver,"gumu/jqg/wshi","")
    end
	if score.party and score.party=="武当派" and score.gender=='女' then
       return go(xuexiSleepOver,"武当山","女休息室")
    end
	if score.party and score.party=="武当派" and score.gender=='男' then
       return go(xuexiSleepOver,"武当山","男休息室")
    end
	if score.party and score.party=="天龙寺" then
       return go(xuexiSleepOver,"dali/wangfu/woshi2","")
    end
	if score.party and score.party=="姑苏慕容" then
       return go(xuexiSleepOver,"姑苏慕容","厢房")
    end
	if score.party and score.party=="星宿派" then
       return go(xxSleepcheck,"星宿海","逍遥洞")
    end
	if score.party and score.party=="昆仑派" then
       return go(xuexiSleepOver,"昆仑山","休息室")
    end
	if score.party and score.party=="华山派" and score.gender=='男' then
       return go(xuexiSleepOver,"华山","男休息室")
    end
	if score.party and score.party=="华山派" and score.gender=='女' then
       return go(xuexiSleepOver,"华山","女休息室")
    end
	if score.party and score.party=="铁掌帮" and score.gender=='男' then
       return go(xuexiSleepOver,"铁掌山","男休息室")
    end
	if score.party and score.party=="铁掌帮" and score.gender=='女' then
       return go(xuexiSleepOver,"铁掌山","女休息室")
    end
    return xuexiFinish()
end
function xxSleepcheck()
    exe('give caihua 1 coin')
    wait.make(function() 
       wait.time(2)
       exe('enter;sleep')
    xuexiSleepOver()
    end)
end
function xuexiSleepOver()
    exe('sleep')
    checkWait(xuexiParty,3)
end
function xuexiFinish()
	EnableTimer('walkWait4',false)
	DeleteTimer("walkWait4")
       messageShow('学习完毕！')
       flag.xuexi=0
    EnableTriggerGroup("xuexi",false)
    DeleteTriggerGroup("xuexi")
	   weapon_unwield()
	   local leweapon=GetVariable("learnweapon")
	   exe('cha;unwield '..leweapon)
	dis_all()
    return check_busy(ggoff)
end
function ggoff()
return go(askggoff,'大理城','茶馆')
end
function askggoff()   ---ask后不能移动，加一个防止flood没问成功
exe('ask ying about over')
messageShow('鬼谷结束！')
--if job.last=='hubiao' then
--return huashan()
--end
return checkWait(askggoffag,2)
end

function askggoffag()   ---ask后不能移动，加一个防止flood没问成功
 exe('ask ying about over')
 messageShow('鬼谷结束！')
 if job.last=='hubiao' then
 return huashan()
 end
 return checkWait(check_food,2)
end


function yunAddInt()
    if perform.force and perform.force=="linji-zhuang" then
       exe('yun zhixin')
    end
	--[[if perform.force and perform.force=="bihai-chaosheng" then
       exe('yun qimen')
    end]]
	if perform.force and perform.force=="yunu-xinjing" then
       exe('yun xinjing')
    end
end

function literate()                              --------------litearte顾炎武不需要身上有gold，跳过取钱
    exe('nick 学习读书写字')
       messageShow('学习读书写字！')
    DeleteTemporaryTriggers()
	if hp.exp<151000 then
	    master.times=10
	else
	    master.times=math.modf(hp.jingxue/120)
	    if master.times>50 then 
           master.times=50
        elseif master.times<10 then
           master.times=10
        end
	end
	--return check_busy(literate_gold)
	return check_busy(literateGo)
end
function literate_gold()
checkBags()
if Bag["黄金"] and Bag["黄金"].cnt<30 then
 return go(dali_qu,"大理城","大理钱庄")
 else
 return check_busy(literateGo)
 end
 end
function dali_qu()
    DeleteTriggerGroup("dali_qu")
	create_trigger_t('dali_qu1',"^(> )*你从银号里取出",'','checkdlgogo')
	SetTriggerOption("dali_qu1","group","dali_qu")
	exe('sc')
	if score.gold and score.gold<10 then
	return literate_nogold()
	end
	exe('qu 10 gold')
	create_timer_s('walkWait4',2,'dlgoldqu')
end
function literate_nogold()
EnableTimer('walkWait4',false)
DeleteTimer("walkWait4")
return check_busy(xuexi)
end
function dlgoldqu()
	exe('qu 10 gold')
end
function checkdlgogo()
	EnableTriggerGroup("dali_qu",false)
	DeleteTriggerGroup("dali_qu")
	EnableTimer('walkWait4',false)
    return check_halt(literateGo)
end
function literateGo()
	   weapon_unwield()
	   local leweapon=GetVariable("learnweapon")
	   exe('wield '..leweapon)
	   if skills['literate'].lvl < 140 then 
	   return go(literate_dlgg,'大理城','茶馆')
	   else
    --go(literate_yzgg,'大理城','茶馆') --修改打坐内力提前
	go(literate_yzggneili,'大理城','茶馆')
end
end

function literate_yzggneili()
   return prepare_neili(literate_yzgg)
end

function literate_dlgg()
exe('ask ying about start')
messageShow('学LIT鬼谷开启！')
wait.make(function() 
          wait.time(2)
 return go(literateCheck_DL,'大理城','书院')
 end)
end
function literate_yzgg()
exe('ask ying about start')
messageShow('学LIT鬼谷开启！')
wait.make(function() 
          wait.time(2)
 return go(literateCheck,'扬州城','书院')
 end)
end
function literateCheck_DL()
    DeleteTriggerGroup("litxuexi_dl")
    create_trigger_t('litxuexi_dl1',"^(> )*私塾先生对着你端详了一番道：“你因经验所制，暂时无法再进修更高深的学问了。”",'','litxuexiover_dl')
	create_trigger_t('litxuexi_dl2',"^(> )*你今天太累了，结果什么也没有学到",'','litxuexisleep_dl')
	create_trigger_t('litxuexi_dl3',"^.*说道：您太客气了，这怎么敢当？",'','litxuexiover_dl')
    SetTriggerOption("litxuexi_dl1","group","litxuexi_dl")
	SetTriggerOption("litxuexi_dl2","group","litxuexi_dl")
	SetTriggerOption("litxuexi_dl3","group","litxuexi_dl")
    EnableTriggerGroup("litxuexi_dl",true)
    flag.idle = nil
    exe('hp;yun jing')
    return prepare_neili(literateXue_dl)
end
function litxuexiover_dl()
    DeleteTriggerGroup("litxuexi_dl")
    dis_all()
    return check_halt(literateBack)
end
function literateXue_dl()
    if not locl.id["私塾先生"] then
	   return literateBack()
	end
    if hp.neili<100 then 
	   if hp.exp<800000 and needxuexi==1 then
	      return xuexi()
	   else
          return literateBack()
	   end
    end
	if hp.neili<1000 then
	   exe('eat '.. drug.neili2)
	end
	if score.party=='桃花岛' then
	exe('yun qimen')
	end
    if hp.pot>master.times-1 then
       --yunAddInt()
       exe('yun jing;xue xiansheng literate '..master.times)
       return check_busy(literateCheck_DL)
    elseif hp.pot<master.times then
       return literateBack()
	else
	   return literateBack() 
    end
end
function litxuexisleep_dl()
     return go(litxuexiSleepOver,"dali/wangfu/woshi2","")
end
function literateCheck()
    DeleteTriggerGroup("litxuexi")
    create_trigger_t('litxuexi1',"^(> )*顾炎武对着你端详了一番道：“你因经验所制，暂时无法再进修更高深的学问了。”",'','litxuexiover')
	create_trigger_t('litxuexi2',"^(> )*你今天太累了，结果什么也没有学到",'','litxuexisleep')
	create_trigger_t('litxuexi3',"^.*说道：您太客气了，这怎么敢当？",'','litxuexiover')
    SetTriggerOption("litxuexi1","group","litxuexi")
	SetTriggerOption("litxuexi2","group","litxuexi")
	SetTriggerOption("litxuexi3","group","litxuexi")
    EnableTriggerGroup("litxuexi",true)
    flag.idle = nil
    exe('hp;yun jing')
    return prepare_neili(literateXue)
end
function litxuexiover()
    DeleteTriggerGroup("litxuexi")
    dis_all()
    return check_halt(literateBack)
end
function literateXue()
    if not locl.id["顾炎武"] then
	   return literateBack()
	end
    if hp.neili<100 then 
	 if hp.exp<800000 and needxuexi==1 then
	      return xuexi()
	   else
          return literateBack()
	   end
    end
	if hp.neili<1000 then
	   exe('eat '.. drug.neili2)
	end
	if score.party=='桃花岛' then
	exe('yun qimen')
	end
    if hp.pot>master.times-1 then
       --yunAddInt()
       exe('yun jing;xue gu literate '..master.times)
       return check_busy(literateCheck)
    elseif hp.pot<master.times then
       return literateBack()
	else
	   return literateBack() 
    end
end
function literateBack()
       messageShow('读书写字学习完毕！')
	   weapon_unwield()
	   local leweapon=GetVariable("learnweapon")
	   exe('unwield '..leweapon)
    exe('hp;score;cha;yun jing;yun qi;yun jingli')
	dis_all()
    return check_busy(ggoff)
end
function litxuexisleep()
  if score.gender=='男' then
     return go(litxuexiSleepOver,"songshan/nan-room","")
  else
     return go(litxuexiSleepOver,"songshan/nv-room","")
  end
end
function litxuexiSleepOver()
    exe('sleep')
    checkWait(literateGo,3)
end
function duanzao()
    exe('nick 学习锻造')
    DeleteTemporaryTriggers()
	if hp.exp<151000 then
	    master.times=3
	else
	    master.times=math.modf(hp.jingxue/120)
	    if master.times>50 then master.times=50 end
	end
	return check_busy(duanzaoGo)
end
function duanzaoGo()
    return go(duanzaoCheck,'扬州城','兵器铺')
end
function duanzaoCheck()
    flag.idle = nil
    exe('score;hp;cha')
    checkBags()
    return checkWait(duanzaoXue,0.8)
end
function duanzaoXue()
    if not locl.id["铸剑师"] then
	   return duanzaoBack()
	end
    if hp.neili<100 then 
          return duanzaoBack()
    end
	if hp.neili<1000 then
	   exe('eat '.. drug.neili2)
	end
    if skills["duanzao"] and skills["duanzao"].lvl>=221 then
       return duanzaoBack()
    end
    if Bag and Bag["黄金"] and Bag["黄金"].cnt and Bag["黄金"].cnt>30 and hp.pot>master.times-1 then
       --yunAddInt()
       exe('yun jing;xue shi duanzao '..master.times)
       return duanzaoCheck()
    elseif hp.pot<master.times then
       return duanzaoBack()
    elseif score.gold>300 then
       return check_bei(duanzao_gold,1)
	else
	   return duanzaoBack() 
    end
end
function duanzao_gold()
return go(duanzaoQu,'扬州城','天阁斋')
end
function duanzaoQu()
    DeleteTriggerGroup("duanzaoQu")
	create_trigger_t('duanzaoQu1',"^(> )*你从银号里取出",'','checkdzgogo')
	SetTriggerOption("duanzaoQu1","group","duanzaoQu")
	exe('qu 20 gold')
	create_timer_s('walkWait4',3,'yzgoldqu')
end
function yzgoldqu()
	exe('qu 20 gold')
end
function checkdzgogo()
	EnableTriggerGroup("duanzaoQu",false)
	DeleteTriggerGroup("duanzaoQu")
	EnableTimer('walkWait4',false)
    return check_halt(back_duanzao)
end
function back_duanzao()
return go(duanzaoCheck,'扬州城','兵器铺')
end
function duanzaoBack()
    exe('hp')
      return check_busy(ggoff)
end

function zhizao()
    exe('nick 学习织造')
    DeleteTemporaryTriggers()
	if hp.exp<151000 then
	    master.times=3
	else
	    master.times=math.modf(hp.jingxue/120)
	    if master.times>50 then master.times=50 end
	end
	return check_busy(zhizaoGo)
end
function zhizaoGo()
   EnableTriggerGroup("zhizaoQu",false)
   EnableTimer('walkWait4',false)
   DeleteTimer("walkWait4")
    return go(zhizaoCheck,'大理城','裁缝店')
end
function zhizaoCheck()
    flag.idle = nil
    exe('score;hp;cha')
    checkBags()
    return checkWait(zhizaoXue,1)
end
function zhizaoXue()
    if not locl.id["老裁缝"] then
	   return zhizaoBack()
	end
    if hp.neili<100 then 
          return zhizaoBack()
    end
	if hp.neili<1000 then
	   exe('eat '.. drug.neili2)
	end
    if skills["zhizao"] and skills["zhizao"].lvl>=221 then
       return zhizaoBack()
    end
    if Bag["黄金"] and Bag["黄金"].cnt and Bag["黄金"].cnt>30 and hp.pot>master.times-1 then
       exe('yun jing;xue caifeng zhizao '..master.times)
       return zhizaoCheck()
    elseif hp.pot<master.times then
       return zhizaoBack()
    elseif score.gold>300 then
       return check_bei(zhizao_gold,1)
	else
	   return zhizaoBack() 
    end
end
function zhizao_gold()
EnableTriggerGroup("zhizaoQu",true)
return go(zhizaoQu,'大理城','大理钱庄')
end
function zhizaoQu()
    DeleteTriggerGroup("zhizaoQu")
	create_trigger_t('zhizaoQu1',"^(> )*你从银号里取出",'','zhizaoGo')
	SetTriggerOption("zhizaoQu1","group","zhizaoQu")
	exe('qu 20 gold')
	create_timer_s('walkWait4',3,'dlgoldqu')
end
function dlgoldqu()
	exe('qu 20 gold')
end
function zhizaoBack()
    exe('hp')
      return check_busy(ggoff)
end

function wuxingzhen()
    DeleteTemporaryTriggers()
    flag.times=1
    return go(wuxingzhenCheck,'襄阳城','卧房')
end
function wuxingzhenCheck()
    if locl.id["温方山"] then
       return wuxingzhenStart()
    else
       local l_cnt=table.getn(getRooms('卧房','襄阳城'))
       flag.times = flag.times + 1
       if flag.times > l_cnt then
          return wuxingzhenFinish()
       else
          local l_sour=getRooms('卧房','襄阳城')[flag.times-1]
	      return go(wuxingzhenCheck,'襄阳城','卧房',l_sour)
       end
    end
end
function wuxingzhenStart()
    exe('yun jing')
	exe('ask wen fangshan about 五行阵')
    if math.random(1,5)==1 then
       exe('cha;hp')
       locate()
    end
    return check_bei(wuxingzhenCon,1)
end
function wuxingzhenCon()
    if skills["wuxing-zhen"] and skills["wuxing-zhen"].lvl>159 then
       return wuxingzhenFinish()
    end
    if not locl.id["温方山"] or hp.pot<10 then 
       return wuxingzhenFinish()
    end
    return checkWait(wuxingzhenStart,0.5)
end
function wuxingzhenFinish()
    return check_heal()
end

function checkPrepare()
      print('checkPrepare start')
      EnableTriggerGroup("poison",false)
      DeleteTriggerGroup("poison")
	  for p in pairs(weaponPrepare) do
	    if weaponStore[p] and not Bag[p] and Bag["黄金"].cnt>2 then
		   return checkWeapon(p)
		end
		if weaponFunc[p] and not Bag[p] then
		   return _G[weaponFuncName[p]]()
		end
	end	
	if hp.exp>200000 and score.tb>10 then --修改兑换武器经验加了2个零
	for p in pairs(armorStoreId) do
		if armorStoreId[p] and not Bag[p] then
		   return weapon_lost()
		end
	end
	end
    exe('hp;wear all')
	if hp.qixue_per<90 and hp.exp>500000 then
	return check_xue()
	end
	if lostletter==1 and needdolost==1 then
     return letterLost()
  end
    if hp.exp<100000 then
       return checkPrepareOver()
    end
    if hp.food<40 or hp.water<40 then
		return check_food()
	end
	if hp.jingxue_per<90 or hp.qixue_per<60 then
		return check_xue()
	end
	if hp.jingxue_per<50 then
		exe('fu huoxue dan')
	end
	if autobook==1 then
	return dushu()
	end
	if autoskill==1 then
	return fullSkill()
	end
	if buyyao==1 then
	if Bag["川贝内息丸"] and Bag["川贝内息丸"].cnt<3 and score.gold>100 and drugPrepare["川贝内息丸"] then
	return checkNxw()
    end
	--if Bag["内息丸"] and Bag["内息丸"].cnt<8 and score.gold>100 and drugPrepare["内息丸"] then
	--return checkNxw()
    --end
	if score.tb and score.tb>100 and Bag["大还丹"] and Bag["大还丹"].cnt<1 and drugPrepare["大还丹"] then
       return checkdhd()
    end
	--if Bag["活血疗精丹"] and Bag["活血疗精丹"].cnt<2 and score.gold>100 and drugPrepare["活血疗精丹"] then
       --return checkLjd()
    --end
	  if Bag["蝉蜕金疮药"] and Bag["蝉蜕金疮药"].cnt<12 and score.gold>100 and drugPrepare["蝉蜕金疮药"] then  --这里改蝉蜕药的购买
       return checkHxd()
    end 
end	
    if Bag["镣铐"] then
	   return tiaoshui()
	end

    if Bag and Bag["白银"] and Bag["白银"].cnt and (Bag["白银"].cnt>100 or Bag["白银"].cnt<50) then
       return check_gold()
    end
    if (Bag and Bag["黄金"] and Bag["黄金"].cnt and Bag["黄金"].cnt<count.gold_max and score.gold>count.gold_max) or (Bag and Bag["黄金"] and Bag["黄金"].cnt and Bag["黄金"].cnt>count.gold_max*4) then
      return check_gold()
	end	
	if not flag.item then
       if score.party and score.party=="峨嵋派" and not Bag["腰带"] then
          return check_item()
	   end
       if score.party=="少林派" and not Bag["护腰"] and not Bag["护腕"] then
	      return check_item()
	   end
	end
  if locl.weekday == '四' and locl.hour ==8 then
     print('避开周四服务器重启高峰，错后火折和酒袋购买时间一小时！')
  else
	if not Bag["火折"] and drugPrepare["火折"] then
       return checkFire()
    end
	
	if not Bag["牛皮酒袋"] and drugPrepare["牛皮酒袋"] then
       return checkJiudai()
    end
  end	
	local l_cut = false
	for p in pairs(Bag) do
	    if weaponKind[Bag[p].kind] and weaponKind[Bag[p].kind]=="cut" then
		   l_cut = true
		end
	end
	if not l_cut and not Bag["木剑"] then
	   weaponPrepare["木剑"] = true
	   return checkWeapon("木剑")
	end
	 
		if Bag["韦兰之锤"] then
	  	 return checkHammer()
		end

	for p in pairs(Bag) do
	    if Bag[p] and itemSave[p] then
           return checkYu(p)
		end
	    if Bag[p].id and Bag[p].id["yu"] and string.find(p,"玉") then
		   return checkYu(p)
		end
		  if Bag[p].id and Bag[p].id["jintie chui"] and string.find(p,"金铁锤") then
		   return checkYu(p)
		end
		  if Bag[p].id and Bag[p].id["shentie chui"] and string.find(p,"神铁锤") then
		   return checkYu(p)
		end
    end
	
	
	if needjinchai==1 then
		return go(getchai,"扬州城","杂货铺")
	end
        
    --[[local x=check_xuezhu_status()
    if x=='0' then return getxuezhu0() end
    if x=='-1' or x=='1' then return getxuezhu1() end

	if Bag and Bag["野菊花"] and not Bag["铜钥匙"] then
	   return go(get_key,'扬州城','小盘古')
	end
	if Bag and not Bag["铜钥匙"] then
	   return check_key()
	end                  -------------如果有稳定的大米拿野菊花，这一段可以启用 
	if Bag and not Bag["绳子"] then
	   return check_rope()
	end]]
	
    return checkPrepareOver()
end
function checkPrepareOver()
  print('checkPrepareOver start')
if g_stop_flag == true then
        print("任务结束，游戏暂停")
        g_stop_flag = false
        return go(disAll,'扬州城','当铺')
    end	
    condition.busy=0
    vippoison=0
     exe('score;cond')	 
  if needxuexi==1 and tonumber(GetVariable('flagautoxuexi'))==1 then
     return check_xuexi() end
  if autoHB==1 and job.last=='hubiao' then
  return huashan()
  end
  if autoHB==1 and job.last~='hubiao' then
	 if (tonumber(GetVariable("hb_team_call"))==1 and HBcaptaingo==1) or tonumber(GetVariable("hb_team_captain"))==0 then
	    return hubiao()
	 end
  end
     return check_job()
end
function getchai()
    wait.make(function() 
	    wait.time(1)
	    exe('qu jin chai')
		needjinchai=0
	    return check_busy(getshengzi,3)
	end)
end
function getshengzi()
   	exe('qu sheng zi')
	return check_busy(getshengzi1,3)
end
function getshengzi1()
   	exe('qu cu shengzi')
	return check_busy(getfire,3)
end
function getfire()
   	exe('qu fire')
	return check_busy(getjuhua,3)
end
function getjuhua()
   	exe('qu ye juhua')
	return check_busy(askfuli,3)
end
function askfuli()
	DeleteTriggerGroup("vipfuli")
	create_trigger_t('askfuli1','^(> )*当铺老板为你在钱庄中存入(\\D*)锭黄金。','','vip_gold')
	create_trigger_t('askfuli2','^(> )*你的帐号增加了(\\D*)个通宝。','','vip_tongbao')
	create_trigger_t('askfuli3','^(> )*你增加了(\\D*)点内力修为。','','vip_neili')
	SetTriggerOption("askfuli1","group","vipfuli")
	SetTriggerOption("askfuli2","group","vipfuli")
	SetTriggerOption("askfuli3","group","vipfuli")
	return go(askfuli1,"扬州城","当铺")
end
function askfuli1()
	wait.make(function() 
	       wait.time(1)
	exe('ask laoban about 会员福利')
	return check_busy(askfuli2)
       end)
end
function askfuli2()
	exe('ask laoban about 会员基金')
		wait.make(function() 
	       wait.time(2)
    return check_busy(checkPrepare)
       end)	
end
function vip_gold(n,l,w)
	EnableTriggerGroup("vipfuli",false)
	DeleteTriggerGroup("vipfuli")
	messageShow('每周会员福利：   当铺老板为你在钱庄中存入【'..w[2]..'】锭黄金。','gold','black')
end
function vip_tongbao(n,l,w)
	messageShow('每周会员福利：   你的帐号增加了【'..w[2]..'】个通宝。','red','black')
end
function vip_neili(n,l,w)
	messageShow('每周会员福利：   你增加了【'..w[2]..'】点内力修为。','blue','black')
end
function vip_get_rope()
	wait.make(function()
       wait.time(3)
    exe('qu sheng zi')
	return check_busy(check_jobx,3)
    end)
end
function vip_get_juhua()
	wait.make(function()
       wait.time(3)
    exe('qu ye juhua')
	return check_busy(check_jobx,3)
    end)
end
function letterLost()
	job.name='dolost'
      sLetterlost()
         if job.last=="xueshan" then
         go(letterLostBegin,"大雪山","入幽口")
         elseif job.last=="huashan" then
         go(letterLostBegin,"华山","正气堂")
         elseif job.last=="wudang" then
         go(letterLostBegin,"武当山","三清殿")
         elseif job.last=="songxin" then
         go(letterLostBegin,"襄阳城","当铺")
end
end
function letterLostBegin()
  if needvpearl==1 and (condition.vpearl==0 or not condition.vpearl) then
   needvpearl=0
       return Govpearl()
    end
  if lostletter==1 then
     exe('chakan letter')
     exe('look letter')
	tmp.cnt=0
	--create_timer_s('walkWaitX',1,'llagain')
  end
end
function llagain()
    EnableTimer("walkWaitX",false)
    DeleteTimer("walkWaitX")
    if tmp.cnt then
	   tmp.cnt = tmp.cnt + 1
	end
	if not tmp.cnt or tmp.cnt>2 then
		return llagain_finish()
	end
	exe('chakan letter')
    exe('look letter')
end
function llagain_finish()
    EnableTimer("walkWaitX",false)
    DeleteTimer("walkWaitX")    
end
function sLetterlost()
    DeleteTriggerGroup("lostletter")
    create_trigger_t('lostletter1',"^(> )*请打开网页(\\N*)查看收信人。$",'','goMark')
    create_trigger_t('lostletter2',"^(> )*你乘人不注意，偷偷把失落的信笺扔进了路边的草丛。$",'','sendOk')
    --create_trigger_t('lostletter3',"^(> )*信封上的字迹模糊不清，不知何人遗落到此处。$",'','sendOk')
    create_trigger_t('lostletter4',"^(> )*你将失落的信笺交给",'','sendOk')
    create_trigger_t('lostletter5',"^(> )*你在信卦上写上收信人的名字。$",'','lookXin')
    create_trigger_t('lostletter6',"^(> )*你再看清楚一点。$",'','letterLostBegin')
    create_trigger_t('lostletter7',"^(> )*信封上写着：(\\D*)\\((\\D*)\\)",'','lostName')
	create_trigger_t('lostletter8',"^(> )*你决定跟随(\\D*)一起行动。$",'','lostfollow')
	create_trigger_t('lostletter9',"^(> )*信封上的字迹模糊不清，不知何人遗落到此处。$",'','discard_lost')
    SetTriggerOption("lostletter1","group","lostletter")
    SetTriggerOption("lostletter2","group","lostletter")
    SetTriggerOption("lostletter3","group","lostletter")
    SetTriggerOption("lostletter4","group","lostletter")
    SetTriggerOption("lostletter5","group","lostletter")
    SetTriggerOption("lostletter6","group","lostletter")
    SetTriggerOption("lostletter7","group","lostletter")
    SetTriggerOption("lostletter8","group","lostletter")
	SetTriggerOption("lostletter9","group","lostletter")
	llgo()
    EnableTriggerGroup("lostletter",true)
end
function discard_lost()
exe('discard letter')
job.name='idle'
    lookxin=0
    lostletter=0
return checkJob()
end
function lostfollow()
flag.find=1
flag.wait=0
road.id=nil
return lookXin()
end
function goMark(n,l,w)
    llagain_finish()
    print('开始填写失落信件人物ID')
	job.time.lll = os.clock()
	wait.make(function() 
	    wait.time(0.5)
    local m_cmd=w[2]
    --OpenBrowser (m_cmd)
    --打开插件
    local fni = GetInfo(67).."plugs\\"..score.id.."LLIN.ini"
    local fi = io.open(fni,"w")
    fi:write(m_cmd)
    fi:close()

    local fno = GetInfo(67).."plugs\\"..score.id.."LLOUT.ini"
    local fo = io.open(fno,"w")
    fo:write("")
    fo:close()
    --插件结束
    --return Markletter()
    create_timer_s('llwait',1.0,'llwait')
	end)
end
function llwait()
   local f = io.open(GetInfo(67).."plugs\\"..score.id.."LLOUT.ini","r")
   local s = f:read()
  
   f:close() --关闭流
  
   if not isNil(s) then
    print(s)
   if s~="" then
    DeleteTimer('llwait')
    SetVariable("lostname",s)

    local fno = GetInfo(67).."plugs\\"..score.id.."LLOUT.ini"
    local fo = io.open(fno,"w")
    fo:write("")
    fo:close()
        return check_bei(MarkName)
   end 
   end
   end
function Markletter()
      l_result=utils.inputbox ("输入信件人物ID，放弃请输入discard。", "lostname", GetVariable("lostname"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("lostname",l_result)
	   end
    return check_bei(MarkName)
end
function MarkName()
    local lost_cmd=GetVariable("lostname")
    if lost_cmd=='discard' then
      return exe('discard letter')
    else
      return exe('mark '..lost_cmd)
    end
end
function lookXin()
    lookxin=1
    exe('look letter')
	create_timer_st('lookxin_again',20,'lookxin_again')
end
function lookxin_again()
    exe('look letter')
end
function lostName(n,l,w)
    lost_name=string.lower(w[3])
    return create_timer_s('sendTo',0.5,'sendTo')
end
function sendXin()
    sLetterlost()
    create_timer_st('lookxin_again',20,'lookxin_again')
    return create_timer_s('sendTo',0.5,'sendTo')
end
function sendTo()
    exe('follow '..lost_name)
    exe('sendto '..lost_name)
end
function sendOk()
	job.name='idle'
    lookxin=0
    lostletter=0
    m_cmd=nil
    lostletter_locate=''
	  mousedown_lostletter()--马上刷新地点
	EnableTimer("sendTo",false)
    DeleteTimer( 'sendTo' )
	EnableTimer("lookxin_again",false)
    DeleteTimer('lookxin_again')
    DeleteTriggerGroup("lostletter")
	EnableTriggerGroup("duhe",true)
    EnableTriggerGroup("dujiang",true)
    exe('follow none;cond;jobtimes')
	sendOk_fix()
    return check_food()
	--return checkPrepareOver()--送信后不检查状态。
end
function dolost_hitlog_open()
	local fn = GetInfo (67) .. "logs\\" .. score.id .. '_dolost打傻记录_' .. os.time() ..".log"
    OpenLog (fn, false)
	WriteLog("<!-- Produced by MUSHclient v 4.84 - [url]www.mushclient.com[/url] -->")
	WriteLog("[table=800,Black]")
	WriteLog("[tr][td][font=新宋体]")
    ColourNote('Lime','black','开始写入打傻记录到'..fn..'！')
end
function dolost_hitlog_close(n,l,w)
	if w[1]==nil then return end
	if w[1]==score.name then
	   ColourNote('Lime','black','记录打傻完毕！(by)')
	   WriteLog("[/font][/td][/tr][/table]")
	   CloseLog()
	end
end
function check_xuexi()
  if MidHsDay[locl.time] and score.master=='风清扬' then
     return check_job()
  end
  --if needxuexi==0 then
     --return check_job()
  --end
  --if needxuexi==1 then
     return check_pot()
  --end
end
jobtimes = {}
function checkJobtimes(n,l,w)
	jobtimes[w[1]] = tonumber(w[2])
end
function checkJoblast(n,l,w)
    local joblast = {
      ["武当锄奸"] = "wudang",
	  ["大理送信"] = "songxin",
	  ["强抢美女"] = "xueshan",
	  ["惩恶扬善"] = "huashan",
	  ["长乐帮"]   = "clb",
	  ["天地会"]   = "tdh",
	  ["嵩山左冷禅"] = "songshan",
	  ["丐帮任务"] = "gaibang",
	  ["颂摩崖抗敌任务"] = "songmoya",
      ["丐帮捉蛇"] = "zhuoshe",
	  ["神龙岛师门"] = "sldsm",
	  ["少林教和尚"]   ="tmonk",
    }  

    if joblast[w[2]] then
       job.last = joblast[w[2]]
    end
end
function check_job()
    print('check_job')
    job_exp_tongji()
   if lostletter==1 and needdolost==1 then
     return letterLost()
  end
   if tonumber(GetVariable('xcheng_mode')) == 0 and hp.exp<1000000 then
      print('巡城到1M')
      kdummy=0
      return xunCheng()
   end
   exe('hp')
   if hp.qixue<70 then
   return check_xue()
   end   
   if score.party=="桃花岛" and (hp.shen>150000 or hp.shen<-150000) then
      return thdJiaohui()
   end 
   if condition.busy and condition.busy > 10 then 
      return check_halt(weaponUcheck)
   end
   if locl.weekday == '四' and locl.hour ==8 then
	--SetVariable("xuezhu_status",1) 
	SetVariable("jinchai",0)
	onelogin=1
	ggtime=1
	end
	--[[if smydie>=2 and tonumber(GetVariable("hb_team_captain"))==1 then         --会导致smy死亡2次之后报错，先关闭3196变量没有赋值
	autoHB=0
	tmp.hbid = utils.split(GetVariable("hb_team_id"),'|')
	exe('tell '..tmp.hbid[i]..' 壮烈三次了,暂停护镖')
	end
	if smydie>=2 and tonumber(GetVariable("hb_team_captain"))==0 then
	autoHB=0
	tmp.hbid = utils.split(GetVariable("hb_team_id"),'|')
	exe('tell '..tmp.hbid[i]..' 壮烈三次了,暂停护镖')
	end]]
	if job.last=='hubiao' then
	return huashan()
	end
	if autoHB==1 and tonumber(GetVariable("hb_team_call"))==1 then
  HBcaptaingo=1
  return hubiao() end
   if job.last=="xueshan" or job.last=="wudang" or job.last=="songxin" or hsruntime~=0 then
     print('check_halt(check_jobx)')
	  return check_halt(check_jobx)--雪山、武当任务结束后不检查武器状态，直接做下一个任务。
	else
	print('check_halt(weaponUcheck)')
      return check_halt(weaponUcheck)
   end
end

function check_jobx()
for p in pairs(weaponUsave) do
           if Bag and not Bag[p] then
              job.zuhe["songmoya"]=nil
           end
   end
 if fqyytmp.goArmorD==1 then
       return fqyyArmorGoCheck()	
 end
   if job.zuhe==nil then job.zuhe={} end
   if job.zuhe["zhuoshe"] and score.party~="丐帮" then job.zuhe["zhuoshe"]=nil end
   if job.zuhe["sldsm"] and score.party~="神龙教" then job.zuhe["sldsm"]=nil end
   if job.zuhe["songmoya"] and hp.exp<5000000 then job.zuhe["songmoya"]=nil end
   if smydie*1>=smyall*1 then smyteam=8 end
   if job.zuhe["husong"] and (score.party~="少林派" or hp.exp<2000000) then job.zuhe["husong"]=nil end
   if job.zuhe["songmoya"] and job.last~="songmoya" and mytime<=os.time() then return songmoya() end
   if job.zuhe["hubiao"] and job.last~="hubiao" and job.teamname and ((not condition.hubiao) or (condition.hubiao and condition.hubiao<=0)) then
      return hubiao()
   elseif job.zuhe["husong"] then
      return husong()
   else
      return checkJob()
   end
end
function checkJob()
EnableTimer('',false)
  if locl.weekday == '四' and locl.hour ==8 then
	--SetVariable("xuezhu_status","1")
	end  
   if job.zuhe["songxin2"] then
      job.zuhe["songxin2"]=nil
	  job.zuhe["songxin"]=true
	  flag.sx2=true
   end
   if job.last and job.zuhe[job.last] then
      if type(job.zuhe[job.last]) == "number" then
	      job.zuhe[job.last] = job.zuhe[job.last] + 1
	  else
	      job.zuhe[job.last] = 1
	  end
   end
   if countTab(job.zuhe) > 2 and not skills["xixing-dafa"] and job.zuhe["huashan"] and job.zuhe["wudang"] and jobtimes["华山岳不群惩恶扬善"] and jobtimes["武当宋远桥杀恶贼"] then
	  local t_hs = jobtimes["华山岳不群惩恶扬善"]
	  local t_wd = jobtimes["武当宋远桥杀恶贼"]
	  local t_times = math.fmod((t_hs+t_wd),50)
	  if t_times > 48 then
	     exe('pray pearl')
	     if job.last ~= "huashan" then
		    return huashan()
		 else
		    for p in pairs(job.zuhe) do
			    if p~= "huashan" and p~="wudang" and p~="hubiao" and p~="husong" and p~="songmoya" then
				   return _G[p]()
				end
			end
		 end
	  end
   end
   if score.party and score.party=="华山派" and countTab(job.zuhe) > 2 and not skills["dugu-jiujian"] and job.zuhe["huashan"] and job.zuhe["songxin"] then
	  local t_hs,t_sx,t_gb 
	  
	  if jobtimes["华山岳不群惩恶扬善"] then
	     t_hs = jobtimes["华山岳不群惩恶扬善"]
	  else
	     t_hs = 0
	  end
	  if jobtimes["大理王府送信任务"] then
	     t_sx = jobtimes["大理王府送信任务"]
	  else 
	     t_sx = 0
	  end
	  if jobtimes["丐帮吴长老杀人任务"] then
	     t_gb = jobtimes["丐帮吴长老杀人任务"]
	  else 
	     t_gb = 0
	  end
	  local t_times = math.fmod((t_hs+t_sx+t_gb),50)
	  if t_times > 47 then
	     exe('pray pearl')
	     if job.last ~= "huashan" then
		    return huashan()
		 else
		    for p in pairs(job.zuhe) do
			    if p~= "huashan" and p~="songxin" and p~="hubiao" and p~="husong" and p~="songmoya" then
				   return _G[p]()
				end
			end
		 end
	  end
   end

   if job.third and job.zuhe[job.third] and job.last~=job.third then
     if job.second and job.last==job.second then
       if job.third=="wudang" and (not job.wdtime or job.wdtime<=os.time()) then
          return _G[job.third]()
       end
       if job.third~="wudang" and job.third~="songmoya" then
          return _G[job.third]()
       end
     end
   end
   if job.first and job.zuhe[job.first] and job.last~=job.first then
      if job.first~="xueshan" and job.first~="wudang" and job.first~="songmoya" then
	     return _G[job.first]()
	  end
	  if job.first=="xueshan" and ((not condition.xueshan) or (condition.xueshan and condition.xueshan<=0)) then
		 return _G[job.first]()
	  end
	  if job.first=="wudang" and (not job.wdtime or job.wdtime<=os.time()) then
		 return _G[job.first]()
	  end
      if job.first=="xueshan" and condition.xueshan and condition.busy and condition.busy>=condition.xueshan then
         return _G[job.first]()
	  end
   end
   if job.second and job.zuhe[job.second] and job.last~=job.second then
      if job.second~="xueshan" and job.second~="wudang" and job.second~="songmoya" then
	     return _G[job.second]()
	  end
	  if job.second=="xueshan" and ((not condition.xueshan) or (condition.xueshan and condition.xueshan<=0)) then
		 return _G[job.second]()
	  end
	  if job.second=="wudang" and (not job.wdtime or job.wdtime<=os.time()) then
		 return _G[job.second]()
	  end
	  if job.second=="xueshan" and condition.xueshan and condition.busy and condition.busy>=condition.xueshan then
         return _G[job.second]()
	  end
   end

   for p in pairs(job.zuhe) do
        if job.last ~= p and job.first ~= p and job.second ~= p and p ~= "songmoya" then
	            return _G[p]()
		    end
	 end

   for p in pairs(job.zuhe) do
        if job.last ~= p and p ~= "songmoya" then
	            return _G[p]()
			end
	 end
   if job.zuhe["xueshan"] and job.last~="xueshan" then
      return xueshan()
   end
   if job.zuhe["huashan"] and job.last~="huashan" then
      return huashan()
   end
   if job.zuhe["tmonk"] and job.last~="tmonk" then
      return tmonk()
   end
   if job.zuhe["songxin"] and job.last~="songxin" then
      return songxin()
   end
   if job.zuhe["wudang"] and job.last~="wudang" then
      return wudang()
   end
   if job.zuhe["gaibang"] and job.last~="gaibang" then
      return gaibang()
   end
   if job.zuhe["zhuoshe"] and job.last~="zhuoshe" then
      return zhuoshe()
   end
   if job.zuhe["sldsm"] and job.last~="sldsm" then
      return sldsm()
   end
   if job.zuhe["songshan"] and job.last~="songshan" then
      return songshan()
   end
   if job.last~="songxin" then return songxin() end
   if job.last~="xueshan" and hp.shen<0 then return xueshan() end
   if job.last~="wudang" and hp.shen>100000 then return wudang() end
   if job.last~="gaibang" and hp.exp<2000000 and hp.shen>0 then return gaibang() end
   if job.last~="songshan" and hp.shen<0 and hp.exp<2000000 then return songshan() end

end

function lianxi(times,xskill)
    local weapontype
    flag.lianxi=1
    local lianxi_times=5
    if times~=nil then
       lianxi_times=times
    end
    tmp.xskill = xskill
    if perform.force then
	   if not skills[perform.force] then
	      perform.force = nil
	   end
	end
	if not perform.force then
	   tmp.lvl = 0
	   for p in pairs(skills) do
	       q=skillEnable[p]
		   if q=="force" then
		      if skills[p].lvl > tmp.lvl then
			     tmp.lvl = skills[p].lvl
				 perform.force = p
			  end
		   end
	   end
	end
    if flag.lianxi==1 then
       for p in pairs(skills) do
           q=skillEnable[p]
	       if (not tmp.xskill or tmp.xskill==p) and q=="force" and skills[p].full==0 and perform.force and perform.force==p then
	          lianxi_times=lianxi_times*0.5
              exe('lian '..q..' '..lianxi_times)
              flag.lianxi=0
			  tmp.pskill=p
              exe('hp')
	          break
	       end
       end
    end
    if flag.lianxi==1 then
       for p in pairs(skills) do
           q=skillEnable[p]
	       if (not tmp.xskill or tmp.xskill==p) and q=="dodge" and skills[p].full==0 then
	          exe('bei none;jifa '..q..' '..p)
              exe('lian '..q..' '..lianxi_times)
              flag.lianxi=0
			  tmp.pskill=p
	          break
	       end
       end
    end
    if flag.lianxi==1 then
       for p in pairs(skills) do
           q=skillEnable[p]
		   if p == "yuxiao-jian" then
		      weapontype = "xiao"
		   else
		      weapontype = q
		   end
	       if (not tmp.xskill or tmp.xskill==p) and q and p==perform.skill and skills[p].full==0 and ((weaponKind[weapontype] and weaponInBag(weapontype)) or unarmedKind[q]) then
	          exe('bei none;jifa '..q..' '..p)
			  weapon_unwield()
			  if weaponKind[q] then
                 exe('wield '.. q)
	             for k,v in pairs(Bag) do
			         if Bag[k].kind == weapontype then
			    	     exe('wield '..Bag[k].fullid)
			    	  end
			     end
			  end
              exe('i;lian '..q..' '..lianxi_times)
              flag.lianxi=0
			  tmp.pskill=p
	          break
	       end
       end
    end
    if flag.lianxi==1 then
       for p in pairs(skills) do
           q=skillEnable[p]
		   if p == "yuxiao-jian" then
		      weapontype = "xiao"
		   else
		      weapontype = q
		   end
	       if (not tmp.xskill or tmp.xskill==p) and q and q~="force" and skills[p].full==0 and ((weaponKind[weapontype] and weaponInBag(weapontype)) or unarmedKind[q]) then
	          exe('bei none;jifa '..q..' '..p)
			  weapon_unwield()
			  if weaponKind[q] then
                 exe('wield '.. q)
	             for k,v in pairs(Bag) do
			         if Bag[k].kind == weapontype then
			    	     exe('wield '..Bag[k].fullid)
			    	  end
			     end
			  end
	          exe('i;lian '..q..' '..lianxi_times)
	          flag.lianxi=0
			  tmp.pskill=p
	          break
	       end
       end
    end
	exe('say fun lianxi shujian')
    beiUnarmed()
end
function beiUnarmed()
    local l_skill=beiUnarmedSkill()
	if l_skill and type(l_skill)=="string" and skillEnable[l_skill] then
	   exe('bei none')
	   exe('jifa '.. skillEnable[l_skill] ..' '.. l_skill)
	   exe('bei '.. skillEnable[l_skill])
	end
	if skillHubei[l_skill] and skills[skillHubei[l_skill]] then
	   l_skill = skillHubei[l_skill]
	   exe('jifa '.. skillEnable[l_skill] ..' '.. l_skill)
	   exe('bei '.. skillEnable[l_skill])
	end
end
function beiUnarmedSkill()
    local l_lvl=0
	local l_skill
    if perform and perform.skill and skillEnable[perform.skill] and unarmedKind[skillEnable[perform.skill]] then
       --exe('bei '.. skillEnable[perform.skill])
       return perform.skill
    end
    for p in pairs(flagFull) do
       if skills[p] and skillEnable[p] and unarmedKind[skillEnable[p]] then
          q = skillEnable[p]
          --exe('bei none;jifa '..q..' '..p..';bei '..q)
	      return p
       end
    end
    if score.party then 
       if score.party=="峨嵋派" and skills["hand"] and skills["jieshou-jiushi"] then
          --exe('bei none;jifa hand jieshou-jiushi;bei hand')
	      return "jieshou-jiushi"
       end
       if score.party=="丐帮" and skills["strike"] and skills["xianglong-zhang"] then
          --exe('bei none;jifa strike xianglong-zhang;bei strike')
	      return "xianglong-zhang"
       end
    end
    for p in pairs(skills) do
        if skillEnable[p] then
	       q = skillEnable[p]
	       if unarmedKind[q] then
	          if skills[p].lvl>l_lvl then
	             l_lvl=skills[p].lvl
			     l_skill=p
	             --exe('bei none;jifa '..q..' '..p..';bei '..q)
	          end
	       end
	    end
    end
	return l_skill
end

function check_busy(func,p_cmd)
         disWait()
         DeleteTriggerGroup("check_bei")
         create_trigger_t('check_bei1',"^(> )*(你现在已经组合|你已准备有一种技能了|你至少不会这两种拳脚技能的其中之一|你现在已经准备好特殊技能了|指令格式：prepare)",'','beiok')
         create_trigger_t('check_bei2',"^(> )*你现在没有激发任何有效特殊技能。",'','beinone')
         SetTriggerOption("check_bei1","group","check_bei")
	     SetTriggerOption("check_bei2","group","check_bei")
	     EnableTriggerGroup("check_bei",true)
		 EnableTrigger("hp12",true)
         beihook=func         
         if not p_cmd then
	    exe('bei bei bei')
	 end
	 return bei_timer()
end
function bei_timer()
       return create_timer_s('bei',0.4,'bei_timer_set')
end
function bei_timer_set()
    --EnableTriggerGroup("check_bei",true)
   exe('bei bei bei')
end
function beinone()
   for p,q in pairs(skillEnable) do
       if skills[p] and q~="force" then
          exe('jifa '..q..' '..p)
		  if math.random(1,3)==1 then
		     break
		  end
	   end
   end
end 
function beiok()
     EnableTriggerGroup("check_bei",false)
	 EnableTrigger("hp12",false)
	 --DeleteTimer('bei')
	 --DeleteTriggerGroup("check_bei")
	 EnableTimer('bei',false)
	 if beihook==nil then
	    beihook=test
	 end
         return beihook()
end
function check_halt(func)
         disWait()
         DeleteTriggerGroup("check_halt")
         create_trigger_t('check_halt1',"^>*\\s*(你现在不忙。|你身形向后一跃，跳出战圈不打了。)",'','haltok')
         create_trigger_t('check_halt2',"^>*\\s*你现在很忙，停不下来。",'','halterror')
         SetTriggerOption("check_halt1","group","check_halt")
         SetTriggerOption("check_halt2","group","check_halt")
		 EnableTriggerGroup("check_halt",true)
		 EnableTrigger("hp12",true)
         halthook=func         
         exe('halt')
	     return halt_timer()
end
function halterror()
haltbusy=haltbusy+1
   if haltbusy>30 then
haltbusy=0
	locate()
   end
	if locl.room=="洗象池边" then
	 EnableTimer('halt',false)
    wait.make(function() 
       wait.time(5)
	   haltok()
    end)
	end
end
function halt_timer()
       return create_timer_s('halt',0.4,'halt_timer_set')
end
function halt_timer_set()
    --EnableTriggerGroup("check_halt",true)
   exe('halt')
end
function haltok()
haltbusy=0
     EnableTriggerGroup("check_halt",false)
	 EnableTrigger("hp12",false)
	 --DeleteTimer('halt')
	 EnableTimer('halt',false)
	 --DeleteTriggerGroup("check_halt")
	 if halthook==nil then
	    halthook=test
	 end
         return halthook()
end
busyhook=test
function check_bei(func,p_cmd)
         disWait()
         DeleteTriggerGroup("check_busy")
         create_trigger_t('check_busy1',"^>*\\s*没有这个技能种类，用",'','busyok')
         SetTriggerOption("check_busy1","group","check_busy")
		 EnableTriggerGroup("check_busy",true)
		 EnableTrigger("hp12",true)
         busyhook=func
	 if not p_cmd then
            exe('jifa jifa jifa')
	 end
	 jifa_timer()
end
function jifa_timer()
       return create_timer_s('jifa',0.4,'jifa_timer_set')
end
function jifa_timer_set()
    --EnableTriggerGroup("check_busy",true)	
    exe('jifa jifa jifa')
end
function busyok()
     EnableTriggerGroup("check_busy",false)		
     EnableTrigger("hp12",false)	 
	 --DeleteTimer('jifa')
	 EnableTimer('jifa',false)
	 if busyhook==nil then
	    busyhook=test
	 end
     return busyhook()
end

waithook=test
function checkWait(func,sec)
   disWait()
   DeleteTriggerGroup("checkwait")
   create_trigger_t('checkwait1','^(> )*你把 "action" 设定为 "等待一下" 成功完成。$','','checkWaitOk')
   SetTriggerOption("checkwait1","group","checkwait")
   EnableTriggerGroup("checkwait",true)
   EnableTrigger("hp12",true)
   waithook=func
   if sec == nil then sec=5 end
      return create_timer_s('waitimer',sec,'wait_timer_set')
end
function wait_timer_set()
   --EnableTriggerGroup("checkwait",true)
   exe('alias action 等待一下')
end
function checkWaitOk()
   EnableTriggerGroup("checkwait",false)
   EnableTrigger("hp12",false)
   --DeleteTimer('waitimer
   EnableTimer('waitimer',false)
   if waithook==nil then
      waithook=test
   end
   return waithook()
end

nexthook = test
function checkNext(func)
   disWait()
   DeleteTriggerGroup("checknext")
   create_trigger_t('checknext1','^(> )*你把 "action" 设定为 "继续前进" 成功完成。$','','checkNextOk')
   SetTriggerOption("checknext1","group","checknext")
   EnableTriggerGroup("checknext",true)
   EnableTrigger("hp12",true)
   nexthook=func
   next_timer_set()
   return create_timer_s('nextimer',0.5,'next_timer_set')
end
function next_timer_set()
   exe('alias action 继续前进')
end
function checkNextOk()
   EnableTriggerGroup("checknext",false)
   EnableTrigger("hp12",false)
   EnableTimer('nextimer',false)
   if nexthook==nil then
      nexthook=test
   end
   return nexthook()
end

function disWait()
    DeleteTriggerGroup("checkwait")
    DeleteTriggerGroup("check_bei")
    DeleteTriggerGroup("check_busy")
    DeleteTriggerGroup("check_halt")
    EnableTimer('waitimer',false)
    EnableTimer('jifa',false)
    EnableTimer('halt',false)
    EnableTimer('bei',false)
end
function resetWait()
	local t = GetTimerList()
	if t and type(t)=="table" then
	   for k, v in pairs (GetTimerList()) do 
	       --messageShow(v)
           if IsTimer(v)==0 and GetTimerInfo(v, 6) and tonumber(GetTimerInfo(v, 3))<tonumber(GetTimerInfo(v, 13)) then 
              --messageShow(v..' '..'设定时间:'..GetTimerInfo(v, 3)..'秒，下一次时间:'..GetTimerInfo(v, 13)..'秒。')
	          ResetTimers()
			   break
           end
       end
	end
end

function trans(num)
   local words={}
   local i=0
   num=string.gsub(num,"零十","10 ");
   num=string.gsub(num,"零","");
   num=string.gsub(num,"一","1");
   num=string.gsub(num,"二","2");
   num=string.gsub(num,"三","3");
   num=string.gsub(num,"四","4");
   num=string.gsub(num,"五","5");
   num=string.gsub(num,"六","6");
   num=string.gsub(num,"七","7");
   num=string.gsub(num,"八","8");
   num=string.gsub(num,"九","9");
   i=string.find(num,"十")
   if i==1 then
      num=string.gsub(num,"十","10 ")
   else
      num=string.gsub(num,"十","0 ")
   end
   num=string.gsub(num,"百","00 ")
   num=string.gsub(num,"千","000 ")
   num=string.gsub(num,"万","0000 ")
   for w in string.gmatch(num,"(%w+)") do
       table.insert(words,w)
   end
   i=0
   for p=1,table.getn(words) do
       i=i+tonumber(words[p])
   end
   return i
end
function idle()
    hp.expBak = hp.expBak or -1
    if hp.exp and hp.exp~=hp.expBak then
       hp.expBak = hp.exp
	   cntrI = countR(20)
	--else
	   --if cntrI()<1 then
	      --cntrI = countR(20)
	      --flag.idle = 100
	      --return idle_set()
	   --end
	end
    flag.idle=0
    return create_timer_s('idle',30,'idle_set')
end
function idle_set()
  if job.name=='ptbx' then return exe('praise ptbx') end
	if job.name=='songmoya' then
	print('正在颂摩崖任务中，当前死亡次数【'.. smydie ..'】次！设定杀死武士组数上限为【'.. smyteam ..'】组。进行组数为第【'.. yptteam ..'】组。')
	exe('flatter')
	return
	end
	if job.name=='husong' then
	exe('aq')
	print('正在护送任务中')
	tmp.husong=tmp.husong+1
	if tmp.husong>=40 then return husongQuit() end
	return
	end
	if job.name=='refine' then
	exe('admire2')
	print('正在提练矿石中')
	return
	end
	print(flag.idle)
	exe('poem')
   if not flag.idle or type(flag.idle)~="number" then
      flag.idle = 0
   end
   flag.idle = flag.idle + 1
   if flag.idle<10 then
        DeleteTimer("walkWait10")
        DeleteTimer("walkWait9")
	  if dest.area==nil then return end
      if dest.area=='铁掌山' or dest.area=='苗疆' then 
	     locate()
		 if locl.room ~= job.room then
		    return walk_wait()
		 else
			if job.name=='wudang' then return wudangFindAct() end
			if job.name=='huashan' then return huashanFindAct() end
			if job.name=='xueshan' then return xueshan_find_act() end
			if job.name=='songxin' or job.name=='songxin2' then return songxin_find_go() end
		 end
      end
      return
   end
   if flag.idle<6 and flag.jobmark=='hbfinish' then
   flag.jobmark='none'
   return checkPrepare() end
   if flag.idle<8 then
    if job.last=='xuncheng' then return xunCheng() end
	end
   if flag.idle<11 then
	 if job.name=='wudang' then return wudangFindFail() end
	 if job.name=='huashan' then return huashanFindFail() end
	 if job.name=='xueshan' then return xueshanFindFail() end
	 if job.name=='songxin' or job.name=='songxin2' then return songxinFindFail() end
   end
   if flag.idle<12 then
      chats_log("ROBOT 可能已发呆".. flag.idle/2 .."分钟!","deepskyblue")
	  return
   end
   if flag.idle>14 and job.name=='hubiao' then
   dis_all()
   job.name='idle'
  exe('team dismiss')
  return checkJob()
  end
   scrLog()
   dis_all()
   chats_locate('定位系统：发呆6分钟后，于【'.. locl.area .. locl.room ..'】重新启动系统！','red')
   Disconnect()
   Connect()
end

function checkWield()
   itemWield = {}
   exe('i')
end
function checkWieldCatch(n,l,w)
   itemWield = itemWield or {}
   local l_item = w[1]
   for p in pairs(weaponThrowing) do
       if string.find(l_item,p) then
	      l_item = p
	   end
   end
   itemWield[l_item] = true
end
function show_beinang()
   DeleteTriggerGroup("beinang")
   create_trigger_t('beinang1','^(> )*(\\D*)\\(','','checkbeinang')
   SetTriggerOption("beinang1","group","beinang")
   EnableTriggerGroup("beinang",true)
   Beinang={}
end
function checkbeinang(n,l,w)
  table.insert(Beinang, Trim(w[2]))
end
function checkYaoBags(func)
   DeleteTriggerGroup("Yaobags")
  create_trigger_t('Yaobags1','^(> )*(\\D*)(锭|两|张|颗|个)(白银|黄金|大还丹|活血疗精丹|蝉蜕金疮药|内息丸|川贝内息丸|壹仟两银票)\\(','','checkBagsMoney')
   create_trigger_t('Yaobags2','^(> )*你把 "action" 设定为 "检查药品" 成功完成。$','','checkYaoBagsOver')
   create_trigger_t('Yaobags3','^(> )*(\\D*)封失落的信笺','','checkBagsletter')
   create_trigger_t('Yaobags4','^(> )*(\\D*)(颗|个)(川贝内息丸|大还丹|活血疗精丹|内息丸|蝉蜕金疮药)\\(','','checkBagscbw')
   SetTriggerOption("Yaobags1","group","Yaobags")
   SetTriggerOption("Yaobags2","group","Yaobags")
   SetTriggerOption("Yaobags3","group","Yaobags")
   SetTriggerOption("Yaobags4","group","Yaobags")
   EnableTriggerGroup("Yaobags",true)
   Bag["黄金"].cnt=0
   Bag["白银"].cnt=0
   Bag["内息丸"].cnt=0
   Bag["川贝内息丸"].cnt=0
   Bag["蝉蜕金疮药"].cnt=0
   Bag["活血疗精丹"].cnt=0
   Bag["大还丹"].cnt=0
   tmp.yaobags=func
   exe('i;look bei nang')
   exe('alias action 检查药品')
end
function checkYaoBagsOver()
   checkBY()
    draw_bagwindow()
   EnableTriggerGroup("Yaobags",false)
   DeleteTriggerGroup("Yaobags")
   EnableTriggerGroup("beinang",false)
   DeleteTriggerGroup("beinang")
   --print(cty_cur,nxw_cur,hxd_cur)
   if tmp.yaobags~=nil then
      return tmp.yaobags()
   end
end

function checkBY()
  if not Beinang then Beinang={"空"} end
  for i = 1,#Beinang do
	    if Beinang[i] == "" or Beinang[i] == nil then
	        Beinang[i] = "数据丢失" 
	    end
	    local l_name = Beinang[i]
        if string.find(l_name,"蝉蜕金疮药") then
	        cty_cur = trans(Beinang[i])
	    end
		if string.find(l_name,"内息丸") then
            nxw_cur = trans(Beinang[i])
         end
	    if string.find(l_name,"川贝内息丸") then
	        cbw_cur = trans(Beinang[i])
	    end
	    if string.find(l_name,"活血疗精丹") then
	        hxd_cur = trans(Beinang[i])
	    end
		if string.find(l_name,"百花丸") then
	   bhy_cur = trans(Beinang[i])
	end
	    if string.find(l_name,"大还丹") then
	        dhd_cur = trans(Beinang[i])
	    end
	    if string.find(l_name,"铁矿石") then
	        kuang_cur = trans(Beinang[i])
	    end
  end
end

function checkBags(func)
   DeleteTriggerGroup("bags")
   create_trigger_t('bags1',"^(> )*你身上携带物品的别称如下",'','checkBagsStart')
   create_trigger_t('bags2',"^\\d*:(\\D*) = (\\D*)$",'','checkBagsId')
   create_trigger_t('bags3','^(> )*你目前已经拥有了(\\D*)件私有装备：(\\D*)。$','','checkBagsU')
  create_trigger_t('bags4','^(> )*(\\D*)(锭|两|张|个)(白银|黄金|壹仟两银票)\\(','','checkBagsMoney')
   create_trigger_t('bags5','^(> )*你把 "action" 设定为 "检查包裹" 成功完成。$','','checkBagsOver')
   create_trigger_t('bags6','^(> )*(\\D*)封失落的信笺','','checkBagsletter')
   create_trigger_t('bags7','^(> )*(\\D*)枚飞镖\\(','','checkBagsDart')
   create_trigger_t('bags8','^(> )*你身上带着(\\D*)件东西\\(负重\\s*(\\d*)\\.\\d*\\%\\)：','','checkBagsW')
   create_trigger_t('bags9','^(> )*(\\D*)(颗|个)(川贝内息丸|大还丹|活血疗精丹|内息丸|蝉蜕金疮药)\\(','','checkBagscbw')
   SetTriggerOption("bags1","group","bags")
   SetTriggerOption("bags2","group","bags")
   SetTriggerOption("bags3","group","bags")
   SetTriggerOption("bags4","group","bags")
   SetTriggerOption("bags5","group","bags")
   SetTriggerOption("bags6","group","bags")
   SetTriggerOption("bags7","group","bags")
   SetTriggerOption("bags8","group","bags")
   SetTriggerOption("bags9","group","bags")
   EnableTriggerGroup("bags",false)
   EnableTrigger("bags1",true)
   --print(cty_cur,nxw_cur,hxd_cur)
   bags={}
   Bag={}
   Bag["黄金"]={}
   Bag["黄金"].id={}
   Bag["黄金"].cnt=0
   Bag["白银"]={}
   Bag["白银"].id={}
   Bag["白银"].cnt=0
   Bag["枚飞镖"]={}
   Bag["枚飞镖"].id={}
   Bag["枚飞镖"].cnt=0
   Bag["壹仟两银票"]={}
   Bag["壹仟两银票"].id={}
   Bag["壹仟两银票"].cnt=0 
   Bag["内息丸"]={}
   Bag["内息丸"].id={}
   Bag["内息丸"].cnt=0
   Bag["川贝内息丸"]={}
   Bag["川贝内息丸"].id={}
   Bag["川贝内息丸"].cnt=0
   Bag["大还丹"]={}
   Bag["大还丹"].id={}
   Bag["大还丹"].cnt=0
   Bag["活血疗精丹"]={}
   Bag["活血疗精丹"].id={}
   Bag["活血疗精丹"].cnt=0
   Bag["蝉蜕金疮药"]={}
   Bag["蝉蜕金疮药"].id={}
   Bag["蝉蜕金疮药"].cnt=0  
   tmp.bags=func
   weaponUsave={}
   exe('id')
   checkWield()
   exe('i;look bei nang')
  exe('uweapon;alias action 检查包裹')
end
function checkBagscbw(n,l,w)
   local l_cnt=trans(Trim(w[2]))
   local l_name=Trim(w[4])
   if Bag[l_name] then
      Bag[l_name].cnt = l_cnt
   end
end
function checkBagsletter()
   lostletter=1
end
function checkBagsStart()
   EnableTriggerGroup("bags",true)
end
function checkBagsId(n,l,w)
             local l_name=Trim(w[1])
             local l_id=w[2]
             local l_set={}
             local l_cnt=0
             if not Bag[l_name] then
                    Bag[l_name]={}
             end
             Bag[l_name].id={}
             if string.find(l_id,",") then
                    l_set=utils.split(l_id,',')
                    l_id=l_set[1]
                    for k,v in ipairs(l_set) do
                            --table.insert(Bag[l_name].id,1,Trim(v))
                            Bag[l_name].id[Trim(v)]=true
                            if string.len(Trim(v))>l_cnt then
                                   Bag[l_name].fullid=Trim(v)
                                   l_cnt=string.len(Trim(v))
                            end
                    end
             else
                    Bag[l_name].id[Trim(l_id)]=true
                    --table.insert(Bag[l_name].id,1,Trim(l_id))
                    Bag[l_name].fullid=Trim(l_id)
             end
        if Bag[l_name].id["armor"] then
            Bag[l_name].kind = "armor"
        end        
    if Bag[l_name].id["glove"] then
            Bag[l_name].kind = "glove"
        end
    if Bag[l_name].id["boot"] then
            Bag[l_name].kind = "boot"
        end        
    if Bag[l_name].id["mantle"] then
            Bag[l_name].kind = "mantle"
        end        
    if Bag[l_name].id["coat"] then
            Bag[l_name].kind = "coat"
        end
    if Bag[l_name].id["cap"] then
            Bag[l_name].kind = "cap"
        end
    if Bag[l_name].id["belt"] then
            Bag[l_name].kind = "belt"
        end                   
        if Bag[l_name].id["dao"] or Bag[l_name].id["blade"] then
                    Bag[l_name].kind = "blade"
             end
             if Bag[l_name].id["jian"] or Bag[l_name].id["sword"] then
                    Bag[l_name].kind = "sword"
             end
             if Bag[l_name].id["xiao"] then
                    Bag[l_name].kind = "xiao"
             end
             if Bag[l_name].id["gun"] or Bag[l_name].id["club"] then
                    Bag[l_name].kind = "club"
             end
             if Bag[l_name].id["stick"] or Bag[l_name].id["zhubang"] or Bag[l_name].id["bang"] then
                    Bag[l_name].kind = "stick"
             end
             if Bag[l_name].id["bi"] or Bag[l_name].id["brush"] then
                    Bag[l_name].kind = "brush"
             end
             if Bag[l_name].id["qiang"] or Bag[l_name].id["spear"] then
                    Bag[l_name].kind = "spear"
             end
             if Bag[l_name].id["chui"] or Bag[l_name].id["hammer"] then
                    Bag[l_name].kind = "hammer"
             end
             if Bag[l_name].id["gangzhang"] or Bag[l_name].id["staff"] or Bag[l_name].id["zhang"] or Bag[l_name].id["jiang"] then
                    Bag[l_name].kind = "staff"
             end
             if Bag[l_name].id["bian"] or Bag[l_name].id["whip"] then
                    Bag[l_name].kind = "whip"
             end
             if Bag[l_name].id["hook"] then
                    Bag[l_name].kind = "hook"
             end
             if Bag[l_name].id["fu"] or Bag[l_name].id["axe"] then
                    Bag[l_name].kind = "axe"
             end
             if Bag[l_name].id["bishou"] or Bag[l_name].id["dagger"] then
                    Bag[l_name].kind = "dagger"
             end
             if weaponThrowing[l_name] then
                    Bag[l_name].kind = "throwing"
             end           
             if (string.find(l_name,"残篇") or string.find(l_name,"精要")) and not itemSave[l_name] then
                    exe('read book')
                    exe('drop '..Bag[l_name].fullid)
             end
             if string.len(l_name)==6 and (string.sub(l_name,5,6)=="药" or string.sub(l_name,5,6)=="丸" or string.sub(l_name,5,6)=="丹") and (not drugPoison[l_name] and not drugBuy[l_name]) then
                    exe('eat '.. Bag[l_name].fullid)
             end
             bags[l_name] = Trim(l_id)
             if Bag[l_name].cnt then
                    Bag[l_name].cnt = Bag[l_name].cnt + 1
             else
                    Bag[l_name].cnt = 1
             end
end
function checkBagsU(n,l,w)
        local t = Trim(w[3])
        local s = utils.split(t,',')
        for p,q in pairs(s) do
                if string.find(q,'⊕') then 
                        q = string.sub(q,3)
                end               
                weaponUsave[q] = true
        end
end
function checkBagsMoney(n,l,w)
   local l_cnt=trans(Trim(w[2]))
   local l_name=Trim(w[4])
   if Bag[l_name] then
      Bag[l_name].cnt = l_cnt
   end
end
function checkBagsW(n,l,w)
   local t = tonumber(w[3])
   Bag = Bag or {}
   Bag["ENCB"] = {}
   Bag["ENCB"].value = t
end
function checkBagsDart(n,l,w)
   local l_cnt=trans(Trim(w[2]))
   local l_name='枚飞镖'
   if Bag[l_name] then
      Bag[l_name].cnt = l_cnt
   end
end
--[[function checkBagsYao(n,l,w)
   local l_cnt=trans(Trim(w[2]))
   local l_name=Trim(w[3])
  if string.find(l_name,"蝉蜕金疮药") then
	   cty_cur = l_cnt
	end
	if string.find(l_name,"黄芪内息丹") then
	   nxw_cur = l_cnt
	end
	if string.find(l_name,"活血疗精丹") then
	   hxd_cur = l_cnt
	end
	if string.find(l_name,"大还丹") then
	   dhd_cur = l_cnt
	end
end]]
function checkBagsOver()
   draw_bagwindow()
   checkBY()
    draw_bagwindow() 
   EnableTriggerGroup("bags",false)
   DeleteTriggerGroup("bags")
   EnableTriggerGroup("beinang",false)
   DeleteTriggerGroup("beinang")
   if Bag["大碗茶"] then
      exe("drop cha")
   end
   if Bag["棉花种子"] then
      exe('drop '.. Bag["棉花种子"].fullid)
   end
   if Bag["棉花"] then
      exe('drop '.. Bag["棉花"].fullid)
   end   
   if Bag["青铜"] then
      exe('drop '.. Bag["青铜"].fullid)
   end
   if Bag["生铁"] then
      exe('drop '.. Bag["生铁"].fullid)
   end
   if Bag["粗绳子"] and Bag["粗绳子"].cnt>2 then
      exe('drop cu shengzi 2')
   end
   --print(cty_cur,nxw_cur,hxd_cur)
   if tmp.bags~=nil then
      return tmp.bags()
   end
end

function isInBags(p_item)
   if p_item==nil then return false end
   local l_cnt = 0
   local l_item
   if Bag[p_item] then
      l_item = p_item
	  l_cnt = l_cnt + Bag[p_item].cnt
      --return p_item,Bag[p_item].cnt
   end
   for k,v in pairs(Bag) do
       if type(v.id)=="table" then
          if v.id[p_item] then
			 l_item = k
			 l_cnt = l_cnt + Bag[k].cnt
          end
       end
   end
   if l_cnt>0 then
      return l_item,l_cnt
   end
   return false
end

function check_item()
   if score.party and score.party=="峨嵋派" and not Bag["腰带"] then
      return check_item_go()
   elseif score.party=="少林派" and not Bag["护腰"] and not Bag["护腕"] then
      return go(checkSengxie,'嵩山少林','防具库') 
   else
      return check_item_over()
   end
end
function checkSengxie()
   exe('ask chanshi about 僧鞋')
   return check_bei(checkHuyao)
end
function checkHuyao()
   exe('ask chanshi about 护腰')
   return check_bei(checkHuwan)
end
function checkHuwan()
   exe('ask chanshi about 护腕')
   return check_bei(check_item_over)
end
function check_item_go()
   go(check_item_belt,'峨嵋山','储物间')
end
function check_item_belt()
   exe('ask shitai about 皮腰带')
   check_bei(check_item_over)
end
function check_item_over()
   exe('drop shoes 2')
   exe('remove all')
   exe('wear all')

   flag.item=true
   
   return checkPrepare()
end
function VIPask()
   exe('ask laoban about 会员成长')
   check_bei(VIPask2)
end
function VIPask2()
   exe('ask laoban about 会员福利')
   check_bei(Ebookcheck)
end
function Ebookcheck()
    DeleteTriggerGroup("vipchk")
-- ain dls nv id Ebookcheck
    create_trigger_t('vipchk1',"^(> )*您是本站终身会员，本次购物免费。",'','vipEbookck')
    create_trigger_t('vipchk2',"^(> )*本周你已无法使用精英之书。",'','Yjwcheck')
    SetTriggerOption("vipchk1","group","vipchk")
    SetTriggerOption("vipchk2","group","vipchk")
    if score.id and score.id=='ptbx' and ptbxvip==1 then
       return exe('duihuan ebook')
    else
       return Gstart()
    end
end
function vipEbookck()
   check_halt(vipEbook)
end
function vipEbook()
   exe('duihuan ebook')
end
function Yjwcheck()
    DeleteTriggerGroup("vipchk")
-- ain dls nv id Yjwcheck
    create_trigger_t('vipchk1',"^(> )*您是本站终身会员，本次购物免费。",'','vipYjwck')
    create_trigger_t('vipchk2',"^(> )*本周你已无法使用玉肌丸。",'','Ygcheck')
    SetTriggerOption("vipchk1","group","vipchk")
    SetTriggerOption("vipchk2","group","vipchk")
    if score.id and score.id=='ptbx' and ptbxvip==1 then
       return check_halt(vipYjw)
    else
       return Gstart()
    end
end
function vipYjwck()
   check_halt(vipYjw)
end
function vipYjw()
   exe('duihuan yuji wan')
end
function Ygcheck()
    DeleteTriggerGroup("vipchk")
-- ain dls nv id Yjwcheck
    create_trigger_t('vipchk1',"^(> )*您是本站终身会员，本次购物免费。",'','vipYggo')
    create_trigger_t('vipchk2',"^(> )*本周你已无法使用鸳鸯锦帕。",'','Gstart')
    create_trigger_t('vipchk3',"^(> )*你给瑛姑一方鸳鸯锦帕",'','vipYgok')
    SetTriggerOption("vipchk1","group","vipchk")
    SetTriggerOption("vipchk2","group","vipchk")
    SetTriggerOption("vipchk3","group","vipchk")
    if score.id and score.id=='ptbx' and ptbxvip==1 then
       return check_halt(vipYg)
    else
       return Gstart()
    end
end
function vipYggo()
  return go(vipGhyg,'大理城','茶馆')
end
function vipGhyg()
  exe('guihuan ying gu')
end
function vipYgok()
  return go(vipYg,'扬州城','当铺')
end
function vipYg()
   exe('duihuan jinpa')
end
function Vipcheck()
    DeleteTriggerGroup("vipchk")
-- ain dls nv id vipcheck
    create_trigger_t('vipchk1',"^(> )*您是本站终身会员，本次购物免费。",'','vipxidu')
    create_trigger_t('vipchk2',"^(> )*你的朱睛冰蟾已经用完了。",'','vipxidu_over')
    create_trigger_t('vipchk3',"^(> )*本周你已无法使用",'','vipover')
    create_trigger_t('vipchk4',"^(> )*你先要用完现有的物品才能再次兑换。",'','vipxidu')
    SetTriggerOption("vipchk1","group","vipchk")
    SetTriggerOption("vipchk2","group","vipchk")
    SetTriggerOption("vipchk3","group","vipchk")
    SetTriggerOption("vipchk4","group","vipchk")
    --if vippoison==1 and ptbxvip==1 then
       --return exe('duihuan bingchan')
    --else
       return check_xue()
    --end
end
function vipxidu()
    return check_busy(xidu)
end
function xidu()
    exe('xidu')
end
function vipxidu_over()
   EnableTriggerGroup("vipchk",false)
   DeleteTriggerGroup("vipchk")
   vippoison=0
   return check_halt(vipdhd)
end
function vipdhd()
    DeleteTriggerGroup("vipdhd")
-- ain dls nv id vipcheck
    create_trigger_t('vipdhd1',"^(> )*您是本站终身会员，本次购物免费。",'','vipeatdhd')
    create_trigger_t('vipdhd2',"^(> )*你的大还丹已经用完了。",'','vipdhd_over')
    create_trigger_t('vipdhd3',"^(> )*本周你已无法使用",'','vipover')
    create_trigger_t('vipdhd4',"^(> )*你先要用完现有的物品才能再次兑换。",'','vipeatdhd')
    create_trigger_t('vipdhd5',"^(> )*看清楚点，这东西能吃吗？",'','vipdhd_over')
    SetTriggerOption("vipdhd1","group","vipdhd")
    SetTriggerOption("vipdhd2","group","vipdhd")
    SetTriggerOption("vipdhd3","group","vipdhd")
    SetTriggerOption("vipdhd4","group","vipdhd")
    SetTriggerOption("vipdhd5","group","vipdhd")
    exe('duihuan dahuan dan')
end
function vipeatdhd()
    return check_busy(eatdhd)
end
function eatdhd()
    exe('eat dan')
end
function vipdhd_over()
   EnableTriggerGroup("vipdhd",false)
   DeleteTriggerGroup("vipdhd")
    return check_halt(checkPrepare)
end
function vipover()
   EnableTriggerGroup("vipchk",false)
   DeleteTriggerGroup("vipchk")
   EnableTriggerGroup("vipdhd",false)
   DeleteTriggerGroup("vipdhd")
    ptbxvip=0
    inwdj=0
       return check_xue()
end
function checkvip()
   if score.id and score.id=='ptbx' and ptbxvip==1 then
      exe('cond')
      return go(Vipcheck,'扬州城','当铺')
   else
      return check_xue()
   end
end
function check_heal()
   collectgarbage("collect")
   dis_all()
   tmp={}
   jobTriggerDel()  
   job.name='heal'
   exe('nick 赶路中')
   if score.party and score.party=="神龙教" then
      exe('yun shougong '.. score.id)
   end
   if perform.force and skills[perform.force] then
	   --exe('jifa force '.. perform.force)
	   exe('jifa force hamagong')
   end
   button_smyteam()
   button_lostletter()
   check_halt(check_jingxue_count)
end
function check_jingxue_count()
      checkBags()
      return checkWait(check_jingxue,1)
end
function check_jingxue()
      if (hp.qixue_per<80 and hp.qixue_per>60) then
	     exe('eat chantui yao;hp')
                return checkHxd()
	     end
	     -- ain
	     if score.party=="大轮寺" and hp.neili>2000 then
	        exe('yun juxue')
	     end   
	     return check_halt(check_heal_over,1)      
end
function check_heal_newbie()
     if hp.qixue_per<100 then
	     exe('buy jinchuang yao;eat jinchuang yao;hp')
	     return check_busy(check_heal_newbie,3)
	  else
	     if hp.jingxue_per<100 then
	        exe('buy yangjing dan;eat yangjing dan')
	     end
	     return check_halt(check_heal_over,1)
      end
end
function check_heal_over()
    DeleteTriggerGroup("ck_xue_ask")
    DeleteTriggerGroup("ck_xue_accept")
    DeleteTriggerGroup("ck_xue_teach")
	if lostletter==1 and needdolost==1 then
     return letterLost()
  end
    return check_halt(checkPrepare)
end
function check_xue()
   EnableTrigger("hp19",false)
   tmp.xueSkills={}
   tmp.xueCount=1
   tmp.xueTimes=0
   for p in pairs(skills) do
       if skills[p].lvl > 100 then
          table.insert(tmp.xueSkills,p)
       end
   end
   if hp.exp>500000 then
      return go(check_xue_ask,'柳宗镇','正厅')
   else
      return check_xue_fail()
   end 
end
function check_xue_ask()
   DeleteTriggerGroup("ck_xue_ask")
   create_trigger_t('ck_xue_ask1','^(> )*你向薛慕华打听有关『疗伤』的消息。$','','check_xue_accept')
   create_trigger_t('ck_xue_ask2','^(> )*这里没有这个人','','check_xue_fail')
   SetTriggerOption("ck_xue_ask1","group","ck_xue_ask")
   SetTriggerOption("ck_xue_ask2","group","ck_xue_ask")
   DeleteTriggerGroup("ck_xue_accept")
   create_trigger_t('ck_xue_accept1','^(> )*薛慕华「嘿嘿嘿」奸笑了几声。$','','check_xue_teach')
   create_trigger_t('ck_xue_accept2','^(> )*一柱香的工夫过去了，你觉得伤势已经基本痊愈了。','','check_xue_heal')
   create_trigger_t('ck_xue_accept3','^(> )*薛神医拿出一根银针轻轻捻入你受伤部位附近的穴道','','check_xue_wait')
   create_trigger_t('ck_xue_accept4','^(> )*薛慕华似乎不懂你的意思。$','','check_xue_heal')
   create_trigger_t('ck_xue_accept5','^(> )*薛慕华「啪」的一声倒在地上，挣扎着抽动了几下就死了','','check_xue_fail')
   SetTriggerOption("ck_xue_accept1","group","ck_xue_accept")
   SetTriggerOption("ck_xue_accept2","group","ck_xue_accept")
   SetTriggerOption("ck_xue_accept3","group","ck_xue_accept")
   SetTriggerOption("ck_xue_accept4","group","ck_xue_accept")
   SetTriggerOption("ck_xue_accept5","group","ck_xue_accept")
   EnableTriggerGroup("ck_xue_accept",false)
   DeleteTriggerGroup("ck_xue_teach")
   create_trigger_t('ck_xue_teach1','^(> )*薛神医的这个技能已经不能再进步了。$','','check_xue_next')
   create_trigger_t('ck_xue_teach2','^(> )*你的这个技能太差了，薛神医可没兴趣$','','check_xue_next')
   SetTriggerOption("ck_xue_teach1","group","ck_xue_teach")
   SetTriggerOption("ck_xue_teach2","group","ck_xue_teach")
   EnableTriggerGroup("ck_xue_teach",false)
   DeleteTriggerGroup("ck_xue_busy")
   create_trigger_t('ck_xue_busy1','^(> )*您先歇口气再说话吧。$','','check_xue_busy')
   SetTriggerOption("ck_xue_busy1","group","ck_xue_busy")
   EnableTriggerGroup("ck_xue_busy",true)
   exe('ask xue muhua about 疗伤')
   create_timer_s('walkWait4',3.0,'check_xue_ask1')
end
function check_xue_ask1()
	exe('ask xue muhua about 疗伤')
end
function check_xue_busy()
      return check_busy(check_xue_ok,2)
end
function check_xue_ok()
   EnableTriggerGroup("ck_xue_accept",true)
   exe('ask xue muhua about 疗伤')
end
function check_xue_fail()
   EnableTriggerGroup("ck_xue_ask",false)
   EnableTriggerGroup("ck_xue_accept",false)
   EnableTriggerGroup("ck_xue_teach",false)
   return check_jingxue()
end
function check_xue_accept()
   EnableTimer('walkWait4',false)
   DeleteTimer("walkWait4")
   EnableTriggerGroup("ck_xue_ask",false)
   EnableTriggerGroup("ck_xue_accept",true)
end
function check_xue_wait()
   EnableTrigger("ck_xue_accept1",false)
   EnableTrigger("ck_xue_accept3",false)
   EnableTrigger("ck_xue_accept4",false)
end
function check_xue_teach()
   EnableTrigger("ck_xue_accept1",false)
   EnableTriggerGroup("ck_xue_accept",false)
   EnableTriggerGroup("ck_xue_teach",true)
   if tmpxueskill then
     for i=1,10 do
       exe('teach xue '.. tmpxueskill)
     end
   else
     for i=1,10 do
       exe('teach xue '.. tmp.xueSkills[tmp.xueCount])
     end
   end
       wait.make(function() 
       wait.time(0.5)
   return check_busy(check_xue_ok)
    end)
end
function check_xue_next()
   EnableTriggerGroup("ck_xue_teach",false)
   if tmpxueskill then
      tmpxueskill = nil
      tmp.xueCount = 0
   end
   tmp.xueCount = tmp.xueCount + 1
   if tmp.xueCount>table.getn(tmp.xueSkills) then
         return check_jingxue()
   else
      return checkWait(check_xue_teach,0.2)
   end
end
function check_xue_heal()
   EnableTriggerGroup("ck_xue_accept",false)
   DeleteTriggerGroup("ck_xue_ask")
   DeleteTriggerGroup("ck_xue_accept")
   DeleteTriggerGroup("ck_xue_teach")
   DeleteTriggerGroup("ck_xue_busy")
   exe('hp')
   if wdfaint==1 then
   wdfiant=0
   return check_busy(wdfaint_heal)
   end
   if sx2faint==1 then
    sx2faint=0	
   return check_busy(sx2faint_heal)
   end
   return check_bei(check_poison)
end
function sx2faint_heal()
exe('yun qi;yun jingli;yun jing;jifa all')
if hp.neili<hp.neili_max*0.6 then
return zhunbeineili(songxinfq)
else
return check_busy(songxinfq)
end
end
function songxinfq()
exe('yun qi;yun jingli;yun jing;jifa all')
go(songxin_fangqi,'大理城','驿站')
end
function wdfaint_heal()
exe('hp')
exe('yun qi;yun jingli;yun jing;jifa all')
if hp.neili<hp.neili_max*0.6 then
return zhunbeineili(wudangfq)
else
return check_busy(wudangfq)
end
end
function wudangfq()
go(wudangFangqi,'武当山','三清殿')
end
function check_poison()
   prepare_neili_stop()
   poison_dazuo()
   condition={}
   exe('cond')
   return check_busy(preparePoison)
end
function preparePoison()
   EnableTrigger("hp19",true)
   if (not condition.poison or condition.poison == 0) then
      return check_halt(checkdhd)
   end
   return dazuoPoison()
end
function dazuoPoison()
   condition.poison=0
   exe('set 积蓄;hp;yun qi;yun jing;yun jingli;cond')
   exe('dazuo '..hp.dazuo)
end
function poison_dazuo()
    DeleteTriggerGroup("poison")
    create_trigger_t('poison1',"^(> )*(过了片刻，你感觉自己已经将玄天无极神功|你将寒冰真气按周天之势搬运了一周|你只觉真力运转顺畅，周身气力充沛|你将纯阳神通功运行完毕|你只觉神元归一，全身精力弥漫|你将内息走了个一个周天|你将内息游走全身，但觉全身舒畅|你将真气逼入体内，将全身聚集的蓝色气息|你将紫气在体内运行了一个周天|你运功完毕，站了起来|你一个周天行将下来，精神抖擞的站了起来|你分开双手，黑气慢慢沉下|你将内息走满一个周天，只感到全身通泰|你真气在体内运行了一个周天，冷热真气收于丹田|你真气在体内运行了一个周天，缓缓收气于丹田|你双眼微闭，缓缓将天地精华之气吸入体内|你慢慢收气，归入丹田，睁开眼睛|你将内息又运了一个小周天，缓缓导入丹田|你感觉毒素越转越快，就快要脱离你的控制了！|你将周身内息贯通经脉，缓缓睁开眼睛，站了起来|你呼翕九阳，抱一含元，缓缓睁开双眼|你吸气入丹田，真气运转渐缓，慢慢收功|你将真气在体内沿脉络运行了一圈，缓缓纳入丹田|你将内息在体内运行十二周天，返回丹田|你将内息走了个小周天，流回丹田，收功站了起来|过了片刻，你已与这大自然融合在一起，精神抖擞的站了起|你感到自己和天地融为一体，全身清爽如浴春风，忍不住舒畅的呻吟了一声，缓缓睁开了眼睛)",'','poisondazuo_desc')
    create_trigger_t('poison2',"^(> )*你现在精不够，无法控制内息的流动！",'','checkDebug')
    SetTriggerOption("poison1","group","poison")
    SetTriggerOption("poison2","group","poison")
    EnableTriggerGroup("poison",true)
end
function poisondazuo_desc()
   if condition.poison and condition.poison==0 then
      EnableTriggerGroup("poison",false)
      DeleteTriggerGroup("poison")
      exe('yun jing;yun qi;yun jingli')
      return check_bei(check_food)
   end
   return poisonLianxi()
end
function poisonLianxi()
    exe('sxlian')
    wait.make(function() 
       wait.time(2)
   return check_busy(preparePoison)
    end)
end

function Ronglian()
    dis_all()
    job.name="refine"
    return go(Brefine,'扬州城','兵器铺')
end
function Brefine()
	kuangshi="tiekuang shi"
    DeleteTriggerGroup("refine")
    create_trigger_t('refine1',"^(> )*你没有足够的铁矿石。",'','refineOK')
    create_trigger_t('refine2',"^(> )*你没有足够的金矿石。",'','refineOK')
	create_trigger_t('refine3',"^(> )*你努力地催动炉火开始精炼铁矿石",'','refinecheck')
	create_trigger_t('refine4',"^(> )*你要精炼矿石的数量必须整千",'','refinenumber')
    SetTriggerOption("refine1","group","refine")
    SetTriggerOption("refine2","group","refine")
	SetTriggerOption("refine3","group","refine")
	SetTriggerOption("refine4","group","refine")
    EnableTriggerGroup("refine",true)
    create_timer_s('refine',2,'refine')
end
function refinecheck()
   exe('cond')
end
function refinenumber()
	kuang_cur=1000
end
function refine()
   exe('refine tiekuang shi')
   exe('l bei nang')
end
function refineGold()
   kuang_cur=0
   if kuang_cur1 and kuang_cur1>2000 then
	  kuang_cur1=math.modf(kuang_cur1/1000)*1000
   else
	  kuang_cur1=1000
   end
   kuang_cur=kuang_cur1
   kuangshi="jinkuang shi"
end
function refineOK()
	kuang_cur=0
	kuang_cur1=0
    DeleteTriggerGroup("refine")
	checkBags()
	wait.make(function() 
	      wait.time(3)
             dis_all()
	      fqyyArmorMessage('熔炼矿石完毕！')
	      return checkWait(check_food)
		   end)  
end

function check_food()
	exe('cha')--自动练功机器人设定。
    --set_sxlian()
	if score.gender=='无1' then --厂公专用，封闭房间
		map.rooms["city/mingyufang"].ways["north"]=nil
		map.rooms["changan/eastjie1"].ways["north"]=nil
	end
	map.rooms["sld/lgxroom"].ways["#outSld"]="huanghe/huanghe8"
	if score.party=='华山派'and hp.shen<0 then 
	   map.rooms["huashan/houtang"].ways["north"]=nil
     map.rooms["huashan/qianting"].ways["south"]=nil
  end
  if score.party=='姑苏慕容' then 
    map.rooms["mtl/anbian1"].ways["qu xiaozhu;#CboatWait"]=nil
    map.rooms["mtl/anbian1"].ways["qu yanziwu;#CboatWait"]=nil
    map.rooms["mr/testmatou1"].ways["qu yanziwu;#boatWait"]=nil
    map.rooms["mr/testmatou1"].ways["qu mr;#boatWait"]=nil
    map.rooms["mr/tingyuju"].ways["tan qin;#boatWait"]=nil
    map.rooms["mr/xiaodao"].ways["#boatYell"]=nil
    map.rooms["yanziwu/anbian3"].ways["#boatYell"]=nil
    map.rooms["yanziwu/anbian4"].ways["#boatYell"]=nil
  if skills["douzhuan-xingyi"]~=nil then
	    if not skills["douzhuan-xingyi"] and skills["douzhuan-xingyi"].lvl>130 and skills["douzhuan-xingyi"].lvl<170 then	dzxy_level=1 end
	    if not skills["douzhuan-xingyi"] and skills["douzhuan-xingyi"].lvl>170 and skills["douzhuan-xingyi"].lvl<200 then	dzxy_level=2 end
	    if not skills["douzhuan-xingyi"] and skills["douzhuan-xingyi"].lvl>200 and skills["douzhuan-xingyi"].lvl<hp.pot_max-100 then dzxy_level=3 end
	end
	end
	 beiUnarmed()
   dis_all()
   hpheqi()
	  if mydummy==true then
      return dummyfind()
    end
    --if job.zuhe["wudang"] then wait_kill='yes' end
   exe('nick 去武当吃喝;remove all;wear all')
exe('hp;unset no_kill_ap;yield no')
  if (hp.food<60 or hp.water<60) and hp.exp<1000000 then
      return go(dali_eat,'大理城','茶馆')
   elseif hp.food<60 or hp.water<60 then
      return go(wudang_eat,'武当山','茶亭')
   else
      check_bei(check_food_over)
   end
end
function wudang_eat()
   if locl.room=="茶亭" then
   flag.food=0
   DeleteTimer("food")
   exe('sit chair;knock table;get tao;#3(eat tao);get cha;#4(drink cha);drop cha;drop tao;fill jiudai')
   check_bei(check_food_over)
    else
       return go(wudang_eat,'武当山','茶亭')
    end
end
function check_food_over()
   if kuang_cur and kuang_cur>20000 then return Ronglian() end
    if flag.month==1 then
   if score.party=='天龙寺' then
   flag.month=0
   return tlsfenglu()
   end
   end
   local fenglu_age=14
    if score.party=='桃花岛' then
        if GetVariable("last_thd_fenglu") then
            fenglu_age=tonumber(GetVariable("last_thd_fenglu"))
        end
        if fenglu_age<score.age then
            return  go(get_thd_fenglu,'归云庄','前厅')
        end
	if score.party=='丐帮' then
	if GetVariable("last_gb_fenglu") then
            fenglu_age=tonumber(GetVariable("last_gb_fenglu"))
        end
        if fenglu_age<score.age then
            return  go(get_gb_fenglu,'扬州城','墓室')
        end
    end
	end
	if lostletter==1 and needdolost==1 then
     return letterLost()
  end
      return check_heal()
end
function get_thd_fenglu()
    exe('ask lu about 行走江湖')
    SetVariable("last_thd_fenglu",score.age)
    messageShow('桃花岛领俸禄:我今年已经到归云庄领过俸禄了')
    return check_heal()
end
function get_gb_fenglu()
    exe('ask xi about 立功')
    SetVariable("last_gb_fenglu",score.age)
    messageShow('丐帮领俸禄:我今年已经到丐帮领过俸禄了')
    return check_heal()
end
function dali_eat()
   if locl.room=="茶馆" then
   flag.food=0
   DeleteTimer("food")
   exe('#5(drink);e;e;s;buy baozi;#2(eat baozi)')
   check_bei(check_food_over)
    else
       return go(dali_eat,'大理城','茶馆')
    end
end

function check_pot(p_cmd)
 if hp.exp<5000000 then
   l_pot=hp.pot_max-100
 else
   l_pot=hp.pot_max-200
 end
   flag.lingwu=0
   local l_skill
   if perform.skill then
      l_skill=skillEnable[perform.skill]
   end
   
   job_exp_tongji()

   for p in pairs(skillEnable) do
      if skills[p] then
         q=skillEnable[p]
         -- ain 提前领悟
	     if q and skills[q] and q~="force" and (skills[q].lvl>219 or (score.party=="普通百姓" and skills[q].lvl>100)) and skills[q].lvl<hp.pot_max-100 and skills[q].lvl<=skills[p].lvl and hp.pot>=l_pot then
	        flag.lingwu=1
	     end
      end
   end
   if GetVariable("lingwuskill") or (tmp.xskill and skills[tmp.xskill] and skillEnable[tmp.xskill] and skills[skillEnable[tmp.xskill]]) then
      flag.lingwu = 0
	   
	  if tmp.xskill and skills[tmp.xskill] and skillEnable[tmp.xskill] and skills[skillEnable[tmp.xskill]] then
	     local p = tmp.xskill
		 local q = skillEnable[p]
	     if skills[q].lvl<hp.pot_max-100 and skills[q].lvl<=skills[p].lvl and skills[q].lvl<hp.pot_max-100 then
		    flag.lingwu=1
		 end
      end 
	  if GetVariable("lingwuskill") then
		 local q = GetVariable("lingwuskill")
		 for p in pairs(skills) do
	        if skillEnable[p]==q and skills[q].lvl<hp.pot_max-100 and skills[q].lvl<=skills[p].lvl and skills[q].lvl<hp.pot_max-100 then
		       flag.lingwu=1
		    end 
		 end
	  end
	end
   if score.party=="普通百姓" and hp.pot>=l_pot and score.gold and skills["literate"] and score.gold>50 and skills["literate"].lvl<hp.pot_max-100 and tonumber(GetVariable('flagautoxuexi'))==1 then
      return literate()
   end
      if score.party=="普通百姓" and hp.pot>=l_pot and skills["parry"].lvl<hp.pot_max-100 and skills["parry"].lvl>=101 then
         flag.lingwu=1
      end
    if score.party=="普通百姓" and flag.lingwu==1 then return checklingwu() end

    if score.party=="普通百姓" and skills["force"].lvl>50 then
		if skills["force"].lvl<101 then
		       return huxi()
			end
	if score.party=="普通百姓" and skills["force"].lvl==101 then
               exe('fangqi force 1;y;y;y')			
		       return huxi()
			end
              if score.party=="普通百姓" and skills["shenzhao-jing"] and skills["shenzhao-jing"].lvl<200 then
		    return learnSzj()
		 end
	end

   if score.party~="普通百姓" and hp.pot>=l_pot and flag.autoxuexi and flag.autoxuexi==1 and tonumber(GetVariable('flagautoxuexi'))==1 then
      if score.gold and skills["literate"] and score.gold>50 and skills["literate"].lvl<hp.pot_max-100 then
         return literate() 
      end

	  if score.party~="普通百姓" then
      for p in pairs(skills) do
          local q=qrySkillEnable(p)
	      if q and q['force'] and perform.force and p==perform.force and skills[p].lvl<100 and hp.pot>=l_pot and tonumber(GetVariable('flagautoxuexi'))==1 then
	         if skills[p].mstlvl and skills[p].mstlvl<=skills[p].lvl then
		     else
	            return checkxue()
		     end
	      end
      end

      for p in pairs(skills) do
          if flagFull[p] and not skillEnable[p] and skills[p].lvl<450 and skills[p].lvl<=skills["parry"].lvl and hp.pot>=l_pot and tonumber(GetVariable('flagautoxuexi'))==1 then
	         if not skills[p].mstlvl or skills[p].mstlvl>skills[p].lvl then
	            return checkxue()
	         end
	      end
      end

   if score.party~="普通百姓" and perform.skill and skills[perform.skill] and skills[perform.skill].lvl<450 and hp.pot>=l_pot and tonumber(GetVariable('flagautoxuexi'))==1 then
      return checkxue()
   end

      if flag.type and flag.type~='lingwu' and flag.xuexi==1 and hp.pot>=l_pot and tonumber(GetVariable('flagautoxuexi'))==1 then
         return checkxue()
      end
	  end
      if hp.pot>=l_pot and skills["parry"] and skills["parry"].lvl<hp.pot_max-100 and skills["parry"].lvl>=450 then
         flag.lingwu=1
      end
      if flag.lingwu==1 then
         return checklingwu()
      end

	  
      if flag.xuexi==1 and score.party~="普通百姓" and tonumber(GetVariable('flagautoxuexi'))==1 then
         return checkxue()
      end
   
   if hp.pot>=l_pot then
	  if skills["wuxiang-zhi"] then
	     if not flag.wxjz then flag.wxjz=0 end
		 if flag.wxjz==0 and skills["finger"].lvl>skills["wuxiang-zhi"].lvl and skills["wuxiang-zhi"].lvl<hp.pot_max-100 then
		    return wxjzFofa()
		 end
	  end
   end
   end
   --[[if score.party=='明教' then
      return check_dny()
   end]]
   return check_job()
   
end

function checkHammer()
    return go(checkHmGive,"扬州城","兵器铺")
end
function checkHmGive()
    if Bag["韦兰之锤"] then
	   exe('give '.. Bag["韦兰之锤"].fullid ..' to zhujian shi')
	end
	Bag["韦兰之锤"] = nil
	return checkPrepare()
end

function check_gold()
   tmp.cnt=0
   return go(check_gold_dali,"大理城","大理钱庄")
end
function check_gold_dali()
    if not locl.id["严掌柜"] then
	   return go(check_gold_xy,"襄阳城","宝龙斋")
	else
	   return check_gold_count()
	end
end
function check_gold_xy()
    if not locl.id["钱善人"] then
	   return go(check_gold_cd,"成都城","墨玉斋")
	else
	   return check_gold_count()
	end
end
--function check_gold_cd()
--    if not locl.id["王掌柜"] then
--	   return go(check_gold_yz,"扬州城","天阁斋")
--	else
--	   return check_gold_count()
--	end
--end
-- ain
function newbie_qu_gold()
   return go(check_gold_qu,"大理城","大理钱庄")
end
function check_gold_cd()
    if not locl.id["钱缝"] then
	   return go(check_gold_dali,"大理城","大理钱庄")
	else
	   return check_gold_count()
	end
end
function check_gold_count()
   if Bag['壹仟两银票'] and Bag['壹仟两银票'].cnt>10 then  
      exe('score;chazhang')
      if score.goldlmt and score.gold and (score.goldlmt-score.gold)>50 then
         return check_cash_cun()
	  end
   end
   if Bag and Bag["白银"] and Bag["白银"].cnt and (Bag["白银"].cnt>100 or Bag["白银"].cnt<50) then
      return check_silver_qu()
   end
   if (Bag and Bag["黄金"] and Bag["黄金"].cnt and Bag["黄金"].cnt<count.gold_max and score.gold>count.gold_max) or (Bag and Bag["黄金"] and Bag["黄金"].cnt and Bag["黄金"].cnt>count.gold_max*4) then
      return check_gold_qu()
   end

   return check_gold_over()
end
function check_cash_cun()
   if Bag['壹仟两银票'] then
      local l_cnt
      if score.goldlmt and score.gold and (score.goldlmt-score.gold)<Bag['壹仟两银票'].cnt*10 then
	     l_cnt = math.modf((score.goldlmt-score.gold)/10) - 1
	  else
	     l_cnt = Bag['壹仟两银票'].cnt
	  end
	  if l_cnt > 0 then
         exe('cun '.. l_cnt ..' cash')
	  end
   end
   checkBags()
   return checkWait(check_gold_check,3)
end
function check_silver_qu()
   local l_cnt=Bag["白银"].cnt-50
   exe('cun '.. l_cnt ..' silver')
   exe('qu 50 silver')
   --checkBags()
   --return checkWait(check_gold_check,3)
   return checkPrepareOver()
end
function check_gold_qu()
   local l_cnt=Bag["黄金"].cnt-count.gold_max*2
   exe('cun '.. l_cnt ..' gold')
   if Bag["黄金"].cnt<count.gold_max then
      exe('qu '.. count.gold_max ..' gold')
   end
   --checkBags()
   --return checkWait(check_gold_check,3)
   return checkPrepareOver()
end
function check_gold_check()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 30 then
      return check_heal()
   end
   return check_gold_count()
end
function check_gold_over()
   return checkPrepare()
end

function checkZqd()
   tmp.cnt=0
   return go(checkZqdBuy,randomElement(drugBuy["正气丹"]))
end
function checkZqdBuy()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 30 then
      return checkZqdOver()
   else
      exe('buy zhengqi dan')
      checkBags()
      return check_bei(checkZqdi)
   end
end
function checkZqdi()
   if Bag["黄金"] and Bag["黄金"].cnt>4 and (not Bag["正气丹"] or Bag["正气丹"].cnt<4) then
      return checkWait(checkZqdBuy,1)
   else
      return checkZqdOver()
   end
end
function checkZqdOver()
   checkBags()
   return check_bei(checkPrepare,1)
end

function checkXqw()
   tmp.cnt=0
   return go(checkXqwBuy,randomElement(drugBuy["邪气丸"]))
end
function checkXqwBuy()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 30 then
      return checkXqwOver()
   else
      exe('buy xieqi wan')
      checkBags()
      return check_bei(checkXqwi)
   end
end
function checkXqwi()
   if Bag["黄金"] and Bag["黄金"].cnt>4 and (not Bag["邪气丸"] or Bag["邪气丸"].cnt<4) then
      return checkWait(checkXqwBuy,1)
   else
      return checkXqwOver()
   end
end
function checkXqwOver()
   checkBags()
   return check_bei(checkPrepare,1)
end

function checkNxw()
	tmp.cnt=0
	EnableTriggerGroup("nxwgoldqu",true)
    return go(nxwgold,"成都城","墨玉斋")
end
function nxwgold()
    DeleteTriggerGroup("nxwgoldqu")
	create_trigger_t('nxwgoldqu1',"^(> )*你从银号里取出",'','checkNxwgogo')
	SetTriggerOption("nxwgoldqu1","group","nxwgoldqu")
	wait.make(function() 
          wait.time(2)
    exe('qu 20 gold;sc')
	create_timer_s('walkWait4',2,'nxwgoldqu')
       end)
	
end
function nxwgoldqu()
	tmp.cnt = tmp.cnt + 1
    if tmp.cnt > 20 then
        return checkNxwOver()
	end
	exe('qu 20 gold')
end
function checkNxwgogo()
	EnableTriggerGroup("nxwgoldqu",false)
	DeleteTriggerGroup("nxwgoldqu")
	EnableTimer('walkWait4',false)
    return check_halt(checkNxwdo)
end
function checkNxwdo()--添加购买蝉蜕药
   tmp.cnt=0
   --if score.gold and score.gold>100 and (Bag["内息丸"] and Bag["内息丸"].cnt<8 or Bag["川贝内息丸"] and Bag["川贝内息丸"].cnt<8) then
   if score.gold and score.gold>100 and  (Bag["川贝内息丸"] and Bag["川贝内息丸"].cnt<3) then
      return go(checkNxwBuy,randomElement(drugBuy["内息丸"]))
   else
   
      return checkNxwOver()
   end
 end
function checkNxwBuy()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 30 then
      return checkNxwOver()
   else
   if Bag["川贝内息丸"] and Bag["川贝内息丸"].cnt<3 then
         exe('buy chuanbei wan')
          end
         -- if Bag["内息丸"] and Bag["内息丸"].cnt<8 then
         --exe('buy neixi wan')
         --end		  
         checkYaoBags()
          return check_bei(checkNxwi)
   end
end
function checkNxwi()
   --if Bag["内息丸"] and Bag["内息丸"].cnt<8 and Bag["黄金"] and Bag["黄金"].cnt>4 then
     -- return checkWait(checkNxwBuy,1)
   if Bag["川贝内息丸"] and Bag["川贝内息丸"].cnt<3 and Bag["黄金"] and Bag["黄金"].cnt>4 then
      return checkWait(checkNxwBuy,1)
	  end
      return checkNxwOver()
end
function checkNxwOver()
   return check_bei(checkPrepare,1)
end

function checkHxd()
   tmp.cnt=0
   if score.gold and score.gold>100 and Bag["蝉蜕金疮药"] and Bag["蝉蜕金疮药"].cnt<12 then
      return go(checkHxdBuy,randomElement(drugBuy["蝉蜕金疮药"]))
   else
      return checkNxwOver()
   end
end
function checkHxdBuy()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 30 then
      return checkNxwOver()
   else
      exe('buy chantui yao')
       checkBags()
          return checkWait(checkHxdBag,1)
   end
end
function checkHxdBag()
   if Bag["蝉蜕金疮药"] and Bag["蝉蜕金疮药"].cnt<12 and Bag["黄金"] and Bag["黄金"].cnt>4 then
      return checkWait(checkHxdBuy,1)
   else
      return checkNxwOver()
end
end
function checkLjd()
   tmp.cnt=0
   if score.gold and score.gold>100 and Bag["活血疗精丹"] and Bag["活血疗精丹"].cnt<2 then
      return go(checkLjdBuy,randomElement(drugBuy["活血疗精丹"]))
   else
      return checkNxwOver()
   end
end
function checkLjdBuy()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 30 then
      return checkNxwOver()
   else
      exe('buy '..drug.jingxue)
       checkBags()
      return check_bei(checkLjdBag)
   end
end
function checkLjdBag()
   if Bag["活血疗精丹"] and Bag["活血疗精丹"].cnt<2 and Bag["黄金"] and Bag["黄金"].cnt>4 then
       return checkWait(checkLjdBuy,1)
   else
       return checkNxwOver()
   end
end
function checkdhd()
   tmp.cnt=0
   if score.tb and score.tb>100 and Bag["大还丹"] and Bag["大还丹"].cnt<1 then
       return go(checkdhdBuy,randomElement(drugBuy["大还丹"]))
   else
       return checkNxwOver()
   end
end
function checkdhdBuy()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 30 then
      return checkNxwOver()
   else
      exe('duihuan dahuan dan;score')
       checkBags()
      return check_halt(checkdhdBag)
   end
end
function checkdhdBag()
   if Bag["大还丹"] and Bag["大还丹"].cnt<1 and score.tb and score.tb>100 then
      return checkWait(checkdhdBuy,1)
   else
      return checkNxwOver()
   end
end
function checkbhy()
   tmp.cnt=0
   if score.tb and score.tb>100 and Bag["百花丸"].cnt<5 then
      return go(checkbhyBuy,randomElement(drugBuy["百花丸"]))
   else
      return checkNxwOver()
   end
end
function checkbhyBuy()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 30 then
      return checkNxwOver()
   else 
   return go(bhy_xy,"扬州城","当铺")
  end
 end
function bhy_xy()
      exe('duihuan baihua wan;score')
       checkBags()
      return check_halt(checkbhyBag)
end
function checkbhyBag()
   if Bag["百花丸"].cnt<5 and score.tb and score.tb>100 then
      return checkWait(checkbhyBuy,1)
   else
      return checkNxwOver()
   end
end
function checkFire()
   if not Bag["火折"] then
      return go(checkFireBuy,randomElement(drugBuy["火折"]))
   else
      return checkFireOver()
   end
end
function checkFireBuy()
   exe('buy fire')
   checkBags()
   return checkFireOver()
end
function checkFireOver()
   exe('drop fire 2')
   return check_busy(checkPrepare,1)
end

function checkJiudai()
   if not Bag["牛皮酒袋"] then
      return go(checkJiudaiBuy,randomElement(drugBuy["牛皮酒袋"]))
   else
      return checkJiudaiOver()
   end
end
function checkJiudaiBuy()
   exe('buy jiudai;buy jiudai;buy jiudai')
   checkBags()
   return checkJiudaiOver()
end
function checkJiudaiOver()
   return check_busy(checkPrepare,1)
end

function checkYu(p_yu)
    tmp.yu = p_yu
	return go(checkYuCun,"扬州城","杂货铺")
end
function checkYuCun()
    exe('cun '.. Bag[tmp.yu].fullid)
	return check_bei(checkYuOver)
end
function checkYuOver()
    exe('cun yu;drop yu')
	checkBags()
    return check_busy(checkPrepare,1)
end

function checkSell(p_sell)
    tmp.sell = p_sell
	return go(checkSellDo,"扬州城","当铺")
end
function checkSellDo()
    if Bag[tmp.sell] then
       exe('sell '.. Bag[tmp.sell].fullid)
	end 
	return check_bei(checkSellOver)
end
function checkSellOver()
    if Bag[tmp.sell] then
       exe('sell '.. Bag[tmp.sell].fullid)
       exe('drop '.. Bag[tmp.sell].fullid)
	end
	checkBags()
    return check_busy(checkPrepare,1)
end

function checkWeapon(p_weapon)
   tmp.cnt = 0
   tmp.weapon = p_weapon
   return go(checkWeaponBuy,weaponStore[p_weapon],'')
end
function checkWeaponBuy()
   tmp.cnt = tmp.cnt + 1
   if tmp.cnt > 10 then
      checkBags()
      return check_heal()
   else
      if tmp.weapon and weaponStoreId[tmp.weapon] then
         exe('list;buy '.. weaponStoreId[tmp.weapon])
         checkBags()
         return checkWait(checkWeaponI,3)
	  else
	     return check_heal()
	  end
   end
end
function checkWeaponI()
    if not Bag[tmp.weapon] then
       return checkWeaponBuy()
    else
       return checkWeaponOver()
    end
end
function checkWeaponOver()
    return checkPrepare()
end

function checkCodeError()
   return dis_all()
end

function checkRefresh()
   job.time["refresh"]=os.time()%900
end

function shujian_set()
   checkBags()
   exe('score;cha;hp')
   local l_result
   local l_tmp
   local t
      l_result=utils.inputbox ("你要学习的SKILLS(格式：force|shenyuan-gong|dodge|yanling-shenfa|sword|blade|parry)是?", "xuexiskill", GetVariable("xuexiskill"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("xuexiskill",l_result)
       Note ("学习设定完成")
        print(GetVariable("xuexiskill"))
 	   end
      l_result=utils.inputbox ("你要领悟的SKILLS(格式：force|dodge|sword|blade|parry)是?", "lingwuskills", GetVariable("lingwuskills"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("lingwuskills",l_result)
       Note ("领悟设定完成")
        print(GetVariable("lingwuskills"))
 	   end
      l_result=utils.inputbox ("你学习领悟时使用的加悟性武器是?", "learnweapon", GetVariable("learnweapon"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("learnweapon",l_result)
	   end
	  l_result=utils.inputbox ("你战斗后切换内力恢复武器的指令是（例如：unwield xxx sword;wield xxx blade）?", "recoveryweapon", GetVariable("recoveryweapon"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("recoveryweapon",l_result)
	   end
   l_result=utils.inputbox ("你的英文ID是?", "ID", GetVariable("id"), "宋体" , "12")
   if l_result~=nil then
      SetVariable("id",l_result)
   else
      DeleteVariable("id")
   end
   l_result=utils.inputbox ("你的密码是?", "Passwd", GetVariable("passwd"), "宋体" , "12")
   if l_result~=nil then
      SetVariable("passwd",l_result)
   else
      DeleteVariable("passwd")
   end

   l_result=utils.msgbox ( "是否打开记录窗口?", "FlagLog", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      flag.log="yes"
   else
      flag.log="no"
   end
   SetVariable("flaglog",flag.log)
   
   l_result=utils.msgbox ( "是否自动学习及领悟", "XuexiLingwu", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      flag.autoxuexi=1
   else
      flag.autoxuexi=0
   end
   SetVariable("flagautoxuexi",flag.autoxuexi)

   
   -- masterSet()
   
   pfmSet()
	  
   weaponSet()

   myUweapon()

   jobSet()
   
   drugSet() 

   Save()
   
   ColourNote ("red","blue","请使用start命令启动机器人，stop命令停止机器人，iset设置机器人！")
end

function masterSet()
   local l_result,l_tmp,t
   if score.party~="普通百姓" then
      l_result=utils.inputbox ("你的师傅的简短ID是?", "MasterId", GetVariable("masterid"), "宋体" , "12")
      if not isNil(l_result) then
         SetVariable("masterid",l_result)
         master.id=l_result
      end
      if not score.master or not masterRoom[score.master] then
         l_result=utils.inputbox ("你的师傅的居住地是?", "MasterRoom", GetVariable("masterroom"), "宋体" , "12")
         if l_result~=nil then
            SetVariable("masterroom",l_result)
            master.room,master.area=getAddr(l_result)
         end
      end
   end
end

function pfmSet()
   local l_result,l_tmp,t
   
   t = {}
   for p in pairs(skills) do
       if skillEnable[p]=="force" then
	      t[p] = skills[p].name
	   end
   end
   if countTab(t)==1 then
      for p in pairs(t) do
	      perform.force = p
	  end
   elseif countTab(t)>1 then
      l_result=utils.listbox("你使用的特殊内功是","特殊内功",t,GetVariable("performforce"))
	  if isNil(l_result) then
	     perform.force = nil
		 DeleteVariable("performforce")
      else
	     perform.force = l_result
		 SetVariable("performforce",l_result)
      end	  
   else
      perform.force = nil
   end
   
   t = {}
   for p in pairs(skills) do
       if skillEnable[p] and skillEnable[p]~= "force" then
	      t[p] = skills[p].name
	   end
   end
   if countTab(t)>0 then
      l_result=utils.listbox ("你准备战斗使用的功夫是?", "performSkill", t,GetVariable("performskill"))
      if not isNil(l_result) then
         SetVariable("performskill",l_result)
         perform.skill=l_result
      else
         perform.skill = nil
	     SetVariable("performskill",l_result)
      end
   end
   l_result=utils.inputbox ("战斗默认准备PFM(格式：bei none;bei claw;jifa parry jiuyin-baiguzhua;perform sanjue)是?", "PerformPre", GetVariable("performpre"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("performpre",l_result)
      perform.pre=l_result
      l_pfm = perform.pre
      create_alias('pfmset','pfmset','alias pfmpfm '.. l_pfm)
      Note("默认PFM")
      exe('pfmset')
   end
   l_result=utils.inputbox ("你的空手PFM(不使用武器的PFM)是?", "pfmks", GetVariable("pfmks"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pfmks",l_result)
      l_pfm=l_result
      create_alias('pfmks','pfmks','alias pfmpfm '.. l_pfm)
      Note("空手PFM")
      exe('pfmks')
   end
   l_result=utils.inputbox ("遇到慕容剑法用的PFM(使用不拿剑可以克制慕容的skills,慕容剑法的属性为：险)是?", "pfmmrjf", GetVariable("pfmmrjf"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pfmmrjf",l_result)
      l_pfm=l_result
      create_alias('pfmmrjf','pfmmrjf','alias pfmpfm '.. l_pfm)
      Note("不用剑的PFM")
      exe('pfmmrjf')
   end
   l_result=utils.inputbox ("遇到明教圣火令法PFM(使用拿武器克制明教的skills，圣火令法的属性为：奇)是?", "pfmshlf", GetVariable("pfmshlf"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pfmshlf",l_result)
      l_pfm=l_result
      create_alias('pfmshlf','pfmshlf','alias pfmpfm '.. l_pfm)
      Note("带兵器PFM")
      exe('pfmshlf')
   end
   l_result=utils.inputbox ("填写你的无属性PFM(使用无属性的skills，玄铁剑法改归属为空)是?", "pfmwu", GetVariable("pfmwu"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pfmwu",l_result)
      l_pfm=l_result
      create_alias('pfmwu','pfmwu','alias pfmpfm '.. l_pfm)
      Note("无属性PFM")
      exe('pfmwu')
   end
   l_result=utils.inputbox ("填写你的克制无属性PFM是?", "pwu", GetVariable("pwu"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pwu",l_result)
      l_pfm=l_result
      create_alias('pwu','pwu','alias pfmpfm '.. l_pfm)
      Note("克制无属性PFM")
      exe('pwu')
   end
    l_result=utils.inputbox ("填写你的空属性PFM(使用空属性的skills)是?", "pkong", GetVariable("pkong"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pkong",l_result)
      l_pfm=l_result
      create_alias('pkong','pkong','alias pfmpfm '.. l_pfm)
      Note("空属性PFM")
      exe('pkong')
   end
       l_result=utils.inputbox ("填写你的最大合气PFM(不管武功属性)是?", "pfmsanqing", GetVariable("pfmsanqing"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pfmsanqing",l_result)
      l_pfm=l_result
      create_alias('pfmsanqing','pfmsanqing','alias pfmpfm '.. l_pfm)
      Note("最大合气PFM")
      exe('pfmsanqing')
   end
   l_result=utils.inputbox ("填写你的正属性PFM(用verify 来查看你的pfm的属性再填写。格式：verify yunu-jianfa)是?         【被克制属性为：险。属性克制数值为：正130 刚空120 快110 妙险无100】无正属性可按后面的数值高低来填入对你有对应属性的FPM！", "pzhen", GetVariable("pzhen"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pzhen",l_result)
      perform.zhen=l_result
      l_pfm = perform.zhen
      create_alias('pfmzhen','pfmzhen','alias pfmpfm '.. l_pfm)
      Note("正属性PFM")
      exe('pfmzhen')
   end
   l_result=utils.inputbox ("填写你的奇属性PFM(用verify 来查看你的pfm的属性再填写。格式：verify yunu-jianfa)是?         【被克制属性为：妙。属性克制数值为：奇130 柔空120 慢110 无妙险100】无奇属性可按后面的数值高低来填入对你有对应属性的FPM！", "pqi", GetVariable("pqi"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pqi",l_result)
      perform.qi=l_result
      l_pfm = perform.qi
      create_alias('pfmqi','pfmqi','alias pfmpfm '.. l_pfm)
      Note("奇属性PFM")
      exe('pfmqi')
   end
   l_result=utils.inputbox ("填写你的刚属性PFM(用verify 来查看你的pfm的属性再填写。格式：verify yunu-jianfa)是?         【被克制属性为：慢。属性克制数值为：刚130 正空120 险110 慢快无100】无刚属性可按后面的数值高低来填入对你有对应属性的FPM！", "pgang", GetVariable("pgang"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pgang",l_result)
      perform.gang=l_result
      l_pfm = perform.gang
      create_alias('pfmgang','pfmgang','alias pfmpfm '.. l_pfm)
      Note("刚属性PFM")
      exe('pfmgang')
   end
   l_result=utils.inputbox ("填写你的柔属性PFM(用verify 来查看你的pfm的属性再填写。格式：verify yunu-jianfa)是?         【被克制属性为：快。属性克制数值为：柔130 奇空120 妙110 快慢无100】无柔属性可按后面的数值高低来填入对你有对应属性的FPM！", "prou", GetVariable("prou"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("prou",l_result)
      perform.rou=l_result
      l_pfm = perform.rou
      create_alias('pfmrou','pfmrou','alias pfmpfm '.. l_pfm)
      Note("柔属性PFM")
      exe('pfmrou')
   end
   l_result=utils.inputbox ("填写你的快属性PFM(用verify 来查看你的pfm的属性再填写。格式：verify yunu-jianfa)是?         【被克制属性为：刚。属性克制数值为：快130 妙空120 奇110 无刚柔100】无快属性可按后面的数值高低来填入对你有对应属性的FPM！", "pkuai", GetVariable("pkuai"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pkuai",l_result)
      perform.kuai=l_result
      l_pfm = perform.kuai
      create_alias('pfmkuai','pfmkuai','alias pfmpfm '.. l_pfm)
      Note("快属性PFM")
      exe('pfmkuai')
   end
   l_result=utils.inputbox ("填写你的慢属性PFM(用verify 来查看你的pfm的属性再填写。格式：verify yunu-jianfa)是?         【被克制属性为：柔。属性克制数值为：慢130 险空120 正110 无刚柔100】无慢属性可按后面的数值高低来填入对你有对应属性的FPM！", "pman", GetVariable("pman"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pman",l_result)
      perform.man=l_result
      l_pfm = perform.man
      create_alias('pfmman','pfmman','alias pfmpfm '.. l_pfm)
      Note("慢属性PFM")
      exe('pfmman')
   end
   l_result=utils.inputbox ("填写你的秒属性PFM(用verify 来查看你的pfm的属性再填写。格式：verify yunu-jianfa)是?         【被克制属性为：正。属性克制数值为：妙130 快空120 刚110 无正奇100】无妙属性可按后面的数值高低来填入对你有对应属性的FPM！", "pmiao", GetVariable("pmiao"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pmiao",l_result)
      perform.miao=l_result
      l_pfm = perform.miao
      create_alias('pfmmiao','pfmmiao','alias pfmpfm '.. l_pfm)
      Note("妙属性PFM")
      exe('pfmmiao')
   end
   l_result=utils.inputbox ("填写你的险属性PFM(用verify 来查看你的pfm的属性再填写。格式：verify yunu-jianfa)是?         【被克制属性为：奇。属性克制数值为：险130 慢空120 柔110 无正奇100】无险属性可按后面的数值高低来填入对你有对应属性的FPM！", "pxian", GetVariable("pxian"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pxian",l_result)
      perform.xian=l_result
      l_pfm = perform.xian
      create_alias('pfmxian','pfmxian','alias pfmpfm '.. l_pfm)
      Note("险属性PFM")
      exe('pfmxian')
   end
      l_result=utils.inputbox ("你FPK的PFM(用verify 来查看你的pfm的属性再填写格式：verify yunu-jianfa)是?", "pkpfm", GetVariable("pkpfm"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pkpfm",l_result)
	   end
      l_result=utils.inputbox ("你练功的次数是？", "mycishu", GetVariable("mycishu"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("mycishu",l_result)
      lianxi_times = l_result
    end
    Note("使用默认PFM")
    exe('pfmset')
   end

function myUweapon()
      l_result=utils.inputbox ("你需要GET的第一把武器ID是?", "myweapon", GetVariable("myweapon"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("myweapon",l_result)
	   end
      l_result=utils.inputbox ("你需要GET的第二把武器ID是?", "muweapon", GetVariable("muweapon"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("muweapon",l_result)
	   end
end

function jobSet()
   local l_result,l_tmp,t
   
   t={
       ["wudang"]  ="武当宋远桥",
       ["huashan"] ="华山岳不群",
    ["gaibang"]    ="丐帮吴长老",
     ["songmoya"]    ="颂摩崖抗敌任务",
     ["zhuoshe"] = "丐帮捉蛇",
       ["songxin"] ="大理送信",
	   ["songxin2"]="大理送信2",
	   ["xueshan"]   ="雪山抢美女",
     ["sldsm"] = "神龙岛师门",
     ["songshan"] = "嵩山左冷禅",
  --   ["hubiao"]  ="福州护镖",
       ["tmonk"] = "少林教和尚",
	   ["clb"]     ="长乐帮任务1",
	   ["husong"]  ="少林护送",
	   ["hqgzc"]  ="洪七公做菜",
   }
   
   t={}
   
   for p,q in pairs(job.list) do
       t[p] = q
   end
   
   if score.party~="丐帮" then t["zhuoshe"]=nil end
   if score.party~="神龙教" then t["sldsm"]=nil end
   if score.party~="少林派" or hp.exp>2000000 or hp.exp<300000 then t["tmonk"]=nil end
   if score.party~="少林派" or hp.exp<2000000 then t["husong"]=nil end
   if hp.exp<5000000 then t["songmoya"]=nil end
   if hp.shen<0 then t["gaibang"]=nil end
   if hp.shen<0 and score.party=="华山派" then t["huashan"]=nil end
   if hp.shen<0 then t["wudang"]=nil end
   if hp.shen>0 then t["songshan"]=nil end
   
   job.zuhe={}
   if GetVariable("jobzuhe") then
      tmp.job=utils.split(GetVariable("jobzuhe"),'_')
	  tmp.zuhe = {}
      for _,p in pairs(tmp.job) do
          tmp.zuhe[p]=true
      end
   end
   l_tmp=utils.multilistbox ("你的任务组合(请按CTRL多选)是?", "任务组合", t,tmp.zuhe)
   l_result=nil
   for p in pairs(l_tmp) do
       job.zuhe[p]=true
       if l_result then
          l_result = l_result .. '_' .. p
       else
          l_result = p
       end
   end
   if l_result~=nil then
      SetVariable("jobzuhe",l_result)
   end
   for p in pairs(t) do
       if not job.zuhe[p] then
	      t[p]=nil
	   end
   end
   job.first = nil
   job.second = nil
   t["husong"] = nil
   t["hubiao"] = nil
   if countTab(t)>2 then
      l_result=utils.listbox("你第一优先去的任务：","优先任务",t,GetVariable("jobfirst"))
      if l_result~=nil then
         SetVariable("jobfirst",l_result)
         job.first=l_result
		 t[job.first]=nil
      else
	     job.first = nil
         DeleteVariable("jobfirst")
      end
   end
   if countTab(t)>1 and job.first then
	  l_result=utils.listbox("你第二优先去的任务：","优先任务",t,GetVariable("jobsecond"))
      if l_result~=nil then
         SetVariable("jobsecond",l_result)
         job.second=l_result
      t[job.second]=nil
      else
	     job.second = nil
         DeleteVariable("jobsecond")
      end
   else
	  job.second = nil
      DeleteVariable("jobsecond")
   end
   if countTab(t)==1 and job.second then
	  l_result=utils.listbox("你第三个去的任务：","优先任务",t,GetVariable("jobthird"))
      if l_result~=nil then
         SetVariable("jobthird",l_result)
         job.third=l_result
      else
	     job.third = nil
         DeleteVariable("jobthird")
      end
   else
	  job.third = nil
      DeleteVariable("jobthird")
   end
   if not job.first then
      DeleteVariable("jobfirst")   
   end
   if not job.second then
      DeleteVariable("jobsecond")
   end
   if not job.third then
      DeleteVariable("jobthird")
   end

   if job.zuhe["songmoya"] then
      l_result=utils.inputbox ("设置一品堂任务杀到第几组?(默认为7组)使用默认组数请空白不要填写。", "ypttab", GetVariable("ypttab"), "宋体" , "12")
      if not isNil(l_result) then
         SetVariable("ypttab",l_result)
         smyteam=tonumber(l_result)
      else
         smyteam=10
      end
      l_result=utils.inputbox ("设置一品堂任务死亡几次不再上SMY!(默认为2次)使用默认组数请空白不要填写。", "yptdie", GetVariable("yptdie"), "宋体" , "12")
      if not isNil(l_result) then
         SetVariable("yptdie",l_result)
         smyall=tonumber(l_result)
      else
         smyall=2
      end
      l_result=utils.msgbox ( "设置一品堂任务是否开启双杀!(默认为no不开启)。", "双杀", "yesno", "?", 1 )
      if l_result and l_result=="yes" then
        double_kill=yes
      else
        double_kill=no
      end
      l_result=utils.inputbox ("设置一品堂任务前置BUFF!(Perform and Yun、没有请填写none)。", "pfbuff", GetVariable("pfbuff"), "宋体" , "12")
      if not isNil(l_result) then
      SetVariable("pfbuff",l_result)
      perform.buff=l_result
      l_pfm = perform.buff
      create_alias('pbuff','pbuff','alias pfmbuff '.. l_pfm)
      exe('pbuff')
      end
   end

   if job.zuhe["tdh"] then
      l_result=utils.inputbox ("天地会任务中间是否打座？(1为打座 0为不打座)", "tdhdazuo", GetVariable("tdhdazuo"), "宋体" , "12")
      if not isNil(l_result) then
         SetVariable("tdhdazuo",l_result)
         tdhdz=l_result
      else
         tdhdz=1
      end
   end
   
   if job.zuhe["hqgzc"] then
      l_result=utils.inputbox ("拿Pot还是Gold？(1为Pot 0为Gold)", "hqgzcjiangli", GetVariable("hqgzcjiangli"), "宋体" , "12")
      if not isNil(l_result) then
         SetVariable("hqgzcjiangli",l_result)
         hqgzcjl=l_result
      else
         hqgzcjl=1
      end
   end
   
   if job.zuhe["hubiao"] or job.zuhe["haizhan"] then
      if GetVariable("teamname") then
         l_result=utils.inputbox ("你组队护镖的队友(中文名称)是?", "TeamName", GetVariable("teamname"), "宋体" , "12")
      else
         l_result=utils.inputbox ("你组队护镖的队友(中文名称)是?", "TeamName", job.teamname, "宋体" , "12")
      end
      if not isNil(l_result) then
         SetVariable("teamname",l_result)
         job.teamname=l_result
      else
         DeleteVariable("teamname")
         job.teamname=nil
      end
      if GetVariable("teamlead") then
         l_result=utils.inputbox ("你组队护镖的队长(中文名称)是?", "TeamLead", GetVariable("teamlead"), "宋体" , "12")
      else
         l_result=utils.inputbox ("你组队护镖的队长(中文名称)是?", "TeamLead", job.teamlead, "宋体" , "12")
      end
      if not isNil(l_result) then
         SetVariable("teamlead",l_result)
         job.teamlead=l_result
      else
         DeleteVariable("teamlead")
         job.teamlead=nil
      end
   end
   
end

function drugSet() 
   drugPrepare={}
   local t={
   ["内息丸"] = "内息丸",
   ["川贝内息丸"] = "川贝内息丸",
   ["蝉蜕金疮药"] = "蝉蜕金疮药",
   ["活血疗精丹"] = "活血疗精丹",
   ["大还丹"] = "大还丹",
   ["火折"] = "火折",
   ["牛皮酒袋"] = "牛皮酒袋",
   }
   if GetVariable("drugprepare") then
      tmp.drug = utils.split(GetVariable("drugprepare"),'|')
	  tmp.pre = {}
      for _,p in pairs(tmp.drug) do
          tmp.pre[p]=true
      end
    end
   local l_tmp=utils.multilistbox ("你任务前准备的物品(请按CTRL多选)是?", "物品组合", t,tmp.pre)
   local l_result=nil
   for p in pairs(l_tmp) do
       drugPrepare[p]=true
       if l_result then
          l_result = l_result .. '|' .. p
       else
          l_result = p
       end
   end
   if isNil(l_result) then
      DeleteVariable("drugprepare")
   else
      SetVariable("drugprepare",l_result)
   end
end

function getVariable()
   if GetVariable("flagautoxuexi") then
      flag.autoxuexi=GetVariable("flagautoxuexi")
	  if flag.autoxuexi=='1' or flag.autoxuexi=='0' then
	     flag.autoxuexi=tonumber(flag.autoxuexi)
	  end
   end
   if GetVariable("flaglog") then
      flag.log=GetVariable("flaglog")
   end
   
   if GetVariable("masterid") then
      master.id=GetVariable("masterid")
   end
   if GetVariable("masterroom") then
      master.room,master.area=getAddr(GetVariable("masterroom"))
   end
   if GetVariable("mastertimes") then
      master.times=GetVariable("mastertimes")
   end
   
   if GetVariable("performforce") then
      perform.force=GetVariable("performforce")
   end
   if GetVariable("performskill") then
      perform.skill=GetVariable("performskill")
   end
   if GetVariable("performpre") then
      perform.pre=GetVariable("performpre")
   end
   if GetVariable("performhuaxue") then
      perform.huaxue=GetVariable("performhuaxue")
   end
   if GetVariable("performxiqi") then
      perform.xiqi=GetVariable("performxiqi")
   end

   if GetVariable("jobzuhe") then
      tmp.job=utils.split(GetVariable("jobzuhe"),'_')
      for _,p in pairs(tmp.job) do
          job.zuhe[p]=true
      end
   end
   if GetVariable("jobfirst") then
      job.first=GetVariable("jobfirst")
	  if job.first=="songxin2" then job.first="songxin" end
   else
      job.first=nil
   end
   if GetVariable("jobsecond") then
      job.second=GetVariable("jobsecond")
	  if job.second=="songxin2" then job.second="songxin" end
   else
      job.second=nil
   end
   if GetVariable("jobthird") then
      job.third=GetVariable("jobthird")
	  if job.third=="songxin2" then job.third="songxin" end
   else
      job.third=nil
   end
   if GetVariable("flagtype") then
      flag.type=GetVariable("flagtype")
   end
   if GetVariable("gaibangcancel") then
      gaibangCancel=GetVariable("gaibangcancel")
   end
   if GetVariable("sldsmcancel") then
      sldsmCancel=GetVariable("sldsmcancel")
   end
   if GetVariable("teamname") then
      job.teamname=GetVariable("teamname")
   end
   if GetVariable("teamlead") then
      job.teamlead=GetVariable("teamlead")
   end
   
   drugGetVar()
   
   weaponGetVar()
end

function drugGetVar()
    drugPrepare={}
    if GetVariable("drugprepare") then
      tmp.drug = utils.split(GetVariable("drugprepare"),'|')
      for _,p in pairs(tmp.drug) do
          drugPrepare[p]=true
      end
    end
end
function setAlias()
	create_alias_s('xxk','xxk','xxkFind')
	create_alias_s('kkr','kkr','kongkongFind')
	create_alias_s('dhsome','dhsome','duihuanSomething')
	create_alias_s('kjh','kjh','jinheTrigger')
	create_alias_s('setstone','sst','stoneSet')
	create_alias_s('dst','dst','stoneGetVar')
	create_alias_s('gothd','gothd','thz_bfstart')
	create_alias_s('hbgo','hbgo','hubiao_start')
	create_alias_s('csgo','csgo','zhuacaishen_find')
	create_alias_s('gfgo','gfgo','guanfu_start')
    create_alias_s('stop','stop','disAll')
	create_alias_s('iset','iset','shujian_set')        
	create_alias_s('start','start','main')
	create_alias_s('pkset','pkset','setpk')
	create_alias_s('pkstart','pks','pk_start')
	create_alias_s('smyset','smyset','setsmy')
	create_alias_s('qu_wd','qu_wd','goto_set.wd')
	create_alias_s('qu_sl','qu_sl','goto_set.sl')
	create_alias_s('qu_xy','qu_xy','goto_set.xy')
	create_alias_s('qu_xs','qu_xs','goto_set.xs')
	create_alias_s('qu_hs','qu_hs','goto_set.hs')
	create_alias_s('qu_yz','qu_yz','goto_set.yz')
	create_alias_s('qu_lzdk','qu_lzdk','goto_set.lzdk')
	create_alias_s('qu_thd','qu_thd','goto_set.thd')
	create_alias_s('qu_dl','qu_dl','goto_set.dl')
	create_alias_s('tj','tj','jobExpTongji')
	create_alias_s('setlian','setlian','setLian')
	create_alias_s('setlearn','setlearn','setLearn')
	create_alias_s('setlingwu','setlingwu','setLingwu')
	create_alias_s('setdzxy','setdzxy','setdzxy')
	create_alias_s('duanzao','duanzao','duanzao')
	create_alias_s('zhizao','zhizao','zhizao')
	create_alias_s('xuexi','xuexi','xuepot')
	create_alias_s('xc','xc','setxcexp')
	create_alias_s('wdj','wdj','inWdj')
	create_alias_s('dolost','dolost','dolostletter')
	create_alias_s('setjob','setjob','jobSet')
	create_alias('sz','^sz(.*)$','goto("%1")')
	SetAliasOption ('sz','send_to','12')
	create_alias('dushu','^dushu(.*)$','dushu("%1")')
	SetAliasOption ('dushu','send_to','12')
	create_alias('full','^full(.*)$','fullSkill("%1")')
	SetAliasOption ('full','send_to','12')
	create_alias_s('gstop', 'gstop', 'g_stop')
	create_alias_s('kz', 'kz', 'kzwgread')
	create_alias_s('zxz','zxz','zxz_dfly')
	create_alias_s('bjn','bjn','wglx_lx')
	create_alias_s('jiemi','jiemi','quest_find')
	create_alias_s('kk','kk','kongkongFind')
	create_alias_s('xxk','xxk','xxkFind')
end
function g_stop()
    if job.name == nil or job.name == 'idle' then
        print("游戏停止")
        disAll()
    else
        g_stop_flag = true
        print("当前正在任务中：" .. job.name ..
                  ". 将会在任务结束后停止")
    end
end
function setdzxy()
      l_result=utils.msgbox ( "慕容斗转星移学习设置(默认为：Yes)？", "dzxy", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      print('我要学习斗转星移')
      need_dzxy='yes'
   else
      need_dzxy='no'
      print('我不要学习斗转星移')
   end
end
function inWdj()
      l_result=utils.msgbox ( "是要进苗疆五毒教吗？", "inwdj", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      print('我要进苗疆五毒教')
      inwdj=1
   else
      inwdj=0
      print('我不进苗疆五毒教')
   end
end
function setLearn()
      l_result=utils.inputbox ("你要学习的SKILLS(格式：force|shenyuan-gong|dodge|yanling-shenfa|sword|blade|parry)是?", "xuexiskill", GetVariable("xuexiskill"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("xuexiskill",l_result)
       Note ("学习设定完成")
        print(GetVariable("xuexiskill"))
 	   end
      l_result=utils.inputbox ("你学习时使用的加悟性武器是?", "learnweapon", GetVariable("learnweapon"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("learnweapon",l_result)
	print(GetVariable("learnweapon"))
	   end
end
function setLingwu()
      l_result=utils.inputbox ("你要领悟的SKILLS(格式：force|dodge|sword|blade|parry)是?", "lingwuskills", GetVariable("lingwuskills"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("lingwuskills",l_result)
       Note ("领悟设定完成")
        print(GetVariable("lingwuskills"))
 	   end
      l_result=utils.inputbox ("你领悟时使用的加悟性武器是?", "learnweapon", GetVariable("learnweapon"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("learnweapon",l_result)
	print(GetVariable("learnweapon"))
	   end
end
function setLian()
     l_result=utils.inputbox ("你练功的次数是？", "mycishu", GetVariable("mycishu"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("mycishu",l_result)
      lianxi_times = l_result
     end
end
function pk_start()
     l_result=utils.inputbox ("你要PK的目标是（英文ID）？", "PK-Target", GetVariable("pk_target"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pk_target",l_result)
     end
   if l_result then
      create_timer_s('walkWait4',0.4,'pk_start1')	
   end
   pk_prepare()  
end
function pk_start1()
	exe('follow '..GetVariable("pk_target"))
	exe('kill '..GetVariable("pk_target"))
end
function setpk()
	 l_result=utils.inputbox ("你打算憋多少合气？(不填默认240)", "heqi_number", GetVariable("heqi_number"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("heqi_number",l_result)
	else
	  SetVariable("heqi_number","240")
     end
	 l_result=utils.inputbox ("填写你的克制无属性PK-PFM(克制无)是?", "zpk_pwu", GetVariable("zpk_pwu"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pwu",l_result)
   end
    l_result=utils.inputbox ("填写你的克制空属性PK-PFM(克制空)是?", "zpk_pkong", GetVariable("zpk_pkong"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pkong",l_result)
	end
   l_result=utils.inputbox ("填写你的正属性PK-PFM是? (克制险)", "zpk_pzhen", GetVariable("zpk_pzhen"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pzhen",l_result)
   end
   l_result=utils.inputbox ("填写你的奇属性PK-PFM(克制妙)", "zpk_pqi", GetVariable("zpk_pqi"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pqi",l_result)
   end
   l_result=utils.inputbox ("填写你的刚属性PK-PFM(克制慢)", "zpk_pgang", GetVariable("zpk_pgang"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pgang",l_result)
   end
   l_result=utils.inputbox ("填写你的柔属性PK-PFM(克制快)", "zpk_prou", GetVariable("zpk_prou"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_prou",l_result)
   end
   l_result=utils.inputbox ("填写你的快属性PK-PFM(克制刚)", "zpk_pkuai", GetVariable("zpk_pkuai"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pkuai",l_result)
   end
   l_result=utils.inputbox ("填写你的慢属性PK-PFM(克制柔)", "zpk_pman", GetVariable("zpk_pman"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pman",l_result)
   end
   l_result=utils.inputbox ("填写你的秒属性PK-PFM(克制正)", "zpk_pmiao", GetVariable("zpk_pmiao"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pmiao",l_result)
   end
   l_result=utils.inputbox ("填写你的险属性PK-PFM(克制奇)", "zpk_pxian", GetVariable("zpk_pxian"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("zpk_pxian",l_result)
   end
   l_result=utils.inputbox ("填写你的默认PK-PFM(起手pfm或无法识别对方武功的应对，类似pfmpfm设定)是?", "pkpfm", GetVariable("pkpfm"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pkpfm",l_result)
	end
      l_result=utils.inputbox ("填写你的PK-PFM(只包含pfm，不包含wield武器或jifa)", "mypfm", GetVariable("mypfm"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("mypfm",l_result)
	   end
	  l_result=utils.inputbox ("填写你的PK-PFM需要多少合气释放（只填数字）？", "pk_pfm_heqi", GetVariable("pk_pfm_heqi"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pk_pfm_heqi",l_result)
	   end
	   l_result=utils.inputbox ("填写你的buff-PFM(pk时使用的buff技能)", "mybuff", GetVariable("mybuff"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("mybuff",l_result)
	   end
	l_result=utils.inputbox ("填写你的buff-PFM需要多少合气释放（只填数字）？", "pk_buff_heqi", GetVariable("pk_buff_heqi"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pk_buff_heqi",l_result)
	   end
	   l_result=utils.inputbox ("填写你的debuff-PFM(pk时使用的debuff技能)", "mydebuff", GetVariable("mydebuff"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("mydebuff",l_result)
	   end
		l_result=utils.inputbox ("填写你的debuff-PFM需要多少合气释放（只填数字）？", "pk_debuff_heqi", GetVariable("pk_debuff_heqi"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("pk_debuff_heqi",l_result)
	   end
end
function setsmy()
	 l_result=utils.inputbox ("填写你的克制无属性PK-PFM(克制无)是?", "smy_pwu", GetVariable("smy_pwu"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pwu",l_result)
   end
    l_result=utils.inputbox ("填写你的克制空属性PK-PFM(克制空)是?", "smy_pkong", GetVariable("smy_pkong"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pkong",l_result)
	end
   l_result=utils.inputbox ("填写你的正属性PK-PFM是? (克制险)", "smy_pzhen", GetVariable("smy_pzhen"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pzhen",l_result)
   end
   l_result=utils.inputbox ("填写你的奇属性PK-PFM(克制妙)", "smy_pqi", GetVariable("smy_pqi"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pqi",l_result)
   end
   l_result=utils.inputbox ("填写你的刚属性PK-PFM(克制慢)", "smy_pgang", GetVariable("smy_pgang"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pgang",l_result)
   end
   l_result=utils.inputbox ("填写你的柔属性PK-PFM(克制快)", "smy_prou", GetVariable("smy_prou"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_prou",l_result)
   end
   l_result=utils.inputbox ("填写你的快属性PK-PFM(克制刚)", "smy_pkuai", GetVariable("smy_pkuai"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pkuai",l_result)
   end
   l_result=utils.inputbox ("填写你的慢属性PK-PFM(克制柔)", "smy_pman", GetVariable("smy_pman"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pman",l_result)
   end
   l_result=utils.inputbox ("填写你的秒属性PK-PFM(克制正)", "smy_pmiao", GetVariable("smy_pmiao"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pmiao",l_result)
   end
   l_result=utils.inputbox ("填写你的险属性PK-PFM(克制奇)", "smy_pxian", GetVariable("smy_pxian"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pxian",l_result)
   end
   l_result=utils.inputbox ("填写你的低合气PFM(例如：桃花岛的perform leg.fengwu)是?", "smy_pfm1", GetVariable("smy_pfm1"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pfm1",l_result)
	end
      l_result=utils.inputbox ("填写你的辅助PFM(例如：桃花岛的perform sword.qimen)是？", "smy_pfm2", GetVariable("smy_pfm2"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pfm2",l_result)
	   end
	   l_result=utils.inputbox ("填写你的大招PFM(只包含pfm，不包含wield武器或jifa，例如：桃花岛的perform leg.kuangfeng)是？", "smy_pfm3", GetVariable("smy_pfm3"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smy_pfm3",l_result)
	   end
	   l_result=utils.inputbox ("填写你的buff-PFM(上山时使用的buff技能，例如：桃花岛的perform dodge.wuzhuan;perform finger.xinghe)是？", "mybuff", GetVariable("smybuff"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("smybuff",l_result)
	   end
end
function setxcexp()
      l_result=utils.msgbox ( "巡城到150K", "xcexp", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      print('巡城到2M')
      xcexp=1
   else
      print('巡城到1M')
      xcexp=0
   end
end
function xuepot()
      l_result=utils.msgbox ( "是否学习", "xuexi", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      print('学习开启')
      needxuexi=1
   else
      needxuexi=0
      print('学习关闭')
   end
end
function dolostletter()
      l_result=utils.inputbox ("请输入当前失落的信可接上限数量? 默认为10封！", "mylostletter", GetVariable("mylostletter"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("mylostletter",l_result)
      lostno=l_result
	 end
      l_result=utils.msgbox ( "是否做LL", "失落的信", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      print('开启做LL')
      needdolost=1
      switch_name4="失落的信笺--开"
   else
      needdolost=0
      switch_name4="失落的信笺--关"
      print('关闭做LL')
   end
      l_result=utils.msgbox ( "做LL是否自动买Vpearl", "自动买Vpearl", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      print('开启自动兑换Vpearl')
      needvpearl=1
   else
      print('关闭自动兑换Vpearl')
      needvpearl=0
   end
end
function dolostAg()
      l_result=utils.msgbox ( "还要再做失落的信吗？YES再做10封，NO算了不做了", "次数", "yesno", "?", 1 )
   if l_result and l_result=="yes" then
      print('再做失落的信10次！')
        lostno=lostno+10
        dis_all()
        return go(dhlost,'扬州城','当铺')
   else
      needdolost=0
      print('关闭做LL')
   end
end
function isNil(p_str)
   if p_str==nil then
      return true
   end
   if type(p_str)~="string" then
      return false
   else
      p_str=Trim(p_str)
      if p_str=="" then
         return true
      else
         return false
      end		 
   end
end
function countR(p_number)
   local i = p_number or 10
   return function()
       i = i - 1
	   return i
   end
end

function randomElement(p_set)
   local l_element

   if p_set and type(p_set)=="table" then
      local l_cnt = math.random(1,countTab(p_set))
	  local l_i = 0
	  for p,q in pairs(p_set) do
	      l_element = q
	      l_i = l_i + 1
		  if l_i == l_cnt then
		     return l_element
		  end
	  end
   else
      l_element = p_set
   end
   
   return l_element
end

function dzxy_trigger()
    DeleteTriggerGroup("dzxy")
    create_trigger_t('dzxy1',"^>*\\s*你仰首望天，太阳挂在天空中，白云朵朵，阳光顺着云层的边缘洒下来，你觉得有些刺眼。",'','dzxy_finish')
    create_trigger_t('dzxy2',"^>*\\s*你仰首望天，天上繁星点点，你体会出了星斗的移动与你所学的“斗转星移”有莫大的联系，却苦于实战经验不足，无法将你看到的东西与实际作战联系到一起。",'','dzxy_finish')
    create_trigger_t('dzxy3','^>*\\s*你把 "action" 设定为 "慕容斗转星移" 成功完成。','','dzxy_goon')    
    create_trigger_t('dzxy4',"^>*\\s*你的内力不够。",'','dzxy_finish') 
    create_trigger_t('dzxy5',"^>*\\s*先从木桩上跳下来\\(down\\)再说吧！",'','dzxy_finish') 
    create_trigger_t('dzxy6',"^>*\\s*恭喜恭喜！你已经融会贯通了斗转星移的绝妙之处！",'','dzxy_finish')
    create_trigger_t('dzxy7',"^>*\\s*你已经没有潜能来领悟学习斗转星移了。",'','dzxy_finish') 
    
    create_trigger_t('dzxy8',"^>*\\s*你仰首望天，天上繁星点点，你顺着银河的方向看去，却发现部分的夜空被周围的树冠挡住了。",'','dzxy_goon') 
    SetTriggerOption("dzxy1","group","dzxy")
    SetTriggerOption("dzxy2","group","dzxy")
    SetTriggerOption("dzxy3","group","dzxy")
    SetTriggerOption("dzxy4","group","dzxy")
    SetTriggerOption("dzxy5","group","dzxy")
    SetTriggerOption("dzxy6","group","dzxy")
    SetTriggerOption("dzxy7","group","dzxy")
    SetTriggerOption("dzxy8","group","dzxy")
    EnableTriggerGroup("dzxy",false)
    DeleteTimer('mr_dzxy_timer')
    --create_timer_m('mr_dzxy_timer',4,'dzxy_finish')
end

function checkdzxy()
   dis_all()
   tmp={}
   --jobTriggerDel()  
   job.name='heal'
   if skills["douzhuan-xingyi"]~=nil then
	   if skills["douzhuan-xingyi"].lvl>130 and skills["douzhuan-xingyi"].lvl<170 then
		 dzxy_level=1  --慕容复开始(#3 w;jump liang;lingwu zihua)，可以到171级。
		 return dzxy()
	   end
	   if skills["douzhuan-xingyi"].lvl>170 and skills["douzhuan-xingyi"].lvl<200 then
		 dzxy_level=2  --还施水阁 去:sit chair;zhuan;n;lingwu miji 回:s;push shujia，可以到201级。
		 return dzxy()
	   end
		if skills["douzhuan-xingyi"].lvl>200 and skills["douzhuan-xingyi"].lvl<hp.pot_max-100 and (locl.time=="戊" or locl.time=="亥" or locl.time=="子" or locl.time=="丑") then
		 dzxy_level=3  --观星台 上去jump zhuang;look sky，下来jump down。只能晚上look sky。可以到N级。
		 return dzxy()
	   end
		messageShow('任务监控：慕容领悟斗转星移条件不够！继续任务！','white')
		print("dzxy_level:"..dzxy_level)
	end
   if job.last=='xueshan' then
 return go(xueshan_finish_ask,'大雪山','入幽口')
 end
 return check_food()
end
function open_dzxy_timer()
       return create_timer_m('mr_dzxy_timer',4,'dzxy_finish')
end
function dzxy()
    DeleteTemporaryTriggers()
    dzxy_trigger()
    
    if dzxy_level==1 then
    return check_busy(dzxy1_go)
    end
    if dzxy_level==2 then
    return check_busy(dzxy2_go)
    end
    if dzxy_level==3 then
    return check_busy(dzxy3_go)
    end
end
function dzxy1_go()
    exe('nick 燕子坞碧水厅领悟')
    messageShow('任务监控：去慕容领悟字画去了！','white')
    go(dzxy1_unwield,'燕子坞','碧水厅')
end
function dzxy2_go()
    exe('nick 燕子坞还施水阁领悟')
    messageShow('任务监控：去慕容领悟秘籍去了！','white')
    go(dzxy2_unwield,'燕子坞','还施水阁')
end
function dzxy3_go()
    exe('nick 燕子坞观星台领悟')
    messageShow('任务监控：去慕容看星星去了！','white')
    go(dzxy3_unwield,'燕子坞','观星台')
end
function dzxy1_unwield()
	flag.idle=0
	--open_dzxy_timer()
	weapon_unwield()
	exe('jump liang')
	return check_busy(dzxy_goon)
end
function dzxy2_unwield()
	flag.idle=0
	--open_dzxy_timer()
	weapon_unwield()
	return check_busy(dzxy_goon)
end
function dzxy3_unwield()
	flag.idle=0
	--open_dzxy_timer()
	weapon_unwield()
	exe('jump zhuang')
	return check_busy(dzxy_goon)
end

function dzxy_goon()
    --EnableTimer('mr_dzxy_timer',true)
    if not (locl.room=="观星台" or locl.room=="还施水阁" or locl.room=="梁上") then
	messageShow("慕容领悟：斗转星移的位置不对！当前位置："..locl.room)
       return dzxy_finish()
    end
    EnableTriggerGroup("dzxy",true)
	local leweapon=GetVariable("learnweapon")
	exe('wield '..leweapon)
	
	if not skills["douzhuan-xingyi"] or skills["douzhuan-xingyi"].lvl==0 or skills["douzhuan-xingyi"].lvl>=hp.pot_max-100 then
	messageShow("慕容领悟：斗转星移的等级不对！当前等级："..skills["douzhuan-xingyi"].lvl)
	   return check_busy(dzxy_finish)
	end
    if flag.idle>7 then
       return check_busy(dzxy_finish)
    end
    if hp.neili<hp.neili_max*0.5 then
	messageShow("慕容领悟：斗转星移的内力不够！当前内力【"..hp.neili.."】",'white')
	return check_busy(dzxy_finish)
    else
	    if dzxy_level==1 then
	       exe('hp;yun jing;#5(lingwu zihua)')
	       --EnableTimer('mr_dzxy_timer',false)
	       return check_bei(dzxy_alias,1)
	    end
	    if dzxy_level==2 then
	       exe('hp;yun jing;#5(lingwu miji)')
	       --EnableTimer('mr_dzxy_timer',false)
	       return check_bei(dzxy_alias,1)
	    end
	     if dzxy_level==3 then
	       exe('hp;yun jing;#5(look sky)')
	       --EnableTimer('mr_dzxy_timer',false)
	       return check_bei(dzxy_alias,1)
	    end
    end
end
function dzxy_alias()
    exe('alias action 慕容斗转星移')
end

function dzxy_finish()
    EnableTimer('mr_dzxy_timer',false)
    DeleteTimer("mr_dzxy_timer")
    messageShow('任务监控：慕容斗转星移完成！')
    exe('jump down')
    EnableTriggerGroup("dzxy",false)
    DeleteTriggerGroup("dzxy")
    exe('cha;hp')
    weapon_unwield()
   local leweapon=GetVariable("learnweapon")
   exe('unwield '..leweapon)
   exe('jump down')
   if job.last=='xueshan' then
 return go(xueshan_finish_ask,'大雪山','入幽口')
 end
 return check_food()
end
-----自动练功机器人----
function dazuo_lianxi_auto() 
         tmp_lxskill='bei none;unwield sword;unwield sword 2;unwield blade;unwield changjian;unwield whip;unwield xiao;'
		 lianxi_times=GetVariable('mycishu')
        for p in pairs(skills) do
                if (skillEnable[p] and skills[p].lvl<hp.pot_max-100) or (skillEnable[p] and skills[p].lvl==hp.pot_max-100 and skills[p].pot<(skills[p].lvl+1)^2) then
                        if skillEnable[p]=="force" then
                                tmp_lxskill=tmp_lxskill..'lian force '..lianxi_times..';'
                        end
                        if skillEnable[p]=="dodge" then
                                tmp_lxskill=tmp_lxskill..'jifa dodge '..p..';lian dodge '..lianxi_times..';yun jingli;'
                        end
                        if skillEnable[p]=="finger" then
                                tmp_lxskill=tmp_lxskill..'jifa finger '..p..';lian finger '..lianxi_times..';yun jingli;'
                        end
                        if skillEnable[p]=="cuff" then
                                tmp_lxskill=tmp_lxskill..'jifa cuff '..p..';lian cuff '..lianxi_times..';yun jingli;'
                        end
                        if skillEnable[p]=="strike" then
                                tmp_lxskill=tmp_lxskill..'jifa strike '..p..';lian strike '..lianxi_times..';yun jingli;'
                        end
                        if skillEnable[p]=="hand" then
                                tmp_lxskill=tmp_lxskill..'jifa hand '..p..';lian hand '..lianxi_times..';yun jingli;'
                        end
                        if skillEnable[p]=="leg" then
                                tmp_lxskill=tmp_lxskill..'lian leg '..lianxi_times..';yun jingli;'
                        end
                        if skillEnable[p]=="sword" then
							  if p=='yuxiao-jian' then
								tmp_lxskill=tmp_lxskill..'jifa sword '..p..';wield xiao;lian sword '..lianxi_times..';unwield xiao;yun jingli;'
				              else
                                tmp_lxskill=tmp_lxskill..'jifa sword '..p..';wield sword;lian sword '..lianxi_times..';unwield sword;yun jingli;'
				              end
                        end
                        if skillEnable[p]=="whip" then
                                tmp_lxskill=tmp_lxskill..'wield whip;lian whip '..lianxi_times..';unwield whip;yun jingli;'
                        end
                        if skillEnable[p]=="axe" then
                                tmp_lxskill=tmp_lxskill..'wield axe;lian axe '..lianxi_times..';unwield axe;yun jingli;'
                        end
                        if skillEnable[p]=="claw" then
                                tmp_lxskill=tmp_lxskill..'jifa claw '..p..';lian claw '..lianxi_times..';yun jingli;'
                        end
                        if skillEnable[p]=="throwing" then
                                tmp_lxskill=tmp_lxskill..'wield coin;lian throwing '..lianxi_times..';unwield coin;yun jingli;'
                        end
                        if skillEnable[p]=="blade" then
                                tmp_lxskill=tmp_lxskill..'jifa blade '..p..';wield blade;lian blade '..lianxi_times..';unwield blade;yun jingli;'
                        end
						if skillEnable[p]=="stick" then
                                tmp_lxskill=tmp_lxskill..'wield stick;lian stick '..lianxi_times..';unwield stick;yun jingli;'
                        end
                        if skillEnable[p]=="staff" then
                                tmp_lxskill=tmp_lxskill..'wield staff;lian staff '..lianxi_times..';unwield staff;yun jingli;'
                        end
                        if skillEnable[p]=="club" then
                                tmp_lxskill=tmp_lxskill..'wield club;lian club '..lianxi_times..';unwield club;yun jingli;'
                        end
                        if skillEnable[p]=="hammer" then
                                tmp_lxskill=tmp_lxskill..'wield hammer;lian hammer '..lianxi_times..';unwield hammer;yun jingli;'
                        end
                        if skillEnable[p]=="hook" then
                                tmp_lxskill=tmp_lxskill..'wield hook;lian hook '..lianxi_times..';unwield hook;yun jingli;'
                        end
                        if skillEnable[p]=="dagger" then
                                tmp_lxskill=tmp_lxskill..'wield dagger;lian dagger '..lianxi_times..';unwield dagger;yun jingli;'
                        end
        end
end
        tmp_lxskill=tmp_lxskill..'hp;unset 积蓄;bei finger;say sx1lian;'
        end
function set_sxlian()
        dazuo_lianxi_auto()
        create_alias('sx1lian','sx1lian','alias sxlian '..tmp_lxskill)
        exe('say sx1lian;sx1lian')
end
function kedian_sleep()
	if locl.area=='长安城' then
	   exe('up;n;sleep')
	else
	   exe('up;enter;sleep')
	end
	checkWait(locate,3)
	walk_wait()
end
function check_rope()
	go(get_rope,'华山','寝室')
end
function get_rope() 
    exe('tell rope 交货')
    check_busy(checkPrepareOver)
end
function check_key()
    go(get_juhua,'扬州城','个园')
end
function get_juhua() 
    exe('tell daisy 交货')
	go(get_key,'扬州城','小盘古')
end
function get_key()
    exe('give juyou ye juhua')
	check_busy(checkPrepareOver)
end
-----------自动抓雪蛛----------
function check_xuezhu_status()
        local xuezhu_status=GetVariable("xuezhu_status")
        if xuezhu_status==nil then
           messageShow('未找到雪蛛变量：xuezhu_status，请尽快设置！','white','black')
        elseif xuezhu_status=="0" then
           messageShow('本周还未抓到雪蛛，启动自动抓雪蛛机器人，前往抓雪蛛！','white','black')
           return xuezhu_status
        elseif xuezhu_status=="1" then
           messageShow('已问程灵素要了真丹，现在前往抓雪蛛！','white','black')
           return xuezhu_status
        elseif xuezhu_status=="-1" then
           messageShow('程灵素给了假丹，现在前往抓雪蛛！','white','black')
           return xuezhu_status
        end
end
function xuezhuTrigger()
    DeleteTriggerGroup("xuezhuAsk")
    create_trigger_t('xuezhuAsk1',"^(> )*你向程灵素打听有关『五毒教』的消息",'','xuezhuAsk')
    create_trigger_t('xuezhuAsk2',"^(> )*这里没有这个人。$",'','xuezhuNobody')
    SetTriggerOption("xuezhuAsk1","group","xuezhuAsk")
    SetTriggerOption("xuezhuAsk2","group","xuezhuAsk")
    EnableTriggerGroup("xuezhuAsk",false)
    DeleteTriggerGroup("xuezhuAccept")
    create_trigger_t('xuezhuAccept1',"^(> )*程灵素说道：「五毒教的禁地种满了各种奇花异草，其中大部分具有巨毒\\D*",'','xuezhuAccept')
    create_trigger_t('xuezhuAccept2',"^(> )*你获得一颗九雪碧云丹。$",'','eatDan')
    create_trigger_t('xuezhuAccept3',"^(> )*你把一颗九雪碧云丹，轻轻咬碎含进嘴里，顿觉神明意朗，脸色红润。$",'','xuezhu_go')
    create_trigger_t('xuezhuAccept4',"^(> )*程灵素说道：「你上次答应我的事情还没做\\D*",'','fakeDan')
    SetTriggerOption("xuezhuAccept1","group","xuezhuAccept")
    SetTriggerOption("xuezhuAccept2","group","xuezhuAccept")
    SetTriggerOption("xuezhuAccept3","group","xuezhuAccept")
    SetTriggerOption("xuezhuAccept4","group","xuezhuAccept")
    EnableTriggerGroup("xuezhuAccept",false)
    DeleteTriggerGroup("xuezhuFight")
    create_trigger_t('xuezhuFight1','^(> )*你晃动了半天，发现什麽也没有。','','xuezhuFail')
    create_trigger_t('xuezhuFight2','^(> )*你轻轻摇晃树藤，忽然掉下一只雪蛛。','','xuezhuFight')
    create_trigger_t('xuezhuFight3','^(> )*雪蛛神志迷糊，脚下一个不稳，倒在地上昏了过去。','','getxuezhuX')
    create_trigger_t('xuezhuFight4',"^(> )*你将雪蛛扶了起来背在背上。",'','givecheng')
        create_trigger_t('xuezhuFight5',"^(> )*雪蛛「啪」的一声倒在地上，挣扎着抽动了几下就死了。",'','xuezhuFail')
        --create_trigger_t('xuezhuFight6',"^(> )*(你附近没有这样东西。|雪蛛突然蹿到地上不见了。)",'','xuezhuFail')
        create_trigger_t('xuezhuFight6',"^(> )*雪蛛突然蹿到地上不见了。",'','xuezhuFail')
    SetTriggerOption("xuezhuFight1","group","xuezhuFight")
    SetTriggerOption("xuezhuFight2","group","xuezhuFight")
    SetTriggerOption("xuezhuFight3","group","xuezhuFight")
    SetTriggerOption("xuezhuFight4","group","xuezhuFight")
        SetTriggerOption("xuezhuFight5","group","xuezhuFight")
        SetTriggerOption("xuezhuFight6","group","xuezhuFight")
    EnableTriggerGroup("xuezhuFight",false)
    DeleteTriggerGroup("xuezhuFinish")
    create_trigger_t('xuezhuFinish1','^(> )*程灵素说道：「你果然言而有信，下次你要再去五毒教来找我吧。」','','xuezhuFinish')
    SetTriggerOption("xuezhuFinish1","group","xuezhuFinish")
    EnableTriggerGroup("xuezhuFinish",false)
end
function xuezhuTriDel()
        dis_all()
        EnableTriggerGroup("xuezhuAsk",false)
        EnableTriggerGroup("xuezhuAccept",false)
        EnableTriggerGroup("xuezhuFight",false)
        EnableTriggerGroup("xuezhuFinish",false)
        DeleteTriggerGroup("xuezhuAsk")
        DeleteTriggerGroup("xuezhuAccept")
        DeleteTriggerGroup("xuezhuFight")
        DeleteTriggerGroup("xuezhuFinish")
end
function getxuezhu0()
        xuezhuTrigger()
        go(askcheng,'苗疆','药王居')
end
function getxuezhu1()
        xuezhuTrigger()
        check_bei(xuezhu_go)
end
function askcheng()
        EnableTriggerGroup("xuezhuAsk",true)
        EnableTriggerGroup("xuezhuAccept",true)
        exe('ask cheng about 五毒教')
        create_timer_s('walkWait4',3.0,'askcheng1')
end
function askcheng1()
        exe('ask cheng about 五毒教')
end
function xuezhuAsk()
        EnableTimer('walkWait4',false)
        DeleteTimer("walkWait4")
    EnableTriggerGroup("xuezhuAsk",false)
end
function xuezhuAccept()
        EnableTimer('walkWait4',false)
        DeleteTimer("walkWait4")
        wait.make(function()
         wait.time(2)
        exe('yes')        
    end)
        SetVariable("xuezhu_status","1")
end
function eatDan()
        EnableTimer('walkWait4',false)
        DeleteTimer("walkWait4")
    exe('fu dan')
        create_timer_s('walkWait4',1.0,'eatDan1')
end
function eatDan1()
        exe('fu dan')
end
function fakeDan()
        EnableTimer('walkWait4',false)
        DeleteTimer("walkWait4")
        SetVariable("xuezhu_status","-1")
        return xuezhu_go()
end
function xuezhu_go()
        EnableTimer('walkWait4',false)
        DeleteTimer("walkWait4")
        if not Bag["火折"] and drugPrepare["火折"] then
           if locl.weekday == '四' and locl.hour ==8 then
          return checkPrepareOver()
           else
                  return checkFire()
           end
        end
        EnableTriggerGroup("xuezhuAccept",false)
        EnableTriggerGroup("xuezhuFight",true)
        go(mjsd_yst,'苗疆','山洞')
end
function mjsd_yst()
if locl.room=="山洞" then
flag.dw=0
return check_bei(yaoshuteng)
else
return walk_wait()
end
end
function yaoshuteng()
        EnableTriggerGroup("xuezhuFight",true)
        exe('dian fire;yao shuteng')
        create_timer_st('walkWait4',1.0,'yaoshuteng1')
end
function yaoshuteng1()
        exe('dian fire;yao shuteng')
end
function xuezhuFail()
        xuezhuTriDel()
		exe('jifa all')
        messageShow('雪蛛不在，一会再来抓！','white','black')
		wait.make(function()
         wait.time(0.5)
		return check_busy(checkPrepareOver)
	end)
end
function xuezhuFight()
        EnableTimer('walkWait4',false)
        DeleteTimer("walkWait4")
        wait.make(function()
         wait.time(3)
                 weapon_unwield()
        exe('bei none;unset wimpy;jiali 0;hit xue zhu')
    end)
end
function getxuezhuX()
        exe('get xue zhu')
end
function givecheng()
        EnableTriggerGroup("xuezhuFinish",true)
        go(givexuezhu,'苗疆','药王居')
end
function givexuezhu()
        exe('give cheng xue zhu')
        create_timer_st('walkWait4',1.0,'givexuezhu1')
end
function givexuezhu1()
    exe('give xue zhu to cheng lingsu')
end
function xuezhuFinish()
        SetVariable("xuezhu_status","2")
           messageShow('本周已成功抓到雪蛛，请安心游戏！：)','red','black')
    xuezhuTriDel()
        weapon_wield()
		exe('jifa all')
        return check_busy(checkPrepareOver)
end
-----兑换红蓝石头----
function stoneSet() 
   stonePrepare={}
   local t={
   ["赤晶石"] = "赤晶石",
   ["海蓝石"] = "海蓝石",
   }
   if GetVariable("stoneprepare") then
      tmp.stone = utils.split(GetVariable("stoneprepare"),'|')
	  tmp.pre = {}
      for _,p in pairs(tmp.stone) do
          tmp.pre[p]=true
      end
   end
   local l_tmp=utils.multilistbox ("你准备吃的石头(请按CTRL多选)是?", "物品组合", t,tmp.pre)
   local l_result=nil
   for p in pairs(l_tmp) do
       stonePrepare[p]=true
       if l_result then
          l_result = l_result .. '|' .. p
       else
          l_result = p
       end
   end
   if isNil(l_result) then
      DeleteVariable("stoneprepare")
   else
      SetVariable("stoneprepare",l_result)
   end
   l_result=utils.inputbox ("你兑换石头的次数是？", "stonecishu", GetVariable("stonecishu"), "宋体" , "12")
   if not isNil(l_result) then
      SetVariable("stonecishu",l_result)
   end
end
function stoneGetVar()
    stonePrepare={}
    if GetVariable("stoneprepare") then
      tmp.stone = utils.split(GetVariable("stoneprepare"),'|')
      for _,p in pairs(tmp.stone) do
          stonePrepare[p]=true
      end
    end
	return duihuan_Stone()
end
function duihuan_Stone()
    if MidNight[locl.time] then
	   ColourNote ("red","blue","珠宝店关门，无法卖石头，请过一阵再尝试！")
    else
      return go(duihuan_prepare,'扬州城','当铺')
    end
end
function duihuan_prepare()
	tmp.redstone=0
	tmp.bluestone=0
	flag.redstone=false
	flag.bluestone=false
	flag.duihuan=0
    DeleteTriggerGroup("duihuanstone")
    create_trigger_t('duihuanstone1',"^(> )*当铺老板吆喝一声："..score.name.."兑换限制级宝物(赤晶石|海蓝石).*",'','stone_consider')
    create_trigger_t('duihuanstone2',"^(> )*朱老板一把抓过(赤晶石|海蓝石)道：“哇，好东西呀！”",'','maistone_set')
	create_trigger_t('duihuanstone3',"^(> )*你还是多努力一段时间吧。",'','duihuan_done')
	create_trigger_t('duihuanstone4',"^(> )*你先要用完现有的物品才能再次兑换。",'','check_stoneT')
    SetTriggerOption("duihuanstone1","group","duihuanstone")
    SetTriggerOption("duihuanstone2","group","duihuanstone")
	SetTriggerOption("duihuanstone3","group","duihuanstone")
	SetTriggerOption("duihuanstone4","group","duihuanstone")
    return duihuanStone()
end
function duihuanStone()
    if stonePrepare["赤晶石"] and tmp.redstone<tonumber(GetVariable("stonecishu")) then
	   flag.duihuan=1
       exe('duihuan redstone')
    end
    return check_busy(duihuanStone1,3)
end
function duihuanStone1()
    if stonePrepare["海蓝石"] and tmp.bluestone<tonumber(GetVariable("stonecishu")) then
	   flag.duihuan=2
       exe('duihuan bluestone')
	end
end
function stone_consider(n,l,w)
	local x=tostring(w[2])
    if x=='赤晶石' then
	   flag.redstone=true
       tmp.redstone=tmp.redstone+1
    end
    if x=='海蓝石' then
	   flag.bluestone=true
       tmp.bluestone=tmp.bluestone+1
    end
	return stone_consider_go()
end
function stone_consider_go()
	if stonePrepare["赤晶石"] and stonePrepare["海蓝石"] and flag.redstone and flag.bluestone then 
	   return check_busy(mai_stone,3)
	end
	if stonePrepare["赤晶石"] and not stonePrepare["海蓝石"] and flag.redstone then 
	   return check_busy(mai_stone,3)
	end
	if not stonePrepare["赤晶石"] and stonePrepare["海蓝石"] and flag.bluestone then 
	   return check_busy(mai_stone,3)
	end
end
function duihuan_done()
	if stonePrepare["赤晶石"] and stonePrepare["海蓝石"] then 
	   if flag.duihuan==1 then
		  stonePrepare["赤晶石"]=false
		  tmp.redstone=tonumber(GetVariable("stonecishu"))
		  return
	   end
	   if flag.duihuan==2 then
		  stonePrepare["海蓝石"]=false
		  tmp.bluestone=tonumber(GetVariable("stonecishu"))
	   end
	end
	if stonePrepare["赤晶石"] and not stonePrepare["海蓝石"] then
	   stonePrepare["赤晶石"]=false
       tmp.redstone=tonumber(GetVariable("stonecishu"))
       tmp.bluestone=tonumber(GetVariable("stonecishu")) 
	end
	if not stonePrepare["赤晶石"] and stonePrepare["海蓝石"] then
	   stonePrepare["海蓝石"]=false
       tmp.redstone=tonumber(GetVariable("stonecishu"))
       tmp.bluestone=tonumber(GetVariable("stonecishu"))
	end
	return check_stone()	
end
function mai_stone()
	return go(mai_stone_check,"扬州城","珠宝店")
end
function mai_stone_check()
	if flag.redstone then
	   exe('mai redstone')
	end
	if flag.bluestone and not flag.redstone then
	   exe('mai bluestone')
	end
end
function maistone_set(n,l,w)
	if w[2]=='赤晶石' then flag.redstone=false end
	if w[2]=='海蓝石' then flag.bluestone=false end
	if flag.redstone or flag.bluestone then
	   return check_busy(mai_stone)
	else
	   return check_busy(check_stone)
	end
end
function check_stone()
	if tmp.redstone>=tonumber(GetVariable("stonecishu")) and tmp.bluestone>=tonumber(GetVariable("stonecishu")) then
	   checkBags()
	   wait.make(function()
         wait.time(2)
       return check_stone1()
       end)	   
	end
	return go(duihuanStone,"扬州城","当铺")
end
function check_stone1()
	if Bag and Bag["赤晶石"] then
	   flag.redstone=true
	end
	if Bag and Bag["海蓝石"] then
	   flag.bluestone=true
	end
	if flag.redstone or flag.bluestone then
	   return mai_stone()
	else
	   ColourNote ("red","blue","您选择的石头到达兑换的极限，本次兑换完毕！")
	   --return checkPrepare()
	end
end
function check_stoneT()
	checkBags()
	wait.make(function()
         wait.time(2)
    return check_stone1()
    end)	
end
-------明教讨教-----
function dnyTrigger()
        DeleteTriggerGroup("qk_dny")
        create_trigger_t('qk_dny1','^(> )*\\s*你把 "action" 设定为 "讨教大挪移中" 成功完成','','taoJiaozhang')
        create_trigger_t('qk_dny2',"^(> )*你现在正忙着呢。",'','taoJiaozhang')
        create_trigger_t('qk_dny3',"^(> )*(由于实战经验不足，阻碍了你的「乾坤大挪移」进步！|什么?|你的内力不够)",'','taojiao_over')
        create_trigger_t('qk_dny4',"^(> )*你感觉全身气息翻腾，原来你真气不够，不能装备\\D*。",'','taojiao_over')
        for i=1,4 do SetTriggerOption("qk_dny"..i,"group","qk_dny") end
        EnableTriggerGroup("qk_dny",false)
end
function check_dny()
        exe('nick 讨教乾坤大挪移')
        return go(taojiao_dny,"mingjiao/sht",'')
end
function taojiao_dny()
        dnyTrigger()
        if locl.id[score.master] then
                EnableTriggerGroup("qk_dny",true)
                weapon_unwield()
                local leweapon=GetVariable("learnweapon")
                exe('wield '..leweapon)
                DoAfter(0.5,'alias action 讨教大挪移中')
        else
                ColourNote ("white","blue","师傅不在家！过一会儿再来吧！")
                return taojiao_over()
        end
end
function taoJiaozhang()
        flag.idle=nil
        EnableTriggerGroup("qk_dny",true)
        wait.make(function() 
          wait.time(0.2)
          exe('#8(taojiao qiankun-danuoyi);yun jing;alias action 讨教大挪移中')
       end)
end
function taojiao_over()
        messageShow('讨教乾坤大挪移完毕！')
        EnableTriggerGroup("qk_dny",false)
        DeleteTriggerGroup("qk_dny")
        weapon_unwield()
        local leweapon=GetVariable("learnweapon")
        exe('cha;unwield '..leweapon)
        dis_all()
        return check_busy(check_food)
end
function fightoverweapon()
	if GetVariable("recoveryweapon") then
       exe(GetVariable("recoveryweapon"))
	end
end
------扬州当铺兑换道具机器人 by如版.2019.11.09-----
function duihuanSomething()
        exe('score')
        tmp.duihuan=0
        local l_result
        local l_duihuan
        local l_duihuanTimes
        l_result=utils.inputbox ("你需要兑换的物品ID是", "duihuanID", GetVariable("duihuanID"), "宋体" , "12")
        if not isNil(l_result) then
                SetVariable("duihuanID",l_result)
                l_duihuan=l_result
                print(GetVariable("duihuanID"))
         end
        l_result=utils.inputbox ("你需要兑换的次数", "duihuanTimes", GetVariable("duihuanTimes"), "宋体" , "12")
        if not isNil(l_result) then
                SetVariable("duihuanTimes",l_result)
                l_duihuanTimes=l_result
                print(GetVariable("duihuanTimes"))
         end
        DeleteTriggerGroup("duihuanSomething")
        create_trigger_t('duihuanSomething1',"^(> )*当铺老板吆喝一声："..score.name.."兑换限制级宝物\\D*，收讫书剑通宝(\\D*)个*",'','duihuanSomething_add')
        SetTriggerOption("duihuanSomething1","group","duihuanSomething")
        check_busy(duihuanSomething_duihuan)
end
function duihuanSomething_add(n,l,w)
        tmp.duihuan=tmp.duihuan or 0
        tmp.duihuan=tmp.duihuan+1
        print('本次兑换'..tmp.duihuan..'次')
		exe('read book')
        if tmp.duihuan>=tonumber(GetVariable("duihuanTimes")) then
                EnableTriggerGroup("duihuanSomething",false)
                DeleteTriggerGroup("duihuanSomething")
                return check_food()
        end
        check_busy(duihuanSomething_duihuan)
end
function duihuanSomething_duihuan()
    exe('duihuan '..GetVariable("duihuanID"))		
end
-----扬州自动找徐霞客  2019.12.25------
xxkFind=function()
    DeleteTriggerGroup("xxkFind")
    create_trigger_t('xxkFind1','^(> )*\\s*徐霞客\\(Xu xiake\\)','','xxkFindFollow')
    create_trigger_t('xxkFind2','^(> )*这里没有 xu xiake','','xxkFindGoon')
    create_trigger_t('xxkFind3','^(> )*你决定跟随\\D*一起行动。','','xxkFindDone')
    create_trigger_t('xxkFind4','^(> )*你已经这样做了。','','xxkFindDone')
    SetTriggerOption("xxkFind1","group","xxkFind")
    SetTriggerOption("xxkFind2","group","xxkFind")
    SetTriggerOption("xxkFind3","group","xxkFind")
    SetTriggerOption("xxkFind4","group","xxkFind")
    EnableTriggerGroup("xxkFind",false)
	cntr1 = countR(20)
	job.name="找徐霞客"
	return go(xxkFindFact,"扬州城","城隍庙")
end
xxkFindFact=function()
    EnableTriggerGroup("xxkFind",true)
	exe('look')
	return find()
end
xxkFindFollow=function()
    flag.find = 1
	exe('follow xu xiake')
end
xxkFindGoon=function()
    flag.wait=0
    flag.find=0
    return walk_wait()
end
function xxkFindDone()
	DeleteTriggerGroup("xxkFind")
	ColourNote ("red","blue","【已找到徐霞客这个狗头，请开始你的嘿嘿嘿……】")
end
-----扬州自动找空空儿-------------
kongkongFind=function()
    DeleteTriggerGroup("kkrFind")
    create_trigger_t('kkrFind1','^.*空空儿\\(Kong kong\\)','','kongkongFindFollow')
    create_trigger_t('kkrFind2','^(> )*这里没有 kong kong','','kongkongFindGoon')
    create_trigger_t('kkrFind3','^(> )*你决定跟随\\D*一起行动。','','kongkongFindDone')
    create_trigger_t('kkrFind4','^(> )*你已经这样做了。','','kongkongFindDone')
    SetTriggerOption("kkrFind1","group","kkrFind")
    SetTriggerOption("kkrFind2","group","kkrFind")
    SetTriggerOption("kkrFind3","group","kkrFind")
    SetTriggerOption("kkrFind4","group","kkrFind")
    EnableTriggerGroup("kkrFind",false)
	cntr1 = countR(20)
	job.name="找空空儿"
	return go(kongkongFindFact,"扬州城","小吃店")
end
kongkongFindFact=function()
    EnableTriggerGroup("kkrFind",true)
	exe('look')
	return find()
end
kongkongFindFollow=function()
    flag.find = 1
	exe('follow kong kong')
end
kongkongFindGoon=function()
    flag.wait=0
    flag.find=0
    return walk_wait()
end
function kongkongFindDone()
	DeleteTriggerGroup("kkrFind")
	ColourNote ("red","blue","【已找到空空儿这个狗头，请开始你的嘿嘿嘿……】")
end
function exec_multi(cmd)
    if string.find(cmd, "#") and not string.find(cmd, ";") then
        if string.find(cmd, "%(") then
            local tstr = ""
            local _, _, time, c = string.find(cmd, "^#(%d+)%((.+)%)$")
            if time then
                for i = 1, time do
                    tstr = tstr .. c .. ";"
                end
            end
            return tstr
        else
            local tstr = ""
            local _, _, time, c = string.find(cmd, "^#(%d+)%s*(.+)$")
            if time then
                for i = 1, time do
                    tstr = tstr .. c .. ";"
                end
            end
            return tstr
        end
    end
end

-- ---------------------------------------------------------------
-- 自定义实现, 处理原mud以及mush常用的表达方式如 ( #15n 或者 #15(drop corpse))
-- ---------------------------------------------------------------
function exec(cmd)
    local cmds_str = ""
    if string.contain(cmd, ";") then
        local cmds = string.split(cmd, ";")
        for i = 1, #cmds do
            local c = ""
            if string.contain(cmds[i], "#") then
                c = exec_multi(cmds[i])
            else
                c = cmds[i]
            end
            if string.len(c) > 0 then
                if string.sub(c, -1) == ";" then
                    cmds_str = cmds_str .. c
                else
                    cmds_str = cmds_str .. c .. ";"
                end
            end
        end
    else
        cmds_str = exec_multi(cmd)
    end
    return cmds_str
end

function tableCopy(T)
    T2={}
        for k,v in pairs(T) do
            T2[k]=v
--                print("T2" .. k .. "=  =" .. T2[k])
        end
        return T2
end
---------------------克制快速查找------------------
function kzwgread()
ColourNote ("gold","black","被克制属性为：【险】,属性克制数值为：【正130 刚空120 快110 妙险无100】,对应变量为：【pzhen】")
ColourNote ("gold","black","被克制属性为：【妙】,属性克制数值为：【奇130 柔空120 慢110 无妙险100】,对应变量为：【pqi】")
ColourNote ("gold","black","被克制属性为：【慢】,属性克制数值为：【刚130 正空120 险110 慢快无100】,对应变量为：【pgang】")
ColourNote ("gold","black","被克制属性为：【快】,属性克制数值为：【柔130 奇空120 妙110 快慢无100】,对应变量为：【prou】")
ColourNote ("gold","black","被克制属性为：【刚】,属性克制数值为：【快130 妙空120 奇110 无刚柔100】,对应变量为：【pkuai】")
ColourNote ("gold","black","被克制属性为：【柔】,属性克制数值为：【慢130 险空120 正110 无刚柔100】,对应变量为：【pman】")
ColourNote ("gold","black","被克制属性为：【正】,属性克制数值为：【妙130 快空120 刚110 无正奇100】,对应变量为：【pmiao】")
ColourNote ("gold","black","被克制属性为：【奇】,属性克制数值为：【险130 慢空120 柔110 无正奇100】,对应变量为：【pxian】")
ColourNote ("gold","black","被克制属性为：【无】,属性克制数值为：【无130 空120           其他100】,对应变量为：【pfmwu】")
ColourNote ("gold","black","被克制属性为：【空】,属性克制数值为：【无130 空120           其他100】,对应变量为：【pkong】")
end
---------------未出家前天龙寺每月自动俸禄------------
function tlsfenglu()
return go(askfenglu,'镇南王府','暖阁')
end
function askfenglu()
exe('ask duan about 俸禄')
messageShow('拿俸禄了！')
return checkWait(check_heal,2)
end
-----乞丐要走武器提示------
function kill_qigai()
     fastLocate()
	 messageShowB('乞丐要走武器：地点【'..road.room..road.roomid..'】。',"gold","black")
    messageShowB('乞丐要走武器：地点【'..locl.area..locl.where..'】。',"gold","black")		 
	 scrLog()
end
-----扬州自动找空空儿------
kongkongFind=function()
    DeleteTriggerGroup("kkrFind")
    create_trigger_t('kkrFind1','^.*空空儿\\(Kong kong\\)','','kongkongFindFollow')
    create_trigger_t('kkrFind2','^(> )*这里没有 kong kong','','kongkongFindGoon')
    create_trigger_t('kkrFind3','^(> )*你决定跟随\\D*一起行动。','','kongkongFindDone')
    create_trigger_t('kkrFind4','^(> )*你已经这样做了。','','kongkongFindDone')
    SetTriggerOption("kkrFind1","group","kkrFind")
    SetTriggerOption("kkrFind2","group","kkrFind")
    SetTriggerOption("kkrFind3","group","kkrFind")
    SetTriggerOption("kkrFind4","group","kkrFind")
    EnableTriggerGroup("kkrFind",false)
	cntr1 = countR(20)
	job.name="找空空儿"
	return go(kongkongFindFact,"扬州城","小吃店")
end
kongkongFindFact=function()
    EnableTriggerGroup("kkrFind",true)
	exe('look')
	check_step_num1=check_step_num1+1
	return find()
end
kongkongFindFollow=function()
    flag.find = 1
	exe('follow kong kong')
	check_step_num1=check_step_num1+1
end
kongkongFindGoon=function()
    flag.wait=0
    flag.find=0
    return walk_wait()
end
function kongkongFindDone()
	DeleteTriggerGroup("kkrFind")
	ColourNote ("red","blue","【已找到空空儿这个狗头，请开始你的嘿嘿嘿……】")
end
-----扬州自动找徐霞客------
xxkFind=function()
    DeleteTriggerGroup("xxkFind")
    create_trigger_t('xxkFind1','^(> )*\\s*徐霞客\\(Xu xiake\\)','','xxkFindFollow')
    create_trigger_t('xxkFind2','^(> )*这里没有 xu xiake','','xxkFindGoon')
    create_trigger_t('xxkFind3','^(> )*你决定跟随\\D*一起行动。','','xxkFindDone')
    create_trigger_t('xxkFind4','^(> )*你已经这样做了。','','xxkFindDone')
    SetTriggerOption("xxkFind1","group","xxkFind")
    SetTriggerOption("xxkFind2","group","xxkFind")
    SetTriggerOption("xxkFind3","group","xxkFind")
    SetTriggerOption("xxkFind4","group","xxkFind")
    EnableTriggerGroup("xxkFind",false)
	cntr1 = countR(20)
	job.name="找徐霞客"
	return go(xxkFindFact,"扬州城","城隍庙")
end
xxkFindFact=function()
    EnableTriggerGroup("xxkFind",true)
	exe('look')
	check_step_num1=check_step_num1+1
	return find()
end
xxkFindFollow=function()
    flag.find = 1
	exe('follow xu xiake')
	check_step_num1=check_step_num1+1
end
xxkFindGoon=function()
    flag.wait=0
    flag.find=0
    return walk_wait()
end
function xxkFindDone()
	DeleteTriggerGroup("xxkFind")
	ColourNote ("red","blue","【已找到徐霞客这个狗头，请开始你的嘿嘿嘿……】")
end
-----------------护镖---------------
function hb_team_judge()
	DeleteTrigger("main3")
	HBoffline=1
end
function hb_team_judge1()
	DeleteTrigger("main2")
	HBoffline=0
end
function hb_prepare_check(n,l,w)
SetVariable("hb_team_call",1)
local x=string.lower(tostring(w[3]))
	if GetVariable("hb_team_id") then
       tmp.hbid = utils.split(GetVariable("hb_team_id"),'|')
    end
	if tmp.hbid and x==tmp.hbid[1] and tonumber(GetVariable("hb_team_captain"))==0 then
	   if job.name=='songmoya' then
		  exe('tell '..tmp.hbid[1]..' 我在山上，马上下山！')
		  exe('halt;down')
			 return yptfail()
	   elseif job.name=='diemenglou' then
		  autoHB=1
	      exe('tell '..tmp.hbid[1]..' 我在蝶梦楼，稍等片刻！')
	   else
		  exe('tell '..tmp.hbid[1]..' 我在'..job.name..'任务中,正位于'..locl.room..'，稍等片刻！马上就到！')
		  autoHB=1
	   end
	else
	   exe('tell '..x..' 我不认识你，找我老大'..tmp.hbid[1]..'说！')
	end
end
function hb_prepare_cancel(n,l,w)
	local y=string.lower(tostring(w[3]))
	if GetVariable("hb_team_id") then
       tmp.hbid = utils.split(GetVariable("hb_team_id"),'|')
    end
	if tmp.hbid and y==tmp.hbid[1] and tonumber(GetVariable("hb_team_captain"))==0 then
	   if job.name=='hubiao' or job.name=='idle' then
		  exe('tell '..tmp.hbid[1]..' 收到，老大！我这就去做任务！')
		  exe('team dismiss')
		  if score.party=='昆仑派' then
	         exe('set throwing shizi')
	      end
		  autoHB=0
		  dis_all()
		  return main()
	   else
		  exe('tell '..tmp.hbid[1]..' 我在'..job.name..'任务中,不需要通知啦！')
		  exe('team dismiss')
		  autoHB=0
	   end
	else
	   exe('tell '..x..' 我不认识你，找我老大'..tmp.hbid[1]..'说！')
	end
end
