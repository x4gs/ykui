getgenv().yuki = {
    ['Main'] = {
        Intro = true,
        Notifications = true,
    },
    ['Camlock'] = {
        ToggleKey = Enum.KeyCode.C,
        AimPart = {"Head"},
        Prediction = 0.118,
    },
    ['FOV'] = {
        ShowFOW = true,
        Color = Color3.fromRGB(255, 255, 255),
        Radius = 100,
    },
    ['Misc'] = {
        Smoothness = true,
        Smoothness_Value = 0.100,
        Shake = true,
        Shake_Value = 35,
        UnlockOnPlayerTarget = true,
        UnlockOnTargetDeath = true,
        UnlockWhenTyping = true,
        UseNearestPart = false,
        DisableWhenOutOfRadius = false,
    },
    ['CharacterMisc'] = {
        PermKorblox = true,
        PermHeadless = true, -- work in progress ^_^
        EpicFace = true, --// in v3
        EpicVampire = true, --// in v3
        SSHF = false, --// in v3
        TryhardAnims = true, --// ITS HERERERERER >_<
    }
    ['ShakeMisc'] = {
        Enabled = true,
        X = 7,
        Y = 4,
        Z = 2,
    },
    ['EasingStyles'] = {
        First = Enum.EasingStyle.Quint,
        Second = Enum.EasingStyle.Exponential
    },
}

if not game:IsLoaded() then
    game.Loaded:Wait()
end

if yuki.Main.SendNotification == true then
    game.StarterGui:SetCore("SendNotification",{
        Title = "Loading Yuki...";
        Text = "";
        Icon = "rbxassetid://13520185766",
        Duration = 2;
    })
    wait(5)
    game.StarterGui:SetCore("SendNotification",{
        Title = "Loading Variables...";
        Text = "";
        Icon = "rbxassetid://13520185766",
        Duration = 2;
    })
    wait(2)
    game.StarterGui:SetCore("SendNotification",{
        Title = "Checking Whitelist";
        Text = "";
        Icon = "rbxassetid://13520185766",
        Duration = 2;
    })
end
if not LPH_OBFUSCATED then
    LPH_JIT_MAX = function(...) return(...) end;
    LPH_NO_VIRTUALIZE = function(...) return(...) end;
end
if yuki.Main.Intro == true then
    local blur = Instance.new("BlurEffecr", game.Lighting)
    blur.size = 0
    local ScreenGui = Instance.new("ScreenGui")
    local ImageLabel = Instance.new("ImageLabel")
    ScreenGui.Parent = game.CoreGui
    ImageLabel.Parent = ScreenGui
    ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
    ImageLabel.BackgroundTransparency = 1
    ImageLabel.Position = UDim2.new(0.5, -(700 / 2), 0.5, -(700 / 2))
    ImageLabel.Rotation = 0
    ImageLabel.Size = UDim2.new(0, 700,0, 700)
    ImageLabel.Image = "rbxassetid://13520185766"
    ImageLabel.ImageTransparency = 1

    for i = 1, 50, 2 do
        blur.Size = i
        ImageLabel.ImageTransparency = ImageLabel.ImageTransparency - 0.1
        wait()
    end
    wait(1)

    for i = 1, 50, 2 do
        blur.Size = 50 - i
        ImageLabel.ImageTransparency = ImageLabel.ImageTransparency + 0.1
        wait()
    end
end
blur:Destroy()
ScreenGui:Destroy()

if yuki.CharacterMisc.PermKorblox == true then
    local ply = game.Players.LocalPlayer
    local chr = ply.Character

    local function CustomizeCharacter()
        chr.RightLowerLeg.MeshId = "902942093"
        chr.RightLowerLeg.Transparency = 1
        chr.RightUpperLeg.MeshId = "http:/www.roblox.com/asset/?id=902942096"
        chr.RightUpperLeg.TextureID = "http://roblox.com/asset/?id=902843398"
        chr.RightFoot.MeshId = "902942089"
        chr.RightFoot.Transparency = 0
    end
    
    CustomizeCharacter()

    plr.CharacterAdded:Connect(CustomizeCharacter)
