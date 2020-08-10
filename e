--[[
Car script made by me
]]--

for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
if v:IsA("Accessory") then
print(v)
end
end
    
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") and v.Handle:FindFirstChild("SpecialMesh") then
    ag = v.Handle:FindFirstChild("SpecialMesh")
    ag:Destroy()
    end
    end
    
    for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if v:IsA("Accessory") and v.Handle:FindFirstChild("Mesh") then
    ag = v.Handle:FindFirstChild("Mesh")
    ag:Destroy()
    end
    end

    wait()
    
    for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA("Accessory") then
    v.Handle.Transparency = 1
            v.Handle.Parent = workspace
v.Parent = workspace
end
    end

    wait(0.1)
    
    game.Players.LocalPlayer.Character:BreakJoints()
    
    wait(7)
    
local unanchoredparts = {}
local movers = {}
 local tog = true
 local move = false
local Player = game:GetService("Players").LocalPlayer
local Character = Player.Character
local mov = {};
local mov2 = {};

local Head = "MeshPartAccessory" --press f9 and find the hat that looks like a heads name and put it here
local x = -2   --Edit Position for head
local y = 2.8   --Edit Position for head x2
local z = 3 --Edit Position for head x3


local Hats = {MainBody = Character:WaitForChild("MeshPartAccessory"), -- https://web.roblox.com/catalog/4332375148/Eltor-a-RS750
             Wheel1  = Character:WaitForChild("UglyEgg"), -- https://web.roblox.com/catalog/24826811/Agonizingly-Ugly-Egg-of-Screensplat
             Wheel2 = Character:WaitForChild("SFOTHEgg"), -- https://web.roblox.com/catalog/27345567/Fiery-Egg-of-Egg-Testing
              Wheel3  = Character:WaitForChild("SpecularEgg"), -- https://web.roblox.com/catalog/24826800/Specular-Egg-of-Red-No-Blue
               Fire   = Character:WaitForChild("Hair"), -- https://web.roblox.com/catalog/3814474927/Cool-Side-Shave
               Fire1   = Character:WaitForChild("International Fedora"), -- https://web.roblox.com/catalog/3940375351/International-Fedora-Philippines
               Fire2   = Character:WaitForChild("Demon's Trident"), -- https://web.roblox.com/catalog/4623723810/Demons-Trident
               Wheel4   = Character:WaitForChild("BlueLineBurstEgg") -- https://web.roblox.com/catalog/111776247/The-Last-Egg-of-2013

             
}

for i,v in next, Hats do
v.Handle.AccessoryWeld:Remove()
for _,mesh in next, v:GetDescendants() do
if mesh:IsA("Mesh") or mesh:IsA("SpecialMesh") then
mesh:Remove()
end
end
end
		game:GetService("RunService").RenderStepped:Connect(function()
	    		sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
		end)
local Network = coroutine.create(function()
while true do
game:GetService("RunService").Heartbeat:Wait()
settings().Physics.AllowSleep = false
game:GetService("Players").LocalPlayer.MaximumSimulationRadius = math.pow(math.huge,math.huge)*math.huge
game:GetService("Players").LocalPlayer.SimulationRadius = math.pow(math.huge,math.huge)*math.huge
end
end)
coroutine.resume(Network)

function ftp(str)
    local pt = {};
    if str ~= 'me' and str ~= 'random' then
        for i, v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():find(str:lower()) then
                table.insert(pt, v);
            end
        end
    elseif str == 'me' then
        table.insert(pt, plr);
elseif str == 'random' then
table.insert(pt, game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]);
    end
    return pt;
end

Character.Head.Transparency = 0
Character.Head.face:Remove()
Character.Torso.Transparency = 0
Character["Right Arm"].Transparency = 0
Character["Left Arm"].Transparency = 0
Character["Right Leg"].Transparency = 0
Character["Left Leg"].Transparency = 0
local function align(i,v)
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0)
local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(0,0,0)
local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = true
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 65
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = true
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 50
end
align(Hats.MainBody.Handle, Character["Torso"])
align(Hats.Wheel1.Handle, Character["Torso"])
align(Hats.Wheel2.Handle, Character["Torso"])
align(Hats.Wheel3.Handle, Character["Torso"])
align(Hats.Wheel4.Handle, Character["Torso"])
align(Hats.Fire.Handle, Character["Torso"])
align(Hats.Fire1.Handle, Character["Torso"])
align(Hats.Fire2.Handle, Character["Torso"])

Hats.MainBody.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.Wheel1.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.Wheel2.Handle.Attachment.Rotation = Vector3.new(0,0,0)
Hats.Wheel3.Handle.Attachment.Rotation = Vector3.new(0,0,0) -- sword
Hats.Wheel4.Handle.Attachment.Rotation = Vector3.new(0,0,0) -- sword
Hats.Fire.Handle.Attachment.Rotation = Vector3.new(-90,0,0) -- sword
Hats.Fire1.Handle.Attachment.Rotation = Vector3.new(-90,0,0) -- sword
Hats.Fire2.Handle.Attachment.Rotation = Vector3.new(0,0,0) -- sword

Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment1"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment2"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment3"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment4"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment5"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment6"
Character:WaitForChild("Torso"):FindFirstChild("Attachment").Name = "Attachment7"


Character:WaitForChild("Torso").Attachment.Position = Vector3.new(0,-1,3.5) -- idk
Character:WaitForChild("Torso").Attachment1.Position = Vector3.new(0,-2.9,0)
Character:WaitForChild("Torso").Attachment2.Position = Vector3.new(-1.7,-5,-2.4)
Character:WaitForChild("Torso").Attachment3.Position = Vector3.new(-1.7,-5,2.4)
Character:WaitForChild("Torso").Attachment4.Position = Vector3.new(1.7,-5,2.4)
Character:WaitForChild("Torso").Attachment5.Position = Vector3.new(1.7,-5,-2.4)
Character:WaitForChild("Torso").Attachment6.Position = Vector3.new(1,-2.5,-3.4) -- idk
Character:WaitForChild("Torso").Attachment7.Position = Vector3.new(-1,-2.5,-3.4) -- idk


game.Players.LocalPlayer.Character.Animate.idle.Animation1.AnimationId = "rbxassetid://178130996"
game.Players.LocalPlayer.Character.Animate.idle.Animation2.AnimationId = "rbxassetid://178130996"
game.Players.LocalPlayer.Character.Animate.walk.WalkAnim.AnimationId = "rbxassetid://178130996"
game.Players.LocalPlayer.Character.Animate.run.RunAnim.AnimationId = "rbxassetid://178130996"
game.Players.LocalPlayer.Character.Animate.jump.JumpAnim.AnimationId = "rbxassetid://178130996"
game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "rbxassetid://178130996"
    game.Players.LocalPlayer.Character.Animate.fall.FallAnim.AnimationId = "rbxassetid://178130996"
    game.Players.LocalPlayer.Character.Animate.sit.SitAnim.AnimationId = "rbxassetid://178130996"



game.Players.LocalPlayer.Character.Humanoid.HipHeight = 3
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30


