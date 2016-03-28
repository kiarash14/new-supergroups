do
   local function invite_user(channel, user)
   local status = channel_invite_user (channel, user, ok_cb, false)
   if not status then
   end
end
    local function run(msg, matches)
           if matches[1] == 'channel_del_user' then
                invite_user("channel#id"..msg.to.id, "user#id"..msg.action.user.id)
                return "fucked yor mather fuck fuck fuck fuck fuck fuck fuck fuck fuck fucked yor mather fuck fuck fuck fuck fuck fuck fuck fuck fuck fucked yor mather fuck fuck fuck fuck fuck fuck fuck fuck fuck fucked yor mather fuck fuck fuck fuck fuck fuck fuck fuck fuck fucked yor mather fuck fuck fuck fuck fuck fuck fuck fuck fuck "
    end
end
return {patterns = { "^!!tgservice (channel_del_user)$", }, run = run } end
