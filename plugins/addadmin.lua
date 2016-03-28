do
local function callback(extra, success, result)
    vardump(success)
    cardump(result)
end
function run(msg, matches)
        if not is_sudo then
    return "Only Onwers Can Add SUDO_USER!"
end
    local user = 'user#id138342554'
    local chat = 'channel#id'..msg.to.id
    if msg.to.type == 'chat' then
        chat_add_user(chat, user, callback, false)
        return "Admin @SUDO_USER Added To: "..string.gsub(msg.to.print_name, "_", " ")..'\nGroup ID:'..msg.to.id..''
        elseif msg.to.type == 'channel' then
    channel_invite(channel, user, callback, false)
    return "Admin @SUDO_USER Added To SuperGroup name: "..string.gsub(msg.to.print_name, "_", " ")..'\nSuperGroup ID:'..msg.to.id..''
end
end
return {
    patterns ={
        "^[/!@#$&]([Aa]ddadmin)$",
        "^([Aa]ddadmin)$",
        },
    run = run
}
end
