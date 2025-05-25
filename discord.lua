local discord = {}

function discord.callWebhook(url, username, title, message)
    local data = { ["username"] = username, ["content"] = message, ["embeds"] = { { ["title"] = title} } }
    local headers = { ["Content-Type"] = "application/x-www-form-urlencoded" }
    local request, message = http.post(url, data, headers)
    if not request then
        return false
    end
    return true
end

return discord
