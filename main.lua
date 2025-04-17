-- Dũng Hub - Hoho Giao Diện - Không cần key - Xeno 1.1.75
local Logo = "https://raw.githubusercontent.com/dunxdz/Dunxhub/main/boruto_logo.png"
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RunDTM/HohoHub/main/UILibrary.lua"))()
local Window = Library:CreateWindow("Dũng Hub", Logo)

-- Auto Farm Tab
local Tab1 = Window:CreateTab("Auto Farm")
Tab1:AddToggle("Auto Farm Level", false, function(v)
    getgenv().AutoFarmLevel = v
    while getgenv().AutoFarmLevel do
        wait()
        print("Đang farm level...") -- Bạn thay bằng logic farm thật ở đây
    end
end)

-- Teleport Tab
local Tab2 = Window:CreateTab("Teleport")
Tab2:AddButton("Đến Đảo Chính", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1041, 134, 1325)
end)
Tab2:AddButton("Đến Đảo Bí Ẩn", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3876, 5, -1930)
end)

-- Fruit Notifier Tab
local Tab3 = Window:CreateTab("Fruit Notifier")
Tab3:AddLabel("Hiện thông báo khi có trái cây spawn")
Tab3:AddToggle("Bật thông báo", false, function(v)
    getgenv().FruitNotify = v
    while getgenv().FruitNotify do
        wait(5)
        print("🔔 Có trái spawn!") -- Sau này thay bằng API check real
    end
end)

-- ESP Tab
local Tab4 = Window:CreateTab("ESP")
Tab4:AddToggle("ESP Người Chơi", false, function(v)
    getgenv().PlayerESP = v
    print("ESP: ", v)
end)

-- Misc Tab
local Tab5 = Window:CreateTab("Misc")
Tab5:AddLabel("Script by Dũng 🔥")
Tab5:AddButton("Copy Discord", function()
    setclipboard("https://discord.gg/yourserver") -- Đổi thành Discord thật
    print("Đã copy Discord")
end)
