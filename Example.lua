local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Sstormxx/my-UI-lib/refs/heads/main/UI"))()

-- Change title
UI.SetTitle("MY SCRIPT")

-- UI Toggle key RightShift

UI.SetToggleKey(Enum.KeyCode.RightShift)

-- Create tabs

local MainTab = UI.AddTab("Main", "⚡")
local SettingsTab = UI.AddTab("Settings", "⚙️")

-- Create sections
local PlayerSection = UI.AddSection(MainTab, "Player")
local OptionsSection = UI.AddSection(VisualsTab, "Settings")

-- BUTTON
UI.AddButton(PlayerSection, "Button", function()
    -- Put code here
end)

-- TOGGLE (returns object with :Get() and :Set() methods)
local LocalToggle = UI.AddToggle(PlayerSection, "Toggle", false, function(value)
    print("Speed enabled:", value)
    -- Enable/disable speed code here
end)

-- SLIDER (returns object with :Get() and :Set() methods)
local LocalSlider = UI.AddSlider(PlayerSection, "Slider", 16, 200, 50, function(value)
    print("Slider:", value)
end)

-- DROPDOWN (returns object with methods)
local LocalDropdown = UI.AddDropdown(PlayerSection, "Dropdown", {"Spawn", "Shop", "Base", "Secret"}, function(selected)
    print("Teleporting to:", selected)
end)

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

local input = UI.AddTextBox(PlayerSection, "Username", "Enter your name...", "Player1", function(value)
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

