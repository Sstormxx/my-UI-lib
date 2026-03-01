local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sstormxx/my-UI-lib/refs/heads/main/UI"))()

-- Change title
UI.SetTitle("MY SCRIPT")

-- Change toggle key from RightShift to Insert
UI.SetToggleKey(Enum.KeyCode.Insert)

-- Create tabs
local MainTab = UI.AddTab("Main", "⚡")
local VisualsTab = UI.AddTab("Visuals", "👁️")
local SettingsTab = UI.AddTab("Settings", "⚙️")

-- Create sections
local PlayerSection = UI.AddSection(MainTab, "Player")
local WorldSection = UI.AddSection(MainTab, "World")
local EspSection = UI.AddSection(VisualsTab, "ESP")

-- BUTTON
UI.AddButton(PlayerSection, "Reset Character", function()
    game.Players.LocalPlayer.Character:BreakJoints()
end)

-- TOGGLE (returns object with :Get() and :Set() methods)
local speedToggle = UI.AddToggle(PlayerSection, "Speed Hack", false, function(value)
    print("Speed enabled:", value)
    -- Enable/disable speed code here
end)

-- Get/set toggle state programmatically
print(speedToggle:Get()) -- returns true/false
speedToggle:Set(true)    -- turns toggle on

-- SLIDER (returns object with :Get() and :Set() methods)
local speedSlider = UI.AddSlider(PlayerSection, "Speed Amount", 16, 200, 50, function(value)
    print("Speed:", value)
end)

-- Get/set slider value
print(speedSlider:Get()) -- returns number
speedSlider:Set(100)     -- sets slider to 100

-- DROPDOWN (returns object with methods)
local tpDropdown = UI.AddDropdown(WorldSection, "Teleport", {"Spawn", "Shop", "Base", "Secret"}, function(selected)
    print("Teleporting to:", selected)
end)

-- Dropdown methods
tpDropdown:SetOptions({"New", "Options", "Here"})  -- Change options
tpDropdown:SetSelected("Shop")                      -- Set selected
print(tpDropdown:GetSelected())                     -- Get selected

-- KEYBIND (returns object with methods)
local panicKey = UI.AddKeybind(SettingsTab, "Panic Key", Enum.KeyCode.P, function(key)
    print("Panic key set to:", key.Name)wa
end)

-- Keybind methods
print(panicKey:GetKey())           -- returns Enum.KeyCode
panicKey:SetKey(Enum.KeyCode.K)    -- sets key

-- TEXTBOX
UI.AddTextBox(SettingsTab, "Config Name", "Enter name...", function(text)
    print("Config:", text)
end)

-- LABEL (just text)
UI.AddLabel(SettingsTab, "StormWare v1.0 - Made with 💙")
UI.AddLabel(SettingsTab, "Press RightShift to toggle UI")
