if game.CoreGui:FindFirstChild("Article GUI 🛠️") == nil then
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "Article GUI 🛠️"

_G.GuiName = {
      FrameGui = "Frame",
      Label = "TextLabel",
      Button = "TextButton",
      ImagesLabel = "ImageLabel",
      ImagesButton = "ImageButton",
      Box = "TextBox",
      Corner = "UICorner"
}

function CreateClear(Name,call)
if game.CoreGui["Article GUI 🛠️"]:FindFirstChild(Name) ~= nil then
game.CoreGui["Article GUI 🛠️"]:FindFirstChild(Name):Destroy()
else
local Frame = Instance.new("Frame")
Frame.Name = Name
Frame.Size = UDim2.new(0.4, 0, 0.3, 0)
Frame.Position = UDim2.new(0.28, 0, 0.5, 0)
Frame.BackgroundColor3 = Color3.new(0,0,0)
Frame.Active = true
Frame.BackgroundTransparency = 0.5
Frame.Draggable = true
Frame.Parent = gui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.4, 0, 0.3, 0)
TextButton.Position = UDim2.new(0.5, 0, 0.6, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 65025)
TextButton.Text = "yes"
TextButton.BackgroundTransparency = 0 
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
pcall(call)
game.CoreGui["Article GUI 🛠️"]:FindFirstChild(Name):Destroy()
end)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TextButton

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.4, 0, 0.3, 0)
TextButton.Position = UDim2.new(0.1, 0, 0.6, 0)
TextButton.BackgroundColor3 = Color3.new(65025, 0, 0)
TextButton.Text = "no"
TextButton.BackgroundTransparency = 0 
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame
TextButton.MouseButton1Click:Connect(function()
game.CoreGui["Article GUI 🛠️"]:FindFirstChild(Name):Destroy()
end)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = TextButton

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(0.9, 0, 0.5, 0)
TextLabel.Position = UDim2.new(0.02, 0, 0.02, 0)
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.Text = "are you sure you want to "..Name
TextLabel.BackgroundTransparency = 0.5
TextLabel.TextColor3 = Color3.new(255, 255, 255)
TextLabel.Parent = Frame
end
end

local Frame31 = Instance.new("Frame")
Frame31.Name = "MainMake"
Frame31.Size = UDim2.new(0.595, 0, 0.769, 0)
Frame31.Position = UDim2.new(0.25, 0, 0, 0)
Frame31.BackgroundColor3 = Color3.new(1, 1, 1)
Frame31.BorderColor3 = Color3.new(0, 0, 0)
Frame31.Active = true
Frame31.BackgroundTransparency = 1
Frame31.Draggable = true
Frame31.Parent = gui

local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Position = UDim2.new(0, 0, 0, 0)
ImageLabel.BackgroundColor3 = Color3.new(255,255,255)
ImageLabel.BackgroundTransparency = 1
ImageLabel.ImageColor3 = Color3.new(1, 0, 0)
ImageLabel.Image = "rbxassetid://4576475446"
ImageLabel.Parent = Frame31

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0.755, 0, 0.702, 0)
Frame.Position = UDim2.new(0.025, 0, 0.128, 0)
Frame.BackgroundColor3 = Color3.new(0,0,0)
Frame.Active = true
Frame.BackgroundTransparency = 0
Frame.Parent = Frame31

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.999, 0, 1, 0)
TextBox.Position = UDim2.new(0, 0, 0, 0)
TextBox.BackgroundColor3 = Color3.new(0,0,0)
TextBox.Text = "-- put your mainframe into the screengui that I have made (frame.Parent = gui)"
TextBox.TextColor3 = Color3.new(1,1,1)
TextBox.BackgroundTransparency = 1
TextBox.ClipsDescendants = true
TextBox.MultiLine = true
TextBox.ClearTextOnFocus = false
TextBox.FontFace = Font.new("rbxasset://fonts/families/Ubuntu.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.TextYAlignment = Enum.TextYAlignment.Top
TextBox.TextSize = 17
TextBox.Parent = Frame

local Frame = Instance.new("Frame")
Frame.Name = "Frame1"
Frame.Size = UDim2.new(0.177, 0, 0.655, 0)
Frame.Position = UDim2.new(0.801, 0, 0.175, 0)
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 1
Frame.Active = true
Frame.BackgroundTransparency = 0 
Frame.Draggable = true
Frame.Parent = Frame31

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Frame

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BorderSizePixel = 1
ScrollingFrame.ScrollBarThickness = 0
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Parent = Frame

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.Parent = ScrollingFrame

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.995, 0, 0.059, 0)
TextButton.Position = UDim2.new(0, 0, 0, 0)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 1
TextButton.Text = "Color"
TextButton.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextButton.BackgroundTransparency = 0 
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.TextSize = 17
TextButton.Parent = ScrollingFrame
TextButton.MouseButton1Click:Connect(function()
game.CoreGui["Article GUI 🛠️"].ColorGui.Visible = not game.CoreGui["Article GUI 🛠️"].ColorGui.Visible
end)

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.995, 0, 0.059, 0)
TextButton.Position = UDim2.new(0, 0, 0, 0)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 1
TextButton.Text = "Color V2"
TextButton.FontFace = Font.new("rbxasset://fonts/families/Merriweather.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextButton.BackgroundTransparency = 0 
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.TextSize = 17
TextButton.Parent = ScrollingFrame
TextButton.MouseButton1Click:Connect(function()
game.CoreGui["Article GUI 🛠️"].ColorGuiv2.Visible = not game.CoreGui["Article GUI 🛠️"].ColorGuiv2.Visible
end)

function TextButtonNew(Name, Button, Call)
Button.Size = Button.Size
Button.Po = Button.Po
Button.SizeTex = Button.SizeTex
Button.BackgroundColor = Button.BackgroundColor or Color3.new(255, 255, 255)
Button.FontFaceButton = Button.FontFaceButton

local TextButton = Instance.new("TextButton")
TextButton.Size = Button.Size
TextButton.TextSize = Button.SizeTex
TextButton.Position = Button.Po
TextButton.BackgroundColor3 = Button.BackgroundColor
TextButton.Text = Name
TextButton.FontFace = Button.FontFaceButton
TextButton.BackgroundTransparency = 0 
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.Parent = Frame31
TextButton.MouseButton1Click:Connect(function()
pcall(Call)
end)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = TextButton
end

TextButtonNew("+",  {
      Size = UDim2.new(0.176, 0, 0.1, 0),
      Po = UDim2.new(0.023, 0, 0.864, 0),
      SizeTex = 48,
      FontFaceButton = Font.new("rbxasset://fonts/families/Sarpanch.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
game.CoreGui["Article GUI 🛠️"].Select.Visible = not game.CoreGui["Article GUI 🛠️"].Select.Visible
end)

TextButtonNew("CLEAN",  {
      Size = UDim2.new(0.176, 0, 0.1, 0),
      Po = UDim2.new(0.604, 0, 0.864, 0),
      SizeTex = 14,
      BackgroundColor = Color3.new(0, 0, 255),
      FontFaceButton = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
CreateClear("Clean Script?", function()
game.CoreGui["Article GUI 🛠️"].MainMake.Frame.TextBox.Text = "-- put your mainframe into the screengui that I have made (frame.Parent = gui)"
end)
end)

TextButtonNew("COPY",  {
      Size = UDim2.new(0.176, 0, 0.1, 0),
      Po = UDim2.new(0.215, 0, 0.864, 0),
      SizeTex = 14,
      FontFaceButton = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
if setclipboard then
setclipboard([[
local gui = Instance.new("ScreenGui", game.CoreGui)
gui.Name = "TEXT NAME"

]]..game.CoreGui["Article GUI 🛠️"].MainMake.Frame.TextBox.Text)
elseif not setclipboard then
Old = game.CoreGui["Article GUI 🛠️"].MainMake.Frame.TextBox.Text
wait(0.1)
game.CoreGui["Article GUI 🛠️"].MainMake.Frame.TextBox.Text = ([[
1. Press Hold The Screen
2. Select All 
3. Copy Now
Dont rush to exit, you will lose everything
You have to copy it first before you can exit.
---------------------------------------------------------------

]]..Old)
end
end)

TextButtonNew("CONSOLE",  {
      Size = UDim2.new(0.176, 0, 0.1, 0),
      Po = UDim2.new(0.41, 0, 0.864, 0),
      SizeTex = 14,
      FontFaceButton = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()

end)

TextButtonNew("UPDATE",  {
      Size = UDim2.new(0.176, 0, 0.1, 0),
      Po = UDim2.new(0.801, 0, 0.864, 0),
      SizeTex = 14,
      FontFaceButton = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
if game.CoreGui:FindFirstChild("Article GUI") then
game.CoreGui:FindFirstChild("Article GUI"):Destroy()
end
local GUI = Instance.new("ScreenGui", game.CoreGui)
GUI.Name = "Article GUI"
local func, err = loadstring('gui = game.CoreGui:FindFirstChild("Article GUI") '..game.CoreGui["Article GUI 🛠️"].MainMake.Frame.TextBox.Text)
        if func then
            pcall(func)
        else
            print(err)
      end
end)

TextButtonNew("X",  {
      Size = UDim2.new(0.175, 0, 0.1, 0),
      Po = UDim2.new(0.801, 0, 0.026, 0),
      SizeTex = 14,
      BackgroundColor = Color3.new(255, 0, 0),
      FontFaceButton = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
CreateClear("Delete Gui?", function()
game.CoreGui:FindFirstChild("Article GUI 🛠️"):Destroy()
end)
end)

--- Select Gui ---

local Select = Instance.new("Frame")
Select.Name = "Select"
Select.Size = UDim2.new(0.35,0,0.8,0)
Select.Position = UDim2.new(0.1, 0, 0.1, 0)
Select.BackgroundColor3 = Color3.new(1, 1, 1)
Select.BorderColor3 = Color3.new(0, 0, 0)
Select.BorderSizePixel = 1
Select.Active = true
Select.Visible = false
Select.BackgroundTransparency = 0.55
Select.Draggable = true
Select.Parent = gui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Select

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.94, 0, 0.11, 0)
TextBox.Position = UDim2.new(0.03, 0, 0.03, 0)
TextBox.BackgroundColor3 = Color3.new(255, 255, 255)
TextBox.Text = ""
TextBox.TextColor3 = Color3.new(0, 0, 0)
TextBox.BackgroundTransparency = 0
TextBox.Font = Enum.Font.Code
TextBox.TextSize = 15
TextBox.Parent = Select
TextBox.Changed:Connect(function()
	if TextBox.Text:lower() ~= "" then
		for i,v in pairs(game.CoreGui["Article GUI 🛠️"].Select.Frame3.ScrollingFrame:GetDescendants()) do
			if v:IsA("TextButton") then
				if string.find(v.Text:lower(), TextBox.Text:lower()) then
					v.Visible = true
				else
					v.Visible = false
				end
			end
		end
	else
		for i, v in pairs(game.CoreGui["Article GUI 🛠️"].Select.Frame3.ScrollingFrame:GetDescendants()) do
			if v:IsA("TextButton") then
				v.Visible = true
			end
		end
	end
end)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = TextBox

local Frame3 = Instance.new("Frame")
Frame3.Name = "Frame3"
Frame3.Size = UDim2.new(0.95, 0, 0.82, 0)
Frame3.Position = UDim2.new(0.03, 0, 0.15, 0)
Frame3.BackgroundColor3 = Color3.new(1, 1, 1)
Frame3.Active = true
Frame3.BackgroundTransparency = 0 
Frame3.Parent = Select

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Frame3

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
ScrollingFrame.Position = UDim2.new(0, 0, 0, 0)
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BorderSizePixel = 1
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollingFrame.ScrollBarThickness = 0
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Parent = Frame3

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.Parent = ScrollingFrame

function CreateButtonMake(Name, Copy, call, callbox)
Copy.FaceFort = Copy.FaceFort

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.93, 0, 0.2, 0)
TextButton.Position = UDim2.new(0.5, 0, 0.5, 0)
TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 1
TextButton.Text = Name
TextButton.FontFace = Copy.FaceFort
TextButton.TextSize = 13
TextButton.BackgroundTransparency = 0 
TextButton.TextColor3 = Color3.new(255, 255, 255)
TextButton.Font = Enum.Font.Code
TextButton.Parent = ScrollingFrame
TextButton.MouseButton1Click:Connect(function()
pcall(call)
end)

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = TextButton

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.23, 0, 1, 0)
TextBox.Position = UDim2.new(0.77, 0, 0, 0)
TextBox.BackgroundColor3 = Color3.new(0,0, 255)
TextBox.Text = Name
TextBox.FontFace = Copy.FaceFort
TextBox.TextColor3 = Color3.new(255,255,255)
TextBox.BackgroundTransparency = 0
TextBox.BorderSizePixel = 0
TextBox.Font = Enum.Font.Code
TextBox.TextSize = 10
TextBox.Parent = TextButton
TextBox.FocusLost:Connect(function(enterPressed)
if enterPressed then
callbox(TextBox.Text)
end
end)
end

CreateButtonMake("Frame", {
    FaceFort = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
local function FrameName(Name)
return string.format([[
local %s = Instance.new("Frame")
%s.Size = UDim2.new(0.5, 0, 0.5, 0)
%s.Position = UDim2.new(0.5, 0, 0.5, 0)
%s.BackgroundColor3 = Color3.new(1, 1, 1)
%s.BorderColor3 = Color3.new(0, 0, 0)
%s.BorderSizePixel = 1
%s.Active = true
%s.BackgroundTransparency = 0 
%s.Draggable = true
%s.Parent = gui

]], Name, Name, Name, Name, Name, Name, Name, Name, Name, Name)
end
setclipboard(FrameName(_G.GuiName.FrameGui))
end, function(Value)
_G.GuiName.FrameGui = Value
end)

CreateButtonMake("TextButton", {
    FaceFort = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
local function ButtonName(Name)
return string.format([[
local %s = Instance.new("TextButton")
%s.Size = UDim2.new(0.3, 0, 0.2, 0)
%s.Position = UDim2.new(0.5, 0, 0.5, 0)
%s.BackgroundColor3 = Color3.new(0, 0, 0)
%s.BorderColor3 = Color3.new(0, 0, 0)
%s.BorderSizePixel = 1
%s.Text = "Text"
%s.BackgroundTransparency = 0 
%s.TextColor3 = Color3.new(255, 255, 255)
%s.Font = Enum.Font.Code
%s.Parent = nill

]], Name, Name, Name, Name, Name, Name, Name, Name, Name, Name, Name)
end
setclipboard(ButtonName(_G.GuiName.Button))
end, function(Value)
_G.GuiName.Button = Value
end)

CreateButtonMake("TextLabel", {
    FaceFort = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
local function LabelName(Name)
return string.format([[
local %s = Instance.new("TextLabel")
%s.Size = UDim2.new(0.3, 0, 0.2, 0)
%s.Position = UDim2.new(0.5, 0, 0.5, 0)
%s.BackgroundColor3 = Color3.new(0, 0, 0)
%s.BorderColor3 = Color3.new(0, 0, 0)
%s.BorderSizePixel = 1
%s.Text = "Text"
%s.BackgroundTransparency = 0 
%s.TextColor3 = Color3.new(255, 255, 255)
%s.Font = Enum.Font.Code
%s.Parent = nill

]], Name, Name, Name, Name, Name, Name, Name, Name, Name, Name, Name)
end
setclipboard(LabelName(_G.GuiName.Label))
end, function(Value)
_G.GuiName.Label = Value
end)

CreateButtonMake("TextBox", {
    FaceFort = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
local function BoxName(Name)
return string.format([[
local %s = Instance.new("TextBox")
%s.Size = UDim2.new(0.3, 0, 0.2, 0)
%s.Position = UDim2.new(0.5, 0, 0.5, 0)
%s.BackgroundColor3 = Color3.new(0, 0, 0)
%s.BorderColor3 = Color3.new(0, 0, 0)
%s.BorderSizePixel = 1
%s.Text = "Text"
%s.TextColor3 = Color3.new(255, 255, 255)
%s.BackgroundTransparency = 0
%s.Font = Enum.Font.Code
%s.TextSize = 15
%s.Parent = nill

]], Name, Name, Name, Name, Name, Name, Name, Name, Name, Name, Name, Name)
end
setclipboard(BoxName(_G.GuiName.Box))
end, function(Value)
_G.GuiName.Box = Value
end)

CreateButtonMake("ImageButton", {
    FaceFort = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
local function ImageButtonName(Name)
return string.format([[
local %s = Instance.new("ImageButton")
%s.Size = UDim2.new(0.3, 0, 0.2, 0)
%s.Position = UDim2.new(0.5, 0, 0.5, 0)
%s.BackgroundColor3 = Color3.new(0, 0, 0)
%s.ImageColor3 = Color3.new(1, 0, 0)
%s.Image = "rbxassetid://0"
%s.ImageTransparency = 0.5
%s.ScaleType = Enum.ScaleType.Sliced
%s.BackgroundTransparency = 0 
%s.Parent = nill

]], Name, Name, Name, Name, Name, Name, Name, Name, Name, Name)
end
setclipboard(ImageButtonName(_G.GuiName.ImagesButton))
end, function(Value)
_G.GuiName.ImagesButton = Value
end)

CreateButtonMake("ImageLabel", {
    FaceFort = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
local function ImagesLabelName(Name)
return string.format([[
local %s = Instance.new("ImageLabel")
%s.Size = UDim2.new(0.3, 0, 0.2, 0)
%s.Position = UDim2.new(0.5, 0, 0.5, 0)
%s.BackgroundColor3 = Color3.new(0, 0, 0)
%s.ImageColor3 = Color3.new(1, 0, 0)
%s.Image = "rbxassetid://0"
%s.ImageTransparency = 0.5
%s.BackgroundTransparency = 0
%s.ScaleType = Enum.ScaleType.Sliced
%s.Parent = nill

]], Name, Name, Name, Name, Name, Name, Name, Name, Name, Name)
end
setclipboard(ImagesLabelName(_G.GuiName.ImagesLabel))
end, function(Value)
_G.GuiName.ImagesLabel = Value
end)

CreateButtonMake("UICorner", {
    FaceFort = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
}, function()
local function UICornerName(Name)
return string.format([[
local %s = Instance.new("UICorner")
%s.CornerRadius = UDim.new(0, 5)
%s.Parent = nill

]], Name, Name, Name)
end
setclipboard(UICornerName(_G.GuiName.Corner))
end, function(Value)
_G.GuiName.Corner = Value
end)

--- Color Gui ---

local Frame = Instance.new("Frame")
Frame.Name = "ColorGui"
Frame.Size = UDim2.new(0.3, 0, 0.5, 0)
Frame.Position = UDim2.new(0.3, 0, 0.2, 0)
Frame.BackgroundColor3 = Color3.new(0,0,0)
Frame.Active = true
Frame.BackgroundTransparency = 0.5
Frame.Draggable = true
Frame.Visible = false
Frame.Parent = gui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = Frame

local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.new(0.8, 0, 0.4, 0)
Frame2.Position = UDim2.new(0.1, 0, 0.1, 0)
Frame2.BackgroundColor3 = Color3.new(1, 1, 1)
Frame2.Active = true
Frame2.Parent = Frame

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.8, 0, 0.3, 0)
TextBox.Position = UDim2.new(0.1, 0, 0.6, 0)
TextBox.BackgroundColor3 = Color3.new(0, 0, 0)
TextBox.BorderColor3 = Color3.new(0, 0, 0)
TextBox.BorderSizePixel = 1
TextBox.Text = "255, 255, 255"
TextBox.TextColor3 = Color3.new(255, 255, 255)
TextBox.BackgroundTransparency = 0
TextBox.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextBox.TextSize = 15
TextBox.ClearTextOnFocus = false
TextBox.Parent = Frame
TextBox.Changed:Connect(function()
   if TextBox.Text ~= "" then
       local r, g, b = TextBox.Text:match("(%d+),%s*(%d+),%s*(%d+)")
         if game.CoreGui["Article GUI 🛠️"].ColorGui:FindFirstChild("Frame") and game.CoreGui["Article GUI 🛠️"].ColorGui.Frame.BackgroundColor3 ~= Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b)) then
	          game.CoreGui["Article GUI 🛠️"].ColorGui.Frame.BackgroundColor3 = Color3.fromRGB(tonumber(r), tonumber(g), tonumber(b))
           end
        end
end)

--- Color V2 Gui ---

local Color = Instance.new("Frame")
Color.Name = "ColorGuiv2"
Color.Size = UDim2.new(0, 300, 0, 250)
Color.Position = UDim2.new(0.5, -150, 0.5, -150)
Color.BackgroundColor3 = Color3.new(1, 1, 1)
Color.BorderColor3 = Color3.new(0, 0, 0)
Color.BorderSizePixel = 1
Color.Active = true
Color.BackgroundTransparency = 0.5 
Color.Draggable = true
Color.Visible = false
Color.Parent = gui

local Colort1 = Instance.new("UIStroke")
Colort1.Color = Color3.new(0, 0, 0)
Colort1.Thickness = 2
Colort1.Parent = Color

local Colors = Instance.new("ScrollingFrame")
Colors.Size = UDim2.new(0, 280, 0, 180)
Colors.Position = UDim2.new(0.5, -140, 0.5, -110)
Colors.CanvasSize = UDim2.new(0, 0, 0, 0)
Colors.ScrollBarThickness = 0
Colors.BackgroundColor3 = Color3.new(1, 1, 1)
Colors.BorderColor3 = Color3.new(0, 0, 0)
Colors.BorderSizePixel = 0
Colors.Active = true
Colors.BackgroundTransparency = 0 
Colors.Parent = Color

local UICornerColors = Instance.new("UICorner")
UICornerColors.CornerRadius = UDim.new(0, 0)
UICornerColors.Parent = Colors

local SelectColor = Instance.new("TextBox")
SelectColor.Size = UDim2.new(0, 280, 0, 30)
SelectColor.Position = UDim2.new(0.5, -140, 0.5, 87)
SelectColor.BackgroundColor3 = Color3.new(1, 1, 1)
SelectColor.Active = true
SelectColor.BackgroundTransparency = 0 
SelectColor.ClearTextOnFocus = false
SelectColor.TextSize = 20
SelectColor.Text = "Selected Color"
SelectColor.TextColor3 = Color3.new(0, 0, 0)
SelectColor.Parent = Color

local function ColorButton(Parent, Color, Position)
    local ButtonColor = Instance.new("TextButton")
    ButtonColor.Size = UDim2.new(0, 40, 0, 40)
    ButtonColor.Position = Position
    ButtonColor.BackgroundColor3 = Color
    ButtonColor.Text = ""
    ButtonColor.Parent = Parent
    ButtonColor.MouseButton1Click:Connect(function()
        SelectColor.Text = string.format("Color: %d, %d, %d", Color.R * 255, Color.G * 255, Color.B * 255)
    end)
end

local colors = {}
for r = 0, 255, 51 do
    for g = 0, 255, 51 do
        for b = 0, 255, 51 do
            table.insert(colors, Color3.fromRGB(r, g, b))
        end
    end
end

for i, v in ipairs(colors) do
    ColorButton(Colors, v, UDim2.new(0, ((i - 1) % 6) * (40 + 5), 0, math.floor((i - 1) / 6) * (40 + 5)))
end
Colors.CanvasSize = UDim2.new(0, 0, 0, math.ceil(#colors / 6) * (40 + 5))
end