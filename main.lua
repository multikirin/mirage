local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "m1rage",
	LoadingTitle = "m1rage",
	LoadingSubtitle = "best script 4ever",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "m1rage_assets",
		FileName = "m1rage_conf"
	},
	KeySystem = true, -- Set this to true to use their key system
	KeySettings = {
		Title = "m1rage",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/dKAfDdyE2r)",
		SaveKey = true,
		Key = "imalittleskiduwu"
	}
})

Rayfield:Notify("m1rage", "Loaded!", 4483362458) -- Notfication -- Title, Content, Image
Rayfield:Notify("m1rage", "note:open and close the GUI using the right shift key.", 4483362458) -- Notfication -- Title, Content, Image
local Tab = Window:CreateTab("Fun", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Killing")

local Button = Tab:CreateInput({
	Name = "Fling",
	PlaceholderText = "Player name here",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		local plr = game.Players.LocalPlayer
local chr = plr.Character
local hrp = chr.HumanoidRootPart
local mdl = Instance.new("Model", game.Workspace)
local hum = Instance.new("Humanoid", mdl)
local torso = Instance.new("Part", mdl)
local head = Instance.new("Part", mdl)
local mouse = plr:GetMouse()
local name = Text
local getname = function()
for _,player in ipairs(game.Players:GetPlayers()) do
if string.match(player.Name, "^"..name) then
return player.Name
end
end
end
local victim = game.Workspace[getname(name)]
local count = 1

torso.Name = "Torso"
head.Name = "Head"
hum.Name = "Humanoid"
torso.Anchored = false
torso.CanCollide = false
torso.Position = Vector3.new(0, 10000, 0)
head.Anchored = true
head.CanCollide = false
head.Position = Vector3.new(0, 10000, 0)
plr.Character = mdl
plr.Character = chr
wait(6)
bth = Instance.new("BodyThrust", hrp)
bth.Force = Vector3.new(99999, 0, 99999)
bth.Location = hrp.Position
hrp.Transparency = 0.3

for i,v in pairs(plr.Character:GetChildren()) do
if v ~= hrp and v.Name ~= "Humanoid" then
v:Destroy()
end
end

wait(0.1)

hrp.CanCollide = false

while game["Run Service"].Heartbeat:Wait() do
if count < 1000 then
hrp.Position = victim.HumanoidRootPart.Position
count = count + 1
else
game.Players.LocalPlayer.Character:Destroy()
break
end
end
	end,
})
local Slider = Tab:CreateSlider({
	Name = "Fling All",
	Range = {0, 1000},
	Increment = 10,
	Suffix = "Speed",
	CurrentValue = 500,
	Flag = "flingallspeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		 -- Made by mickeygun24

power = Value -- change this to make it more or less powerful
for i,v in pairs(game.Players.LocalPlayer.Character.HumanoidRootPart:GetChildren()) do
	if v:IsA("BodyThrust") then
		v:destroy()
	end
end
game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.Head.CanCollide = false
game.Players.LocalPlayer.Character.Torso.CanCollide = false
game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)

wait(.1)
local bambam = Instance.new("BodyThrust")
bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
bambam.Force = Vector3.new(power,0,power)
bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	end,
})

local Tab2 = Window:CreateTab("Specific", 4483362458) -- Title, Image

local Section = Tab2:CreateSection("Prison Life")

local superpunch = Tab2:CreateButton({
	Name = "Super Punch",
	Callback = function()
		mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']
mouse = game.Players.LocalPlayer:GetMouse()
punching = false
cooldown = false

function punch()
cooldown = true
local part = Instance.new("Part", game.Players.LocalPlayer.Character)
part.Transparency = 1
part.Size = Vector3.new(5, 2, 3)
part.CanCollide = false
local w1 = Instance.new("Weld", part)
w1.Part0 = game.Players.LocalPlayer.Character.Torso
w1.Part1 = part
w1.C1 = CFrame.new(0,0,2)
part.Touched:connect(function(hit)
if game.Players:FindFirstChild(hit.Parent.Name) then
local plr = game.Players:FindFirstChild(hit.Parent.Name)
if plr.Name ~= game.Players.LocalPlayer.Name then
part:Destroy()

for i = 1,100 do
meleeRemote:FireServer(plr)
end
end
end
end)

wait(1)
cooldown = false
part:Destroy()
end


mouse.KeyDown:connect(function(key)
if cooldown == false then
if key:lower() == "f" then

punch()

end
end
end)
end,
})

local prisonlifekillaura = Tab2:CreateButton({
	Name = "Kill Aura",
	Callback = function()
spawn(function()
    while wait(0.1) do
        for i, v in next, game:GetService("Players"):GetChildren() do
            pcall(function()
                if v~= game:GetService("Players").LocalPlayer and not v.Character:FindFirstChildOfClass("ForceField") and v.Character.Humanoid.Health > 0 then
                    while v.Character:WaitForChild("Humanoid").Health > 0 do
                        wait();
                        
                        for x, c in next, game:GetService("Players"):GetChildren() do
                            if c ~= game:GetService("Players").LocalPlayer then game.ReplicatedStorage.meleeEvent:FireServer(c) end
                        end
                    end
                end
            end)
            wait()
        end
   end
end)
			end,
})
local prisonlifekillall = Tab2:CreateButton({
	Name = "Kill All",
	Callback = function()
spawn(function()
    while wait(0.1) do
        for i, v in next, game:GetService("Players"):GetChildren() do
            pcall(function()
                if v~= game:GetService("Players").LocalPlayer and not v.Character:FindFirstChildOfClass("ForceField") and v.Character.Humanoid.Health > 0 then
                    while v.Character:WaitForChild("Humanoid").Health > 0 do
                        wait();
                        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame;
                        for x, c in next, game:GetService("Players"):GetChildren() do
                            if c ~= game:GetService("Players").LocalPlayer then game.ReplicatedStorage.meleeEvent:FireServer(c) end
                        end
                    end
                end
            end)
            wait()
        end
   end
end)
			end,
})

local Slider2 = Tab:CreateSlider({
	Name = "Speed",
	Range = {0, 1000},
	Increment = 5,
	Suffix = "Speed",
	CurrentValue = 25,
	Flag = "speedspeed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed=Value
	end,
	})

--[[
local Toggle = Tab:CreateToggle({
	Name = "Toggle Example",
	CurrentValue = false,
	Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place when the toggle is pressed
    		-- The variable (Value) is a boolean on whether the toggle is true or false
	end,
})

local Slider = Tab:CreateSlider({
	Name = "Slider Example",
	Range = {0, 100},
	Increment = 10,
	Suffix = "Bananas",
	CurrentValue = 10,
	Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
		-- The function that takes place when the slider changes
    		-- The variable (Value) is a number which correlates to the value the slider is currently at
	end,
})

local Label = Tab:CreateLabel("Label Example")

local Paragraph = Tab:CreateParagraph({Title = "Paragraph Example", Content = "Paragraph Example"})

local Input = Tab:CreateInput({
	Name = "Input Example",
	PlaceholderText = "Input Placeholder",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
	end,
})

local Keybind = Tab:CreateKeybind({
	Name = "Keybind Example",
	CurrentKeybind = "Q",
	HoldToInteract = false,
	Flag = "Keybind1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
		-- The function that takes place when the keybind is pressed
    		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
	end,
})

local Dropdown = Tab:CreateDropdown({
	Name = "Dropdown Example",
	Options = {"Option 1","Option 2"},
	CurrentOption = "Option 1",
	Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
	  	  -- The function that takes place when the selected option is changed
    	  -- The variable (Option) is a string for the value that the dropdown was changed to
	end,
})

local Button = Tab:CreateButton({
	Name = "Destroy UI",
	Callback = function()
		Rayfield:Destroy()
	end,
})
]]--
-- Extras

-- getgenv().SecureMode = true -- Only Set To True If Games Are Detecting/Crashing The UI

-- Rayfield:Destroy() -- Destroys UI

-- Rayfield:LoadConfiguration() -- Enables Configuration Saving

-- Section:Set("Section Example") -- Use To Update Section Text

-- Button:Set("Button Example") -- Use To Update Button Text

-- Toggle:Set(false) -- Use To Update Toggle

-- Slider:Set(10) -- Use To Update Slider Value

-- Label:Set("Label Example") -- Use To Update Label Text

-- Paragraph:Set({Title = "Paragraph Example", Content = "Paragraph Example"}) -- Use To Update Paragraph Text

-- Keybind:Set("RightCtrl") -- Keybind (string) -- Use To Update Keybind

-- Dropdown:Set("Option 2") -- The new option value -- Use To Update/Set New Dropdowns
