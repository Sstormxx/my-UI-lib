local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sstormxx/my-UI-lib/refs/heads/main/UI"))()

-- Change title
UI.SetTitle("MY SCRIPT")

-- UI Toggle key RightShift

UI.SetToggleKey(Enum.KeyCode.RightShift)

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
    print("Panic key set to:", key.Name)
end)

-- Keybind methods

print(panicKey:GetKey())           -- returns Enum.KeyCode
panicKey:SetKey(Enum.KeyCode.K)    -- sets key

-- TEXTBOX

UI.AddTextBox(SettingsTab, "Config Name", "Enter name...", function(text)
    print("Config:", text)
end)

-- INPUTBOX

local input = StormWare.AddInputBox(mySection, "Username", "Enter your name...", "Player1", function(value)
    print("Input changed:", value)
end)

-- LABEL (just text)

UI.AddLabel(SettingsTab, "StormWare v1.0 - Made with 💙")
UI.AddLabel(SettingsTab, "Press RightShift to toggle UI")

| Function                                                  | Description               | Parameters                                                |
| --------------------------------------------------------- | ------------------------- | --------------------------------------------------------- |
| `UI.SetTitle(text)`                                       | Change window title       | `text` (string)                                           |
| `UI.SetToggleKey(key)`                                    | Change hide/show key      | `key` (Enum.KeyCode)                                      |
| `UI.AddTab(name, icon)`                                   | Create a new tab          | `name` (string), `icon` (string, optional)                |
| `UI.AddSection(parent, title)`                            | Create a section/groupbox | `parent` (tab), `title` (string)                          |
| `UI.AddButton(parent, text, callback)`                    | Create a button           | `parent`, `text` (string), `callback` (function)          |
| `UI.AddToggle(parent, text, default, callback)`           | Create a toggle switch    | `parent`, `text`, `default` (bool), `callback` (function) |
| `UI.AddSlider(parent, text, min, max, default, callback)` | Create a slider           | `parent`, `text`, `min`, `max`, `default`, `callback`     |
| `UI.AddDropdown(parent, text, options, callback)`         | Create a dropdown         | `parent`, `text`, `options` (table), `callback`           |
| `UI.AddKeybind(parent, text, defaultKey, callback)`       | Create a keybind button   | `parent`, `text`, `defaultKey`, `callback`                |
| `UI.AddTextBox(parent, text, placeholder, callback)`      | Create a text input       | `parent`, `text`, `placeholder`, `callback`               |
| `UI.AddLabel(parent, text)`                               | Create text label         | `parent`, `text` (string)                                 |


<img width="745" height="537" alt="image" src="https://github.com/user-attachments/assets/4bbb3dbe-0493-4c7f-902e-3f2ff7808869" />

