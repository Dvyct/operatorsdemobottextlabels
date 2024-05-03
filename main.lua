local RunService = game:GetService("RunService")
local Instances = game.Workspace.Level:GetChildren()



local function updateConfig()
    for _, instance in ipairs(Instances) do
        if instance.Name ~= "Cells" and instance.Name ~= "Motors" then
            local Bots = instance:FindFirstChild("BotModel"):GetChildren()
            local BotDatas = instance.BotData:GetChildren()
            for _, bot in ipairs(Bots) do
                local botdataID = bot:GetAttribute("v246") 
                for _, data in ipairs(BotDatas) do
                    if data.Name == botdataID then
                        local outfit = data:GetAttribute("Outfit")
                        
                        local head = bot.Head
                      local guiTemplate = Instance.new("BillboardGui")
                      guiTemplate.Parent = head
guiTemplate.Name = outfit
guiTemplate.ResetOnSpawn = false
guiTemplate.AlwaysOnTop = true
guiTemplate.LightInfluence = 0
guiTemplate.Size = UDim2.new(1.75, 0, 1.75, 0)

local espTemplate = Instance.new("TextLabel")
espTemplate.Parent = guiTemplate
espTemplate.BackgroundTransparency = 1
espTemplate.Size = UDim2.new(1, 0, 1, 0)
espTemplate.BorderSizePixel = 0
espTemplate.Font = "GothamSemibold"
espTemplate.Text = outfit
espTemplate.TextSize = 16
                        print(data.Name .. " with " .. botdataID .. " outfit being " .. outfit)
                    end
                end
            end
        end
    end
end

updateConfig()
