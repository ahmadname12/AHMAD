--[[ 
$ :) 
-- - ( #ANIMUS ) - -- 
$ :) 
-- - ( @ahmadnamed ) - -- 
$ :) 
--Channel-( @ahmadnameddd )-- 
$ :) 
]]-- 
do 
local function iq_abs(msg,matches) 
local reply_id = msg['id'] 

    if matches[1] == "chat_add_user"  then -- Channel @ahmadnameddd 
      return '馃殢 - Welcome to groups'..'\n' 
..'馃殎 - #name_add : '..(msg.from.first_name or ' ')..'\n' 
..'馃殌 - #user_add : @'..msg.from.username..'\n' 
..'鉀斤笍 - #ID : '..msg.from.id..'\n' 
..'馃洶 - #gp_name : '..msg.to.title..'\n' 
..'馃洺 - #gp_ID : '..msg.to.id..'\n' 
..'馃殾 - Channel : @ahmadnameddd'..'\n' 
..'鈴� - #time : '..os.date(' %T', os.time())..'\n' 
..'馃搯 - : '.. os.date('!%A %B:%d:%Y\n', timestamp)..'\n' 

    elseif matches[1] == "chat_add_user_link" then 
      return '馃殢 - Welcome to groups'..'\n' 
..'馃殎 - #name : '..(msg.from.first_name or ' ')..'\n' 
..'馃殌 - #user : @'..msg.from.username..'\n' 
..'鉀斤笍 - #ID : '..msg.from.id..'\n' 
..'馃洶 - #gp_name : '..msg.to.title..'\n' 
..'馃洺 - #gp_ID : '..msg.to.id..'\n' 
..'馃殾 - Channel : @ahmadnameddd'..'\n' 
..'鈴� - #time : '..os.date(' %T', os.time())..'\n' 
..'馃搯 - : '.. os.date('!%A %B:%d:%Y\n', timestamp)..'\n' 
    end 

    if matches[1] == "chat_del_user"  then 
       local bye_name = msg.action.user.first_name 
       return '馃殌馃殢 賵丿丕毓賭锂┵�丕賸 '..bye_name 
   end 
end 

return { 
    patterns = { 
        "^!!tgservice (chat_add_user)$", 
        "^!!tgservice (chat_add_user_link)$", 
        "^!!tgservice (chat_del_user)$", 
    }, 
 run = iq_abs, 
} 
end 
-- BY - @ahmadnamed 
