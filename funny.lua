-- funny.lua
local url = "https://raw.githubusercontent.com/razexsss-ai/razxssFUNNY-/main/funny.json"

local HttpGet = game and game.HttpGet or function() end
local function fetchJSON()
    local data = nil
    local ok, res = pcall(function()
        return game:HttpGet(url)
    end)
    if ok and res then
        local json = game:GetService("HttpService"):JSONDecode(res)
        return json
    end
    return {}
end

return fetchJSON()
