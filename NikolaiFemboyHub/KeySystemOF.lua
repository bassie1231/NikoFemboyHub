local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nikolai Femboy Hub Key System",
   Icon = "moon-star",
   LoadingTitle = "Nikolai Femboy Hub Key System",
   LoadingSubtitle = "By Roligue Rolamentos",
   ShowText = "Nikolai Femboy Hub V1",
   Theme = "Ocean",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = true,
   DisableBuildWarnings = true,

   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil,
      FileName = "NikolaiFemboyHubConfigsKeySystem"
   },
})

local keyTab = Window:CreateTab("Key System", "key")

local enterKeyText = ""

local getButton = keyTab:CreateButton({
   Name = "Get Key",
   Callback = function()
        setclipboard("https://loot-link.com/s?7KniVtzF")

        Rayfield:Notify({
            Title = "Check your clipboard",
            Content = "The key link has been copied to your clipboard!",
            Duration = 5,
            Image = "clipboard",
        })
   end,
})

local keySection = keyTab:CreateSection("Section Example")

local enterInput = keyTab:CreateInput({
    Name = "Enter Key",
    CurrentValue = "",
    PlaceholderText = "",
    RemoveTextAfterFocusLost = false,
    Flag = "InputEnterKey",
    Callback = function(KeyText)
        enterKeyText = KeyText
    end,
})

local submitKeyButton = keyTab:CreateButton({
    Name = "Submit Key",
    Callback = function()
        if enterKeyText == "VIP-PREM-4X7K2M9Q-RNW8-TZAL-5FJB-GOLD" or enterKeyText == "f3a2d1e8-7c4b-4f09-a6e5-2b8d0c3f1a97" then
            Rayfield:Notify({
                Title = "Success!",
                Content = "We are redirecting to the hub, have fun!",
                Duration = 5,
                Image = "sparkles",
            })

            loadstring(game:HttpGet('https://raw.githubusercontent.com/bassie1231/NikoFemboyHub/refs/heads/main/NikolaiFemboyHub/NikolaiFemboyHubOF.lua'))()

            Rayfield:Destroy()
        else
            Rayfield:Notify({
                Title = "Error",
                Content = "The key is invalid!",
                Duration = 5,
                Image = "ban",
            })
        end
    end,
})
